<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('v1')->group(function(){
 Route::post('login', 'AuthController@login');
 Route::post('register', 'AuthController@register');
 Route::group(['middleware' => 'auth:api'], function(){
 Route::post('getUser', 'AuthController@getUser');
 });
});


Route::group(['prefix' => 'admin'], function () {
    Route::resource('user_details', 'Admin\UserDetailAPIController');
});


Route::group(['prefix' => 'admin'], function () {
    Route::resource('histories', 'Admin\HistoryAPIController');
    Route::get('histories/get-user-history/{id}', 'Admin\HistoryAPIController@getUserHistory');
});
