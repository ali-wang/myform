<?php
namespace app\admin\controller;
use \think\Controller;
use app\admin\model\User;
use think\Session;
/**
* 
*/
class Login extends controller
{
    
    /**
     * 登录
     */
    public function login()
    {
        
        return $this->fetch('login');
    }
    

    /**
     * 登录处理
     */
    public function loginHandle()
    {
        
       if(request()->isPost()){
			$data = input('param.');
			$validate = validate("LoginValidate");
			
			if(!$validate->scene('login')->check($data)){
				return $this->error($validate->getError(),'login');
			}else{
				//验证登录信息
				$users = new User();
				$userData= $users->where('username',$data['username'])->find();
				//var_dump($userData);die;
				if($this->checkEmpty($userData)){
					return $this->error("不存在该用户！","login");
				}else{
					if($userData['password'] == $data['password']){
						//登录成功创建session
						Session::set('myone',['user_id' => $userData['id'],'users_name' => $userData['username']]);
						
						return $this->success('登录成功！','index/index');
					}else{
						return $this->error("账号或秘密错误","login");
					}
				}
			}
		}
    }
    
    /**
     * 注销登录
     */
    public function logout()
    {
        // Session::delete('name');
        // Session::clear('name');
        session('myone', null);
        return $this->fetch('login');
    }
    
    /**
     * 清理缓存
     */
    public function clearCache()
    {
        
        $this->jump($this->logicLogin->clearCache());
    }

    /**
     * [checkEmpty description]验证数据是否为空
     * @param  [type] $value [description]
     * @return [type]        [description]
     */
    public function checkEmpty($value)
        {
            if(!isset($value))
                return true ;
            if($value === null )
                return true;
            if(is_array($value) && count($value) == 0)
                return true;
            if(is_string($value) &&trim($value) === "")
                return true;

            return false;

        }

    
}
