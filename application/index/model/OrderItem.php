<?php

namespace app\index\model;

use think\Model;

class OrderItem extends Model
{
    protected $pk = 'order_item_id';
    protected $table = 'order_item_info';
}
