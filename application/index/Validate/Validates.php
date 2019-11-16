<?php
namespace app\index\Validate;
use think\Validate;

class Validates extends Validate
{
    protected $rule = [
        //类型
		    'username'  => 'require',
		    //标题
		    'password'  => 'require|max:25',
		    //链接
		    'tel'=>'require',
            //电话
            'phone'=>'require',
            //填写地址不能为空
            'writedress'=>'require',
		    //验证
		    'check'  => 'require|captcha',
		    //'captcha|验证码'=>'require|captcha'
		    //邮箱
		    //'email' => 'email'
		    //
		    //验证置顶
		     'datemin'  => 'require',
		     'datemax'  => 'require',
		     'sex'  => 'require',
    ];
     protected $message  =   [
        'username.require' => '请填写用户名',
        'password.require' => '请填写密码',
        'check.require' => '请填写验证码',
        'check.captcha' => '验证码错误', 
        'tel.require' =>'手机号码不能为空',
        'realname.require' =>'姓名或手机不能为空',
        //置顶验证
        'datemin.require' => '请填写开始时间',
        'datemax.require' => '请填写结束时间',
        'sex.require' => '请选择是否置顶',
        	  
    ];


      protected $scene = [
        'add' =>['username','phone','write_address'],
        'add2' =>['username','phone','write_address'],
        'duanmoney'=>['username','phone','writedress'],
		'duanmoney2'=>['customer_name','telephone','address']
    ];
}