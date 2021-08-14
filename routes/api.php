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
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::get('/', 'AuthController@user');
        Route::post('/logout', 'AuthController@logout');
    });
    // User web
    Route::post('/register', 'AuthController@register');
    Route::post('/login', 'AuthController@login')->name('login');
});

Route::prefix('v1/post')->namespace('App\Http\Controllers\Api')->group(function () {
    // Post web
    Route::get('/', 'PostController@getPost');
    Route::get('/{slug}', 'PostController@getPostBySlug');
});