<?php
namespace app\index\controller;
use think\Controller;
use \think\Request;
use \think\Validate;
use think\Loader;
use app\index\model\Duanmoney;
	// 指定允许被访问的域名
	header('Access-Control-Allow-Origin:*');  
	// 响应类型  
	header('Access-Control-Allow-Methods:*');  
	// 响应头设置  
	header('Access-Control-Allow-Headers:x-requested-with,content-type'); 


class Index extends controller
{
    public function index()
    {
        return '<style type="text/css">*{ padding: 0; margin: 0; } .think_default_text{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="ad_bd568ce7058a1091"></think>';
    }


     /**
     * [msg description]返回json数据
     * @param  string $code [状态码]
     * @param  string $msg  [返回信息]
     * @param  array $data [返回数据]
     * @param  string $url  [返回url]
     * @return [type]       [json]
     */
    public function msg($code='',$msg="",$data="",$url="")
    {

        $json = [
            "code" => $code,
            "msg"  => $msg,
            "data" => $data,
            "url" => $url,
            ];
        return json_encode($json,JSON_UNESCAPED_UNICODE);
        
    }


    /**
     * [add description]  必须是post请求
     * username,  用户名  必填
        phone,      电话   必填
        write_address：填写地址    必填
        address：选择地址   $date['sheng'].'-'.$date['shi'].'-'.$date['qu']  必填
        kw_ref：上级链接,  必填
        'id' ：推广员id   必填,
        'kw_url' ：落地页  必填

        'utm_medium'=> '计划',                     
        'utm_content'=> '单元',    
        'utm_term'=>' 关键字'
               
    */
    public function add(){
        
        $request = Request::instance();
        $date = $request->param();//获取所有参数，最全
        // $params = $_SERVER["HTTP_USER_AGENT"];//获取设备
        $userip =$request->ip();//获取ip
        
        $ip_money = new Duanmoney;

        if(!request()->isPost()){
            return 0;
        }

        $date = input('param.'); 
        $validate = Loader::validate('Validates');
        $result   = $validate->scene('add')->check($date); 
       
        if(!$result){
            return  json($this->msg(1,'请将信息填写完整！'));
        }

        //验证重复ip
        $dis =  time()-300;
        $user_ip = $ip_money->where('time','>=',$dis)->column('ip');
        if(in_array($userip, $user_ip)){
            return  json($this->msg(3,'你已经提交过信息！'));
           // echo "ip";
           // exit;
        }

        //验证手机号是否重复
        
         $user_phone = $ip_money->column('phone');
        if(in_array($date['phone'], $user_phone)){
           // echo "phone";
            //exit;
        }

        //ip解析地址
        $address = $ip_money->getip($userip);

        $ip_address = $address['province'].'-'.$address['city'];


        $now_time= time();
        //填写地址
       $addr=$date['sheng'].'-'.$date['shi'].'-'.$date['qu'];

       //解析搜索词
       if($date['kw_ref']==""){
            $souword = "";
       }else{
            $souword =$ip_money->souword($date['kw_ref']);
       }
       
       /**
        * 判断单元计划
        */
       
       //将页面链接转换成数组
        $url_ary = $ip_money->all_url($date['kw_url']);

        //处理后的落地页
        // $urlpaths = $url_ary['scheme']."://".$url_ary['host'].$url_ary['path'];
        
        // 即将单元，词，计划转换成数组
        //  存在query             
            if(isset($url_ary['query'])){
                $ary = $ip_money->convertUrlQuery($url_ary['query']);
                //将单元词和计划解码
                $urldecode_ary = $ip_money->urldecode($ary);
                }else{
                    $urldecode_ary =  [
                                      'utm_medium'=> '',                     
                                      'utm_content'=> '',    
                                      'utm_term'=>''
                                      ];
                    }


       
        $user_date = [

            'username' => $date['username'],
            'phone'=>$date['phone'],
            'address'=>$addr,

            'writedress'=>$date['write_address'],
           // 'message'=>$date['message'],
           // 搜索词
            'local_ref'=>$souword,
            //用户id
            'use_id'=>$date['id'],
            //落地页
            'local_url'=>$date['kw_url'],

            'utm_medium'=> $urldecode_ary['utm_medium'],                     
            'utm_content'=> $urldecode_ary['utm_content'],   
            'utm_term'=>$urldecode_ary['utm_term'],
          
            'ipdress'=>$ip_address,
            'ip'=>$userip,
            'time'=>$now_time
        ];

        $in_flag = $ip_money->insert($user_date);


        if($in_flag == 1){
            return json($this->msg(0,'提交成功'));
        }else{
            return json($this->msg(2,'提交失败'));
        }
        
    }




/**
 * [add description]  必须是post请求 没有js插件选择地址
 * username,  用户名  必填
    phone,      电话   必填
    write_address：填写地址    必填
    address：选择地址   $date['sheng'].'-'.$date['shi'].'-'.$date['qu']  必填
    kw_ref：上级链接,  必填
    'id' ：推广员id   必填,
    'kw_url' ：落地页  必填

    'utm_medium'=> '计划',                     
    'utm_content'=> '单元',    
    'utm_term'=>' 关键字'
           
 */
    public function add2(){
      

        $request = Request::instance();
        $date = $request->param();//获取所有参数，最全
        // $params = $_SERVER["HTTP_USER_AGENT"];//获取设备
        $userip =$request->ip();//获取ip
        
        $ip_money = new Duanmoney;

        if(!request()->isPost()){
            return 0;
        }

        $date = input('param.'); 
        $validate = Loader::validate('Validates');
        $result   = $validate->scene('add2')->check($date); 
       
        if(!$result){
            return  json($this->msg(1,'请将信息填写完整！'));
        }

        //验证重复ip
        $dis =  time()-300;
        $user_ip = $ip_money->where('time','>=',$dis)->column('ip');
        if(in_array($userip, $user_ip)){
            return  json($this->msg(3,'你已经提交过信息！'));
           // echo "ip";
           // exit;
        }

        //验证手机号是否重复
        
         $user_phone = $ip_money->column('phone');
        if(in_array($date['phone'], $user_phone)){
           // echo "phone";
            //exit;
        }

        //ip解析地址
        $address = $ip_money->getip($userip);

        $ip_address = $address['province'].'-'.$address['city'];


        $now_time= time();
        //填写地址
       // $addr=$date['sheng'].'-'.$date['shi'].'-'.$date['qu'];

       //解析搜索词
       if($date['kw_ref']==""){
            $souword = "";
       }else{
            $souword =$ip_money->souword($date['kw_ref']);
       }
       
       /**
        * 判断单元计划
        */
       
       //将页面链接转换成数组
        $url_ary = $ip_money->all_url($date['kw_url']);

        //处理后的落地页
        // $urlpaths = $url_ary['scheme']."://".$url_ary['host'].$url_ary['path'];
        
        // 即将单元，词，计划转换成数组
        //  存在query             
            if(isset($url_ary['query'])){
                $ary = $ip_money->convertUrlQuery($url_ary['query']);
                //将单元词和计划解码
                $urldecode_ary = $ip_money->urldecode($ary);
                }else{
                    $urldecode_ary =  [
                                      'utm_medium'=> '',                     
                                      'utm_content'=> '',    
                                      'utm_term'=>''
                                      ];
                    }


       
        $user_date = [

            'username' => $date['username'],
            'phone'=>$date['phone'],
            // 'address'=>$addr,

            'writedress'=>$date['write_address'],
           // 'message'=>$date['message'],
           // 搜索词
            'local_ref'=>$souword,
            //用户id
            'use_id'=>$date['id'],
            //落地页
            'local_url'=>$date['kw_url'],

            'utm_medium'=> $urldecode_ary['utm_medium'],                     
            'utm_content'=> $urldecode_ary['utm_content'],   
            'utm_term'=>$urldecode_ary['utm_term'],
          
            'ipdress'=>$ip_address,
            'ip'=>$userip,
            'time'=>$now_time
        ];

        $in_flag = $ip_money->insert($user_date);


        if($in_flag == 1){
            return json($this->msg(0,'提交成功'));
        }else{
            return json($this->msg(2,'提交失败'));
        }
        
    }
	
	
	
	
	/**
     * [add description]  必须是post请求
     * username,  用户名  必填
        phone,      电话   必填
		message     留言   必填
        write_address：填写地址    必填
        address：选择地址   $date['sheng'].'-'.$date['shi'].'-'.$date['qu']  必填
        kw_ref：上级链接,  必填
        'id' ：推广员id   必填,
        'kw_url' ：落地页  必填

        'utm_medium'=> '计划',                     
        'utm_content'=> '单元',    
        'utm_term'=>' 关键字'
               
    */
    public function add3(){
        
        $request = Request::instance();
        $date = $request->param();//获取所有参数，最全
        // $params = $_SERVER["HTTP_USER_AGENT"];//获取设备
        $userip =$request->ip();//获取ip
        
        $ip_money = new Duanmoney;

        if(!request()->isPost()){
            return 0;
        }

        $date = input('param.'); 
        $validate = Loader::validate('Validates');
        $result   = $validate->scene('add')->check($date); 
       
        if(!$result){
            return  json($this->msg(1,'请将信息填写完整！'));
        }

        //验证重复ip
        $dis =  time()-300;
        $user_ip = $ip_money->where('time','>=',$dis)->column('ip');
        if(in_array($userip, $user_ip)){
            return  json($this->msg(3,'你已经提交过信息！'));
           // echo "ip";
           // exit;
        }

        //验证手机号是否重复
        
         $user_phone = $ip_money->column('phone');
        if(in_array($date['phone'], $user_phone)){
           // echo "phone";
            //exit;
        }

        //ip解析地址
        $address = $ip_money->getip($userip);

        $ip_address = $address['province'].'-'.$address['city'];


        $now_time= time();
        //填写地址
       $addr=$date['sheng'].'-'.$date['shi'].'-'.$date['qu'];

       //解析搜索词
       if($date['kw_ref']==""){
            $souword = "";
       }else{
            $souword =$ip_money->souword($date['kw_ref']);
       }
       
       /**
        * 判断单元计划
        */
       
       //将页面链接转换成数组
        $url_ary = $ip_money->all_url($date['kw_url']);

        //处理后的落地页
        // $urlpaths = $url_ary['scheme']."://".$url_ary['host'].$url_ary['path'];
        
        // 即将单元，词，计划转换成数组
        //  存在query             
            if(isset($url_ary['query'])){
                $ary = $ip_money->convertUrlQuery($url_ary['query']);
                //将单元词和计划解码
                $urldecode_ary = $ip_money->urldecode($ary);
                }else{
                    $urldecode_ary =  [
                                      'utm_medium'=> '',                     
                                      'utm_content'=> '',    
                                      'utm_term'=>''
                                      ];
                    }


       
        $user_date = [

            'username' => $date['username'],
            'phone'=>$date['phone'],
            'address'=>$addr,

            'writedress'=>$date['write_address'],
            'message'=>$date['message'],
           // 搜索词
            'local_ref'=>$souword,
            //用户id
            'use_id'=>$date['id'],
            //落地页
            'local_url'=>$date['kw_url'],

            'utm_medium'=> $urldecode_ary['utm_medium'],                     
            'utm_content'=> $urldecode_ary['utm_content'],   
            'utm_term'=>$urldecode_ary['utm_term'],
          
            'ipdress'=>$ip_address,
            'ip'=>$userip,
            'time'=>$now_time
        ];

        $in_flag = $ip_money->insert($user_date);


        if($in_flag == 1){
            return json($this->msg(0,'提交成功'));
        }else{
            return json($this->msg(2,'提交失败'));
        }
        
    }




}
