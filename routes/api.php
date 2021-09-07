<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
header('Access-Control-Allow-Origin: ' . '*');
header('Access-Control-Allow-Headers: Origin, Content-Type, Authorization');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, PATCH, DELETE');
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
    });
    // User web
    Route::post('/register', 'AuthController@register');
    Route::post('/login', 'AuthController@login')->name('login');
});

Route::prefix('v1/post')->middleware(['cors'])->namespace('App\Http\Controllers\Api')->group(function () {
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