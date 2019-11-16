<?php
namespace app\admin\model;
use think\Model;

/**
* 
*/
class Group extends Model
{
	
	protected $table="auth_group";


	//创建项目组
	public function add_groups($value)
	{

		//查项目组是否已经存在
		
		$group_name = $this->where("title",$value['CreateGroupName'])->find();
		// var_dump($group_name);
		
		//验证是否已经存在
		if(!($this->checkEmpty($group_name))){
			return  3;
		}

		$data_value =[
			'title'=>$value['CreateGroupName'],
		]; 

		$flag = $this->data($data_value)->save();
		if($flag=="1"){
			//创建成功
	        return 1;
	      }else{
	      	//创建失败
	         return 2;
	      }

		

	}

	/**
	 * 验证数据是否为空
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
	 * 展示项目组信息
	 */
	public function show_group()
	{
		$data = $this->select();
		return  $data;

	}
	
}