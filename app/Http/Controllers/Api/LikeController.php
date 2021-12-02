<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Like;
use Auth;

class LikeController extends Controller
{
    public function check(Request $request){
        $user_id = Auth::id();
        $article_id = $request->id;
        $like = Like::where('user_id', '=', $user_id)->where('article_id', '=', $article_id)->first();
        $odata['count'] = Like::where('article_id', '=', $article_id)->count();
        if(empty($like)) {
            $odata['status'] = false;
            return response()->json($odata, 200);
        } else{
            $odata['status'] = true;
            return response()->json($odata, 200);
        }
    }

    public function toggleStore(Request $request){
        $user_id = Auth::id();
        $article_id = $request->id;
        $like = Like::where('user_id', '=', $user_id)->where('article_id', '=', $article_id)->first();
        if(empty($like)) {
             $like = Like::create(array(
                 'user_id' => $user_id,
                 'article_id' => $article_id,
             ));
             $odata['status'] = true;
             $odata['count'] = Like::where('article_id', '=', $article_id)->count();
             return response()->json($odata, 200);
        } else {
            Like::destroy($like->id);
            $odata['status'] = false;
            $odata['count'] = Like::where('article_id', '=', $article_id)->count();
            return response()->json($odata, 200);
        }   
        return response()->json('Lỗi hệ thống, xin vui lòng thử lại', 500);
    }
}
