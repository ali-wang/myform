<?php
namespace app\admin\controller;

use think\Controller;
use \think\Request;
use \think\Validate;
use app\admin\model\Duanuser;
use think\Session;
use \think\Cookie;
use think\db\Query;
class Exchangepsd extends controller
{
    //修改密码
    public function expsd()
     {
         if(!(request()->isPost())){
            echo "非法操作";
         }
        $data = input('param.');
        // var_dump($data);
        if($data['id'] == "1"){
            return $this->error("非法操作",'exshow');
        }

        if($data['newpsd'] == $data['oldpsd']){
            return $this->error("原始密码不能和新密码相同！",'exshow');
        }

        $user = new Duanuser();
        $flag = $user->where('id',$data['id'])->where('password',$data['oldpsd'])->find();
        
        if($flag==NULL){
            return $this->error("密码输入错误，请重新输入！",'exshow');
        }

        $upflag =  $user->where('id',$data['id'])->update(['password'=>$data['newpsd']]);

        if($upflag=="1"){
            return $this->success('修改密码成功!','index/login');
        }else{
             return $this->error("修改密码失败！",'exshow');
        }

     } 

     //管理员修改密码
    public function exshow()
     {

        $username =Cookie::get('username');
        $Baouser = new Duanuser;
        $data= $Baouser->test();
            //var_dump($data);
            if(!$data){
                $this->redirect('login');
            }
            // var_dump($data);
         $this->assign('data',$data);
         return $this->fetch();
     } 


}
