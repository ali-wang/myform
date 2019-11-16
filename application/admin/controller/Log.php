<?php
namespace app\admin\controller;
use think\Controller;
use \think\Request;
use \think\Validate;
use app\admin\model\Duanuser;
use think\db\Query;
use think\Session;
use \think\Cookie;
class Log extends controller
{
    
    public function log()
    {
        
            $data = db('duanlog')->alias("log")->join("group group","log.loggroup=group.groupid")->join("auth a","log.logtype=a.authtype")->order("logid desc")->paginate(10);
             $page=$data->render();
             $num = db('duanlog')->count();
            // var_dump($data);
            $this->assign('data',$data);
            $this->assign('page', $page);
            $this->assign('num', $num);
        
        
       return $this->fetch();
    }

}
