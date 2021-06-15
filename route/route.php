<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

Route::get('hello/:name', 'index/hello');

Route::get('user/login','index/Login/login');

Route::get('user/index','index/Index/index');

Route::get('check','index/Login/check');

Route::get('film', 'index/Index/film');

Route::get('cinema','index/Index/cinema');

Route::get('query','index/Index/query');

Route::get('order/seat', 'index/Order/seat');

Route::get('order/confirm', 'index/Order/confirm');

Route::get('order/succeed', 'index/Order/succeed');

Route::get('user/my_order', 'index/Order/index');

Route::get('login','index/Login/index');

Route::get('admin/order', 'index/Admin/order');

Route::get('admin/convert', 'index/Admin/convert');

Route::get('user/profile', 'index/Login/profile');
return [

];
