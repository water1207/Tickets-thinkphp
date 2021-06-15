<?php

namespace app\index\model;

use think\Model;

class OrderInfo extends Model
{
    protected $pk = 'order_id';
    protected $table = 'order_info';

    public function item()
    {
        return $this->hasMany('OrderItem', 'order_id','order_id');
    }

    public function time()
    {
        return $this->hasOne('Times', 'film_times_id','film_times_id');
    }

    public function user()
    {
        return $this->hasOne('User', 'user_id','user_id');
    }
}
