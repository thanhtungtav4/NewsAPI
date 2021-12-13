<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('v1/user')->namespace('App\Http\Controllers\Api')->group(function () {
    // User auth 
    Route::middleware(['auth:sanctum' , 'cors'])->group(function () {
        Route::get('/', 'AuthController@user');
        Route::post('/logout', 'AuthController@logout');
        Route::post('/refresh', 'AuthController@refresh');
    });
    // User web
    Route::post('/register', 'AuthController@register');
    Route::post('/login', 'AuthController@login')->name('login');
    // get post by user by slug user
    Route::get('/byuser/{slug}', 'PostController@ByUser');
});

Route::prefix('v1/post')->namespace('App\Http\Controllers\Api')->group(function () {
    // Post web
    Route::get('/', 'PostController@getPost');
    Route::get('/{slug}', 'PostController@getPostBySlug');
});
Route::prefix('v1/category')->namespace('App\Http\Controllers\Api')->group(function () {
    // Category web
    Route::get('/', 'CategoryController@getCategory');
    Route::get('/{slug}', 'CategoryController@getCategoryBySlug');
});

Route::prefix('v1/comment')->namespace('App\Http\Controllers\Api')->group(function () {
    // Comment web
   Route::get('/{id}', 'CommentController@getCommentByPostId');
});

Route::prefix('v1/bookmark')->namespace('App\Http\Controllers\Api')->group(function () {
    // get bookmark by user web
    Route::middleware(['auth:sanctum' , 'cors'])->group(function () {
        Route::get('/', 'BookmarkController@list');
        Route::post('/check', 'BookmarkController@check');
        Route::post('/', 'BookmarkController@toggleStore')->name('toggleBookmark');
    });
});

Route::prefix('v1/like')->namespace('App\Http\Controllers\Api')->group(function () {
    // get like by user web
    Route::middleware(['auth:sanctum' , 'cors'])->group(function () {
        Route::get('/', 'LikeController@list');
        Route::post('/check', 'LikeController@check');
        Route::post('/', 'LikeController@toggleStore')->name('toggleLike');
    });
});

Route::prefix('v1/crawler')->namespace('App\Http\Controllers\Api')->group(function () {
    // get crawler 
    Route::middleware(['auth:sanctum', 'cors'])->group(function () {
        Route::post('/', 'CrawlerController@getLink');
    });
});