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
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/posts/create', 'PostController@create')->name('post_create');
Route::post('/posts', 'PostController@store')->name('post.store');

//posts/create 	GET 	PostController@create 	Display a form for writing post data
//posts 	POST 	PostController@store 	Store data into database
