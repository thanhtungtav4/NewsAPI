<?php

namespace App\Http\Controllers\Api;
use Illuminate\Support\Facades\DB;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;

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
       // dd($filter);
        if (!isset($filter['cursorPaginate'])){
            $filter['cursorPaginate'] = 1;
        }
        //set cursorPaginate default

        $oData = $mArticle->getNews($filter);

        return response()->json($oData, 200);;
    }

}