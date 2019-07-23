<?php
use App\Http\Controllers\SubscribeController;
use App\Http\Controllers\AjaxController;

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

Route::get('/', 'FrontEndController@index');

Route::get('/post/{slug}',[
    'uses'=>'FrontEndController@singlePost',
    'as'=>'post.single'
]);
Route::post('/subscribe','SubscribeController@subscribe');

Route::get('/category/{id}', 'FrontEndController@category');

Route::get('/tag/{id}', 'FrontEndController@tag');
// Route::get('/register',function(){
//     return view('auth.register');

// });
Route::get('/search','AjaxController@search');

Auth::routes();


Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin','middleware'=>'auth'],function(){

    Route::get('/post/create','PostsController@create');
    
    Route::get('/posts','PostsController@index');
    
    Route::get('/posts/trashed','PostsController@trashed');
    
    Route::get('/post/kill/{id}','PostsController@kill');
    
    Route::get('/post/restore/{id}','PostsController@restore');

    
    Route::get('/post/edit/{id}','PostsController@edit');

    Route::post('/post/store','PostsController@store');
    
    Route::get('/post/delete/{id}','PostsController@destroy');
    Route::post('/post/update/{id}','PostsController@update');
    
    
    Route::get('/categories','CategoriesController@index');
    Route::get('/category/create','CategoriesController@create');
    Route::post('/category/store','CategoriesController@store');

    Route::get('/category/edit/{id}','CategoriesController@edit');
    Route::post('/category/update/{id}','CategoriesController@update');
    
    Route::get('/category/delete/{id}','CategoriesController@destroy');

    Route::get('/tags','TagsController@index');
    
    Route::get('/tag/edit/{id}','TagsController@edit');

    
    Route::Post('/tag/update/{id}','TagsController@update');
    
    Route::get('/tag/delete/{id}','TagsController@destroy');
    
    Route::get('/tag/edit/{id}','TagsController@edit');

    Route::get('/tag/create','TagsController@create');
    
    Route::post('/tag/store','TagsController@store');
    Route::get('/users','UsersController@index');
    Route::get('/user/create','UsersController@create');
    Route::Post('/user/store','UsersController@store');
    Route::get('/user/admin/{id}','UsersController@admin');
    
    Route::get('/user/notadmin/{id}','UsersController@not_admin');
    Route::get('/user/profile','ProfileController@index');
    Route::Post('/user/profile/update','ProfileController@update');
    
    Route::get('/user/delete/{id}','UsersController@destroy');
    
    Route::get('/settings','SettingsController@index');
    Route::Post('/settings/update','SettingsController@update');
    
   
});

