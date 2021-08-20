<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comment;

class CommentController extends Controller
{
    public function getCommentByPostId($id){
        $mComment = new Comment();
        $oData   = $mComment->getCommentByPostId($id);
        return response()->json($oData, 200);
    }
}
