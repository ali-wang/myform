<?php
namespace app\admin\controller;
use \think\Controller;
use app\admin\model\User;
use app\admin\model\Formdata;
use think\Request;
use think\Validate;
use think\Session;

/**
* 
*/
class Common extends controller
{

    public function _initialize()
    {
        
        // // 检查是否登录
        $this->is_login();
        
       
    }

    //检测是有登录
    public function is_login()
    {
        $member = session('myone');
        
        if(empty($member)&&(!session('myone.user_id')||!session('myone.users_name'))){
            return $this->error("请重新登录！",url('login/login'));
        }
        // var_dump(session('myone.user_id'));
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

    public function laymsg($code=0,$msg="",$count="",$data="")
    {

        $json = [
        	"code" => $code,
            "msg"  => $msg,
            "count" =>$count,
            "data" => $data
        ]; 
        return json_encode($json,JSON_UNESCAPED_UNICODE);
    }





	
}