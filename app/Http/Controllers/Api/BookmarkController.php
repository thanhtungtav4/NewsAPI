<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Bookmark;
use Auth;

use Illuminate\Http\Request;

class BookmarkController extends Controller
{

    public function list(){
        $mbookmark = new Bookmark();
        $user_id = Auth::user()->id;
        $oData = $mbookmark->getbyUserID($user_id);
        return $oData;
    }

    public function check(Request $request){
        $user_id = Auth::id();
        $article_id = $request->id;
        $bookmark = Bookmark::where('user_id', '=', $user_id)->where('article_id', '=', $article_id)->first();
        if(empty($bookmark)) {
            return response()->json(false, 200);
        } else{
            return response()->json(true, 200);
        }
    }

    public function toggleStore(Request $request){
        $user_id = Auth::id();
        $article_id = $request->id;
        $bookmark = Bookmark::where('user_id', '=', $user_id)->where('article_id', '=', $article_id)->first();
        if(empty($bookmark)) {
             $bookmark = Bookmark::create(array(
                 'user_id' => $user_id,
                 'article_id' => $article_id,
             ));
             return response()->json(true, 200);
        } else {
             Bookmark::destroy($bookmark->id);
             return response()->json(false, 200);
             //return     Redirect::route('article-get', array('article_id' => $article_id));
        }   
        return response()->json('Lỗi hệ thống, xin vui lòng thử lại', 500);
    }
}
