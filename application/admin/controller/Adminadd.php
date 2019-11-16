<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Group;
use think\Loader;
use think\Validate;
class Adminadd extends common
{
    /**
     * [添加管理员界面]
     * @return [type] [description]
     */
     public function admin_add()
    {
        
        $group = new Group();
        $data = $group->show_group();
        $this->assign('group',$data);
       return $this->fetch();
    }

    /**
     * 接受添加管理员数据
     */

    public function add_admin()
    {
        $date = input('param.');

        $validate = Loader::validate('CreatUserValidata');
        $result   = $validate->scene('add_admin')->check($date); 

        if (!$result) {
            return $this->error($validate->getError(),url('admin_add'));    
        }

        $user = db("Duanuser")->where('username',$date['username'])->find();
        
        if( !is_null($user)){
            
            return $this->error("用户已存在","admin_show");  
        }
        
        $data = [
            'username'=>$date['username'],
            'password'=>$date['password'],
            // 'type'    =>$date['admin'],      
            'group'   =>$date['groupid']     
        ];

        $flag = db("Duanuser")->insert($data);
        
        if($flag == 1 ){
            return $this->success('创建成功','admin_show');
        }else{
             return $this->error("创建失败","admin_show");
        }

    }


    //显示管理员页面
    public function admin_show()
    {
        
        
        $date = db('Duanuser')->alias('user')
                              ->join('auth_group au_group','user.group=au_group.aid')
							  ->order('id','desc')
                              ->select();
       
        $this->assign('data',$date);
        return $this->fetch();

    }


    //删除管理员
    public function user_del()
    {
        $data = input('param.');
        $date = db('duanuser')->where('id',$data['id'])->delete();
        echo $date;
        
    }

    //显示修改管理员
    public function admin_edit()
    {   
       
        $user_data = input('param.');
        // $dbdata = db('Duanuser')->where('id',$user_data['id'])->find();
        $dbdata = db('Duanuser')->alias('user')
                              ->join('auth_group au_group','user.group=au_group.aid')
                              ->where('id',$user_data['id'])
                              ->find();
       
      

        $this->assign('data',$dbdata);
      
        $group = new Group();
        $group_data = $group->show_group();
        $this->assign('group',$group_data);
        return $this->fetch();
    }

    //修改管理员信息
    public function admin_edituser()
    {

        
        
        $user_data = input('param.');
        // var_dump($user_data);
             $inser_data = db('Duanuser')
                        ->where('id',$user_data['id'])
                        ->update([
                            'username'=>$user_data['username'],
                            'password'=>$user_data['password'],
                            'group'   =>$user_data['admin'] 
                            ]);
               
              if($inser_data == 1) {
                return $this->success('数据修改成功',"admin_show");
              }     
            
        

    }


    /**
     * [add_list description]添加管理序列
     */
        public function add_list()
        {
            $input=input('param.');
            // var_dump($input);
              $input['nums']= rtrim($input['nums'],",");
            $flag = db('Duanuser')->where('id',$input['id'])->update(['type'=>$input['nums']]);
            if($flag){
                echo $this->msg(0,'更新成功！');
            }else{
                echo $this->msg(1,'更新失败！');
            }

        }


}
