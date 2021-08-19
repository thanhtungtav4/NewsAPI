<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function getCategory(Request $request){
        $mCategory = new Category();
        $oData = $mCategory->getCategory();
        return response()->json($oData, 200);
    }

    public function getCategoryBySlug($slug){
        $mCategory = new Category();
        try {
            $oData = $mCategory->getCategoryBySlug($slug);
            return response()->json($oData, 200);

        } catch (\Throwable $th) {
             return response()->json('', 404);;
        }
    }
}
