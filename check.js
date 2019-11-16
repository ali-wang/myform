function isPhoneNo(phone) { 
		 var pattern = /^1[3456789]\d{9}$/; 
		 return pattern.test(phone); 
		}
		 
function isCardNos(card) {  
	   var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
	   return pattern.test(card); 
		} 

function forms() {
    var form= $('.form-controls');
    var json={};
      for(var j=0;j<form.length;j++){
        var name = form[j].name;
        var value = form[j].value;
        json[name]=value;
      }

    return json;
}

function forms2() {
    var form= $('.form-controls2');
    var json={};
      for(var j=0;j<form.length;j++){
        var name = form[j].name;
        var value = form[j].value;
        json[name]=value;
      }

    return json;
}
	
var kw_ref = "";
var kw_url = "";
var id = "11";	
	
try {
    kw_url = window.location.href
} catch(e) {}
try {
    kw_ref = window.document.referrer
} catch(e) {}	
	

function tj_ajax(num) {

		if(num=='1'){
			var json= forms();
			urls='http://form.xaxing07.com/myform/index.php/add';
		}else{
			var json= forms2();
			urls='http://form.xaxing07.com/myform/index.php/add2';
		}
		
		json.id=id;
		json.kw_ref=kw_ref;
		json.kw_url=kw_url;
		console.log(json);
		var isphone = isPhoneNo(json.phone);
		 
		 var flag = true;
		 if(json.username==""){
		 	alert("请填写姓名！");
		 	return;
		 }else if (json.phone=="") {
		 	alert("请填写手机号！");
		 	return;
		 }else if (json.sheng=="省份") {
		 	alert("请填选择地址！");
		 	return;
		 }else if (json.write_address=="") {
		 	alert("请填写详细地址！");
		 	return;
		 }
		if(!isphone){
			alert("手机号码输入有误，请重新输入！");
			flag = false;
			return;
		} 
		
		if(flag){
			$.ajax({
					type:"post",
					url:urls,
					data:json,
					success:function(msg){	
						msg = JSON.parse(msg);
						alert(msg.msg); 
					}
				});	
				
		}
	
}


	