<?php
namespace app\index\model;
use think\Model;

class Cinema extends Model
{
    protected $pk = 'cinema_id';
    protected $table = 'cinema_info';

    public function hall()
    {
       return $this->hasMany('Hall', 'cinema_id');
    }
}