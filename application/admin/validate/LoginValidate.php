<?php
namespace app\admin\validate;
use think\Validate;

class LoginValidate extends validate
{
  
      // 验证规则
    protected $rule =   [
        'name'  =>  'require|max:25|token',
        'username'          => 'require',
        'password'       => 'require',
        'check'  => 'require|captcha',
    ];

    // 验证提示
    protected $message  =   [
        'username.require'         => '请输入账户',
        'password.require'         => '请输入密码',
        'check.require'         => '请输入验证码',
        'check.captcha' => '验证码错误', 
        
    ];
    
    // 应用场景
    protected $scene = [
        'login'  =>  ['username','password','check'],
    ];
}