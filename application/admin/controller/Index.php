<?php
namespace app\admin\controller;
use app\admin\controller\Common;
/**
* 
*/
class Index extends common
{
	
	public function index()
	{
		$member = session('myone');
		 $data = db('Duanuser')->alias('user')
                              ->join('auth_group au_group','user.group=au_group.aid')
                              ->where('id',$member['user_id'])
                              ->find();
		// $data = db('Duanuser')->where('id',$member['user_id'])->find();
		// var_dump($data);
		$this->assign('member',$data);
		return $this->fetch();

	}
}