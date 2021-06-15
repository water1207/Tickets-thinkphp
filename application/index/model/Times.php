<?php

namespace app\index\model;
use think\Model;

class Times extends Model
{
    protected $pk = 'film_times_id';
    protected $table = 'film_times';

    public function hall()
    {
        return $this->hasOne('Hall', 'hall_id','hall_id');
    }

    public function film()
    {
        return $this->hasOne('FilmInfo','film_id','film_id');
    }

    public function toOrder()
    {
        return $this->belongsTo('OrderInfo', 'film_times_id', 'film_times_id');
    }
}