<?php
namespace app\index\controller;

use think\Controller;
use think\Model;
use think\Request;

class Order extends Controller
{
    public function index($user_id = 1)
    {
        $orders = Model('OrderInfo')
            ->where('user_id', $user_id)
            ->select();
        $this->assign('orders', $orders);
        return view('order/my_order');
    }

    public function seat($times_id = 1)
    {
        $times = Model('Times')
            ->where('film_times_id', $times_id)
            ->find();
        if ($times->toOrder()->count() == null) {
            //新订单 座位从hall取
            $seat_info = explode(',',(string)$times->hall->seat_info);
        }else{
            //已有订单 位置更新过 从times取
            $seat_info = explode(',',(string)$times->seat_info);
        }

        $seats = array();
        for ($i = 0;$i<count($seat_info);$i++) {
            $s = str_split((string)$seat_info[$i]);
            $seats[$i] = $s;
        }

        $this->assign('times', $times);
        $this->assign('seats', $seats);
        //return json($seats);
        return view();
    }

    public function confirm($times_id,$check)
    {
        $times = Model('Times')
            ->where('film_times_id', $times_id)
            ->find();

        $seat_info = explode(',',(string)$times->hall->seat_info);

        $seats = array();  //全部
        for ($i = 0;$i<count($seat_info);$i++) {
            $s = str_split((string)$seat_info[$i]);
            $seats[$i] = $s;
        }

        $check1 = explode(",", $check);  //选的
        //return json($check1);

        $str = '';
        for ($i = 0; $i < count($seats); $i++) {
            for ($j = 0; $j < count($seats[$i]); $j++) {
                for ($k = 0; $k < count($check1); $k += 2) {
                    $x = $check1[$k];
                    $y = $check1[$k + 1];
                    if ($i == $x && $j == $y) {
                        $seats[$i][$j] = 'b';
                    }
                }
                $str = $str . $seats[$i][$j];
            }
            if ($i != count($seats) - 1) {
                $str = $str . ',';
            }

        }
        $this->cc = 1;

        $this->assign('times', $times);
        $this->assign('check', $check1);


        $data = [
            'user_id' => '1',
            'total' => count($check1)/2 * $times->film_price ,
            'film_times_id' => '1',
            'order_state' => '0',
            'phone' => '15268526658'
        ];

        $order_id = Model('OrderInfo')
            ->insertGetId($data);
        $order = Model('OrderInfo')
            ->where('order_id', $order_id)
            ->find();
        $this->assign('order',$order);
        $this->assign('num', count($check1));

        $item = Model('OrderItem');
        for ($i = 0; $i < count($check1); $i+=2) {
            $temp =[
                'order_id' => $order_id,
                'qr_code' => '0',
                'pos_x' => $check1[$i],
                'pos_y' => $check1[$i+1]
            ];
            $item->insert($temp);
        }

        Model('Times')  //更新座位
        ->where('film_times_id',$times_id)
            ->setField('seat_info',$str);
        return view();
    }

    public function succeed($order_id)
    {
        Model('OrderInfo')
            ->where('order_id', $order_id)
            ->setField('order_state',1);
        Model('OrderItem')
            ->where('order_id', $order_id)
            ->setField('qr_code', 123);
        return view();
    }
}
