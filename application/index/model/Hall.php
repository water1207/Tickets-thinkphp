<?php


namespace app\index\model;


use think\Model;

class Hall extends Model
{
    protected $pk = 'hall_id';
    protected $table = 'hall_info';

    public function toCinema()
    {
        return $this->belongsTo('Cinema', 'cinema_id');
    }


}