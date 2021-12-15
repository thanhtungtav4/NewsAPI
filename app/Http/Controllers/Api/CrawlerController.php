<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use voku\helper\HtmlDomParser;
use \Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\App;
use Carbon\Carbon;
use App\Models\Crawler;
use Auth;

class CrawlerController extends Controller
{
    public function checkSupport($domain){
        //check $domain support
        $list_Accept   = ['thanhnien.vn', 'dantri.com.vn'];
        $check_Support = in_array($domain, $list_Accept);
        return $check_Support;
    }

    public function DrawlerData($url_full, $domain){
        //Draw data by url
        $html = HtmlDomParser::file_get_html($url_full, false, null, 0 );
        if($domain == 'dantri.com.vn'){
            $data = $this->DrawDantri($html);
            return $data;
        }
    }

    public function DrawDantri($html){
        $data['title']         = str_replace('&#13;', '', $html->find('h1', 0)->innertext);
        $data['slug']          = Str::slug($data['title'], '-');
        $data['description']   = $html->find('.dt-news__sapo h2', 0)->innertext;
        $data['date']          = Carbon::createFromFormat('d/m/Y',substr($html->find('.dt-news__time', 0)->plaintext, -18, 10))->format('d-m-Y');
        $data['featured_image'] = '';
        foreach ($html->find('.dt-news__content figure img') as  $key => $img) {
            // save image
            $image_contents[$key] = file_get_contents($img->src);
            $image_name[$key]     = substr($img->src, strrpos($img->src, '/') + 1);
            Storage::disk('drawler')->put($image_name[$key], $image_contents[$key]);
            // !save image
            $data['featured_image'] = '/uploads/drawler/'.$image_name[$key];
            $img->src = env("APP_URL", "http://newsapi.io").'/uploads/drawler/'.$image_name[$key];
            // !change src img
        }
        $html->save();
        $data['content']       = $html->find('.dt-news__content', 0)->innertext;
        $data['user_id']       = Auth::id();
        return $data;
    }

    public function getLink(Request $request){
        $url_full = $request->url;
        $domain   = parse_url(trim($url_full)); 
        $is_true  = $this->checkSupport($domain['host']);
        if($is_true != true){
            return response()->json('Chưa hỗ trợ tên miền', 500);
        }
        $is_data = $this->DrawlerData($url_full, $domain['host']);
        $is_data['category_id']  = $request->category ? $request->category : 1;
        $is_data['status'] = $request->status ? $request->status : 'PUBLISHED';
        $Crawler = new Crawler();
        $makeArticle = $Crawler->Store($is_data);
        return response()->json("Đã Lưu Bài viết Thành công", 200);
    }
}
