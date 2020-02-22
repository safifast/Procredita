<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});
// back end section
Route::namespace('Admin')->prefix('admin')->group(function() {
    Auth::routes(['verify' => true, 'register' => false]);
    Route::get('/', 'HomeController@index')->middleware('verified');
    Route::get('/home', 'HomeController@index')->middleware('verified');

});

// front end section
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/why-credita', 'PageController@whyCredit');
Route::get('/loan-term', 'PageController@LoanTerm');
Route::get('/user/home', 'PageController@userHome');
Route::get('/faq', 'PageController@Faq');



Route::group(['prefix' => 'admin'], function () {
    Route::resource('histories', 'Admin\HistoryController', ["as" => 'admin']);
});
