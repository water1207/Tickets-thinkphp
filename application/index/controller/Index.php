<?php
namespace app\index\controller;

use app\index\model\Cinema;
use app\index\model\FilmInfo;
use app\index\model\Hall;
use app\index\model\Times;
use think\Controller;
use think\Db;
use think\db\Where;
use think\Model;
use think\Request;
use think\Response;

class Index extends Controller
{
    public function index()
    {
        $film_info = Model('FilmInfo')
            ->limit(5)
            ->select();
        $this->assign('filmInfo', $film_info);
        return view('index/index');
    }

    public function film($film_id = 1,$cinema_id = 1,$date = '05-28')
    {
        $film_info = Model('FilmInfo')
            ->where('film_id',$film_id)
            ->find();
        $cinema = Model('Cinema')
            ->select();

        $times = Model('Times')->where('hall_id', 'in',function ($query) use ($cinema_id) {
            $query->table('hall_info')->where('cinema_id', $cinema_id)->field('hall_id');
        })->where('film_id',$film_id)->where('film_date',$date)->select();

        //return ($times = Model('Times')::get(2)->film);
        $this->assign("filmInfo", $film_info);
        $this->assign('cinema', $cinema);
        $this->assign('times', $times);
        $this->assign('cid', 1);
        return view();
    }

    public function cinema($cinema_id = 1)
    {
        $cinema = Model('Cinema');
        $cinemas = $cinema->select();
        $area = $cinema->distinct(true)->field('area')->select();

        $this->assign('cinemas', $cinemas);
        $this->assign('area', $area);
        return view();
    }

    public function test($times_id,$check)
    {
//        $times = Model('Times')
//            ->where('film_times_id', $times_id)
//            ->find();
//
//        $seat_info = explode(',',(string)$times->hall->seat_info);
//
//        $seats = array();  //全部
//        for ($i = 0;$i<count($seat_info);$i++) {
//            $s = str_split((string)$seat_info[$i]);
//            $seats[$i] = $s;
//        }
//
//        $check1 = explode(",", $check);  //选的
//        $str = '';
//        for ($i = 0; $i < count($seats); $i++) {
//            for ($j = 0; $j < count($seats[$i]); $j++) {
//               for ($k = 0; $k < count($check1); $k += 2) {
//                   $x = $check1[$k];
//                   $y = $check1[$k + 1];
//                   if ($i == $x && $j == $y) {
//                       $seats[$i][$j] = 'b';
//                   }
//               }
//               $str = $str . $seats[$i][$j];
//            }
//            $str = $str . ',';
//        }
//        Model('Hall')  //更新座位
//            ->where('hall_id',$times->hall->hall_id)
//            ->setField('seat_info',$str);
//

        return view();
    }

    public function query($film_id,$cinema_id = 1,$date)
    {
        $film_info = Model('FilmInfo')
            ->where('film_id',$film_id)
            ->find();
        $cinema = Model('Cinema')
            ->select();

        $times = Model('Times')->where('hall_id', 'in',function ($query) use ($cinema_id) {
            $query->table('hall_info')->where('cinema_id', $cinema_id)->field('hall_id');
        })->where('film_id',$film_id)->where('film_date',$date)->select();

        $this->assign("filmInfo", $film_info);
        $this->assign('cinema', $cinema);
        $this->assign('times', $times);
        $this->assign('cid', $cinema_id);
        $this->assign('film_id',$film_id);
        return view();
    }
}
