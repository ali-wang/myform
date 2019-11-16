<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Group;
class Usergroup extends common
{
    

    /*
    接受表单数据
     */
    public function userinput()
    {
        $data = input('param.');

        $validate = Loader::validate('Validates');
        $result   = $validate->scene('user_drug')->check($data); 
       // var_dump($result);
        if (!$result) {
           return $this->error($validate->getError());    
        }
        //echo "string";
       // var_dump($data);
       //数据验证通过添加数据
       $customerdata = new Customerdata();

       $flag = $customerdata->add($data);
       var_dump($flag);
    }

    /**
     * [显示创建项目组页面]
     * @return [type] [description]
     */
    public function create_group()
    {
        return $this->fetch();
    }


    /**
     * [显示修改项目组页面]
     * @return [type] [description]
     */

    public function modify_group()
    {
      $group_id = input('param.');
      var_dump($group_id);
        return $this->fetch();
    }



    /**
     * [显示修改项目组页面]
     * @return [type] [description]
     */

    public function show_group()
    {
      $show_groups = new Group();
      $data = $show_groups->show_group();
     // var_dump($data);
      $this->assign('show_group',$data);
      
      return $this->fetch();
      
    }
    
    /**
     * 接收创建项目组
     */

    public function create_groups()
    {

      $data = input("param.");
      $group = new Group();
      $flag = $group->add_groups($data);
     
      switch ($flag) {
        case '1':
          return $this->success("项目组创建成功！",url('show_group'));
          break;
        case '2':
          return $this->error("项目组创建失败！");
          break;
        case '3':
           return $this->error("项目组已经存在！",url('show_group'));
          break;
        
        default:
          # code...
          break;
      }
    }




}
