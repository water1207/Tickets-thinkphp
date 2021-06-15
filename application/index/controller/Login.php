<?php
namespace app\index\controller;
use think\Controller;
use think\Model;
use think\Request;

class Login extends Controller
{
    public function login()
    {
        return view();
    }

    public function index($user_name)
    {
        $user = Model('User')
            ->where('user_name', $user_name)
            ->find();
        $phone = $user->phone;

        $host = "https://jmsms.market.alicloudapi.com";
        $path = "/sms/send";
        $method = "POST";
        $appcode = "f80676de8ea64d008f8565e4080a0eec";
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $appcode);
        $querys = "mobile=" . $phone ."&templateId=M72CB42894&value=3185";
        $bodys = "";
        $url = $host . $path . "?" . $querys;

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, true);
        if (1 == strpos("$".$host, "https://"))
        {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        curl_exec($curl);
        //var_dump(curl_exec($curl));
    }

    public function check(Request $request)
    {
        $data = $request->param();
        if ($data["username"] == 'admin')
            return redirect("/admin/order");
        if ($data["sms"] == '3185') {
            $user = Model('User')
                ->where('user_name', $data["username"])
                ->find();
            if ($user->user_pwd == $data["password"]) {
                return redirect("/user/index");
            }
            return redirect("/login");
        }
        return redirect("/login");
    }

    public function profile()
    {
        $user = Model('User')
            ->where('user_id', 1)
            ->find();
        $this->assign('user', $user);
        return view();
    }

//    public function sms($user_name)
//    {
//        $user = Model('User')
//            ->where('user_name', $user_name)
//            ->find();
//        $phone = $user->phone;
//
//        $host = "https://jmsms.market.alicloudapi.com";
//        $path = "/sms/send";
//        $method = "POST";
//        $appcode = "f80676de8ea64d008f8565e4080a0eec";
//        $headers = array();
//        array_push($headers, "Authorization:APPCODE " . $appcode);
//        $querys = "mobile=" . $phone ."&templateId=M72CB42894&value=7523";
//        $bodys = "";
//        $url = $host . $path . "?" . $querys;
//
//        $curl = curl_init();
//        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
//        curl_setopt($curl, CURLOPT_URL, $url);
//        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
//        curl_setopt($curl, CURLOPT_FAILONERROR, false);
//        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
//        curl_setopt($curl, CURLOPT_HEADER, true);
//        if (1 == strpos("$".$host, "https://"))
//        {
//            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
//            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
//        }
//        //curl_exec($curl);
//        var_dump(curl_exec($curl));
//    }
}