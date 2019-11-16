<?php
namespace app\admin\controller;
use app\admin\controller\Common;
use app\admin\model\Formdata;
/**
* 
*/
class ShowdataAdmin extends common
{
    

    //客户管理员
    public function admin_customer()
    {
         $input = input('param.');
        
        $this->assign('id',$input["id"]);
        return $this->fetch();
    }

    //客户管理员输出数据
    public function admin_customerdata()
    {
        
            $input = input('param.');
            $usetype= db('Duanuser')->where('id',$input['id'])->find();
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

    



    //推广管理员
    public function admin_extension()
    {
        $input = input('param.');
        $this->assign('id',$input["id"]);
    
        return $this->fetch();
    }

    //推广管理员输出数据
    public function admin_extensiondata()
    {
        
            $input = input('param.');
            $form = new Formdata();
            // $member = session('myone');
            $counts = $form->where('use_id',$input['id'])->select()->count();
            // var_dump($member);
            $formdata = $form->field('phone,address,writedress,message',true)
                            ->where('use_id',$input['id'])
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