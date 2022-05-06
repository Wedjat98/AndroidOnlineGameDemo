<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>枫之战纪自助充值</title>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.staticfile.org/bootstrap-select/1.13.10/css/bootstrap-select.min.css" rel="stylesheet">
<link href="images/main.css" rel="stylesheet">
<script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.staticfile.org/bootbox.js/4.4.0/bootbox.min.js"></script>
<script type="text/javascript" src="https://cdn.staticfile.org/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.staticfile.org/bootstrap-select/1.13.10/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="https://cdn.staticfile.org/bootstrap-select/1.13.10/js/i18n/defaults-zh_CN.js"></script>
</head>
<body>
  <div class="intro" style="margin-top:100px;">
    <div class="col-md-3 col-centered tac"><B>枫之战纪玩家充值后台</B></div>
	&nbsp;
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-8 col-centered">
          <form method="post" id="register-form" autocomplete="off" action="#" class="nice-validator n-default" novalidate>
            <div class="form-group">
              <input type="text" class="form-control" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')" id="uid" name="uid" placeholder="角色ID" autocomplete="off">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="pas" name="pas" placeholder="后台密码" autocomplete="off">
            </div>
            <div class="form-group">
              <select id="type" class="form-control" name="type"><option value="1">充值钻石</option><option value="2">充值礼包</option><option value="3">发送物品</option></select>
            </div>
            <div id='xitem' style="display:none;">
            <div class="form-group">
			<div class="input-group">
            <input type='text' class="form-control" value='' id='searchipt' placeholder='物品搜索'>
			<span class="input-group-btn"><button class="btn btn-info" type="button" id='search' >搜索</button></span>	
			</div>
            </div>
			<div class="form-group">
			<select id='item' class="form-control"><option value='0'>请选择需要发送的道具</option>
            <?php
            $file = fopen("item.txt", "r");
            while(!feof($file)){
                $line=fgets($file);
		        $txts=explode('|',$line);
		        if(count($txts)==2){
		            echo '<option value="'.$txts[0].'">'.$txts[1].'</option>';
		        }
            }
            fclose($file);
            ?>
            </select>
            </div></div>
            <div class="form-group" id='xnum'>
              <input type="text" class="form-control" onkeyup="value=value.replace(/^(0+)|[^\d]+/g,'')" id="num" name="num" placeholder="请输入数量" autocomplete="off">
            </div>
            <div class="form-group" id='xbao' style="display:none;">
			<select id='bao' class="form-control"><option value='0'>请选择礼包</option>
            <?php
            $file = fopen("bao.txt", "r");
            while(!feof($file)){
                $line=fgets($file);
		        $txts=explode('|',$line);
		        if(count($txts)==2){
		            echo '<option value="'.$txts[0].'">'.$txts[1].'</option>';
		        }
            }
            fclose($file);
            ?>
			</select>
            </div>
            <div class="form-center-button">
			  <input class="btn btn-danger" name='reg' id="1" value="提交" type="button" onclick= "test(this)">
			</div><br>
            <div id="divMsg" style="color:#F00" class="validator-tips">角色ID查看方法<br>点击头像-经验条下方属性页<br>向左滑动即可看到<br>部分礼包需游戏内显示出才可购买<br>本游戏没清包先发一个试水有些物品不能叠加用多少发多少</div>
          </form>
        </div>
      </div>
    </div>
  </div>
<script>
$('#type').change(function(){
var gn = $(this).children('option:selected').val();
if(gn == 1){
	document.getElementById('xnum').style.display = "";
	document.getElementById('xitem').style.display = "none";	
	document.getElementById('xbao').style.display = "none";
}else if(gn == 2){
	document.getElementById('xnum').style.display = "none";
	document.getElementById('xitem').style.display = "none";	
	document.getElementById('xbao').style.display = "";
}else if(gn == 3){
	document.getElementById('xnum').style.display = "";
	document.getElementById('xitem').style.display = "";	
	document.getElementById('xbao').style.display = "none";
}
});

$('#search').click(function(){
	  var keyword=$('#searchipt').val();
	  $.ajax({
		  url:'itemquery.php',
		  type:'post',
		  'data':{keyword:keyword},
          'cache':false,
          'dataType':'json',
		  success:function(data){
			  if(data){
				  $('#item').html('');
				for (var i in data){
				  $('#item').append('<option value="'+data[i].key+'">'+data[i].val+'</option>');
				}
				document.getElementById("num").value="1";
			  }else{
				  $('#item').html('<option value="0">未找到</option>');
			  }
		  },
		  error:function(){
			  bootbox.alert({message:'操作失败',title:"提示"});
		  }
	  });
  });

function tj(){
	$.ajaxSetup({contentType: "application/x-www-form-urlencoded; charset=utf-8"});
	$.post("guozi.php", {
		uid:$("#uid").val(),
		pas:$("#pas").val(),
		bao:$("#bao").val(),
		num:$("#num").val(),
		item:$("#item").val(),
		type:$("#type").val()
	},function(data){ 
            $('input[name=reg]').attr('id','1');  
            $('input[name=reg]').attr('value','提交');
            bootbox.alert({message:data,title:"提示"});
	});
};
 
function test(obj){  
    var _status = obj.id;  
    if(_status != '1'){  
         $('input[name=reg]').attr('id','0'); 		 
         $('input[name=reg]').attr('value','正在提交...');
		 return false;  
    }else{  
         $('input[name=reg]').attr('id','0');  
         $('input[name=reg]').attr('value','正在提交...');
         tj();   
    }    
};

document.onkeydown = function(event) {
	var target, code, tag;
	if (!event) {
		event = window.event; //针对ie浏览器
		target = event.srcElement;
		code = event.keyCode;
		if (code == 13) {
			tag = target.tagName;
			if (tag == "TEXTAREA") { return true; }
			else { return false; }
		}
	}else {
		target = event.target; //针对遵循w3c标准的浏览器，如Firefox
		code = event.keyCode;
		if (code == 13) {
			tag = target.tagName;
			if (tag == "INPUT") { return false; }
			else { return true; }
		}
	}
};
</script>
</body>
</html>