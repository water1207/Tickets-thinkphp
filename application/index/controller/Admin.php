<?php


namespace app\index\controller;


use think\Controller;

class admin extends Controller
{
    public function order()
    {
        $orders = Model('OrderInfo')
            ->select();
        $this->assign('orders', $orders);
        return view();
    }

    public function convert($order_id)
    {
        $orders = Model('OrderInfo')
            ->where('order_id',$order_id)
            ->setField('order_state',2);
        return redirect("/admin/order");
    }
}