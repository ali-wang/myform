<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Formdata;
/**
* 
*/
class Showdata extends common
{
	
	//超级管理员
	public function admin_super()
	{
	
		return $this->fetch();
	}

	//超级管理员输出数据
	public function admin_superdata()
	{
		if(request()->isPost()){
			$input = input('param.');
			// var_dump($input);
			$form = new Formdata();
			$counts = $form->count();
			$formdata = $form->order('id desc')->limit(($input['page']-1)*$input['limit'],$input['limit'])
							->select()
							->toArray();
			foreach ($formdata as $k => $v) {
		          $formdata[$k]['time']=date('Y-m-d H:i:s',$formdata[$k]['time']);
		       }

        	echo $this->laymsg(0,"",$counts,$formdata);
        }

	}

	//超级管理员删除信息
	public function admin_superdele()
	{
		if(request()->isPost()){
			$id = input('param.');
			$form = new Formdata();
			$flag = $form->where('id',$id['id'])->delete();
			if($flag){
				echo $this->msg(1,"删除成功！");
			}else{
				echo $this->msg(0,"删除失败！");
			}
		}
	}



	//客户管理员
	public function admin_customer()
	{
	
		return $this->fetch();
	}

	//客户管理员输出数据
	public function admin_customerdata()
	{
		if(request()->isPost()){
			$input = input('param.');
			$usetype= db('Duanuser')->where('id',session('myone.user_id'))->find();
			 
			$form = new Formdata();
			$counts = $form->where('use_id','in',$usetype['type'])->select()->count();
			$formdata = $form->field('ipdress,local_url,local_ref,utm_medium,utm_content,utm_term',true)
						->where('use_id','in',$usetype['type'])
						->order('id desc')
						->limit(($input['page']-1)*$input['limit'],$input['limit'])
						->select()
						->toArray();
			foreach ($formdata as $k => $v) {
		          $formdata[$k]['time']=date('Y-m-d H:i:s',$formdata[$k]['time']);
		       }

        	echo $this->laymsg(0,"",$counts,$formdata);
        }
	}

	



	//推广管理员
	public function admin_extension()
	{
	
		return $this->fetch();
	}

	//推广管理员输出数据
	public function admin_extensiondata()
	{
		if(request()->isPost()){
			$input = input('param.');
			$form = new Formdata();
			$member = session('myone');
			$counts = $form->where('use_id',$member['user_id'])->select()->count();
			// var_dump($member);
			$formdata = $form->field('phone,address,writedress,message',true)
							->where('use_id',$member['user_id'])
							->order('id desc')
							->limit(($input['page']-1)*$input['limit'],$input['limit'])
							->select()
							->toArray();
			foreach ($formdata as $k => $v) {
		          $formdata[$k]['time']=date('Y-m-d H:i:s',$formdata[$k]['time']);
		       }

        	echo $this->laymsg(0,"",$counts,$formdata);
        }
	}






}