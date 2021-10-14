<?php

namespace App\Http\Controllers\Api;
use Illuminate\Support\Facades\DB;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;
use Carbon\Carbon;

class PostController extends Controller
{
    /**
     * get post
     *
     * @return \Illuminate\Http\Request
     */

    public function getPost(Request $request){
        
        $mArticle = new Article();
        $filter = $request->all();
        if (isset($filter['is_active']) && $filter['is_active'] == -1) {
            unset($filter['is_active']);
        }
        if (isset($filter['cursorPaginate']) && $filter['cursorPaginate'] == -1) {
             unset($filter['cursorPaginate']);
        }
        if(!isset($filter['numPaginate'])){
            $filter['numPaginate'] = 5;
        }
        if(isset($filter['currentMonth']) && $filter['currentsMonth'] == true){
            unset($filter['currentMonth']);
            $filter['Month'] = Carbon::now()->subMonth();
        }
       
        $oData = $mArticle->getNews($filter);
        return response()->json($oData, 200);
    }


    public function getPostBySlug($slug){
        $mArticle = new Article();
        try {
            $oData = $mArticle->getPostBySlug($slug);
            return response()->json($oData, 200);

        } catch (\Throwable $th) {
            return response()->json('', 404);
        }
    }
}