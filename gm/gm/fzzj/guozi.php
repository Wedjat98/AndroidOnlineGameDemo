<?php
error_reporting(0);
$uid = $_POST['uid'];
$bao = $_POST['bao'];
$num = $_POST['num'];
$sqm = $_POST['sqm'];
$item = $_POST['item'];
$type = $_POST['type'];
$uid == '' && (die('请输入角色ID')); 
$sqm != "123456" && (die('授权码错误'));
$oid = createOrderNo();
if($type == 1){
    $num == '' && ($num = '1'); 
    $num > 99999999 && ($num = '99999999');
    $url = "http://127.0.0.1:8888/ifsqwgat?userID=0&serverID=1101&orderID={$oid}&roleID={$uid}&money={$num}&payType=2&productType=coin&payChannel=gm99&realCoin={$num}&extraCoin=0";
    $ret = json_decode(curl_https($url),true);
    if($ret['code']==1){
        die('充值成功');
    }else{
        die('充值失败');
    }
    print_r($ret);die;
}elseif($type == 2){
    $bao == 0 && (die('礼包选择错误'));
	$find=false;
	$file = fopen("bao.txt", "r");
	while(!feof($file)){
		$line=fgets($file);
		$txts=explode('|',$line);
		if(trim($txts[0]) == trim($bao)){
			$find=true;
			break;
		}		  
	}
	fclose($file);
	if($find==false){die('礼包配置错误');}
    $gids = explode(',',$bao,3);
    $pid = $gids[0];
    $rmb = $gids[1];
    $num = $gids[2];
    $num > 99999999 && ($num = '99999999');
    $url = "http://127.0.0.1:8888/ifsqwgat?userID=0&serverID=1101&orderID={$oid}&roleID={$uid}&money={$rmb}&payType=2&productType=pay&productID={$pid}&payChannel=gm99&realCoin={$num}&extraCoin=0";
    $ret = json_decode(curl_https($url),true);
    if($ret['code']==1){
        die('充值成功');
    }else{
        die('充值失败');
    }
}elseif($type == 3){
    $item == 0 && (die('物品选择错误'));
	$find=false;
	$file = fopen("item.txt", "r");
	while(!feof($file)){
		$line=fgets($file);
		$txts=explode('|',$line);
		if(trim($txts[0]) == trim($item)){
			$find=true;
			break;
		}		  
	}
	fclose($file);
	if($find==false){die('无此物品');}
    $num == '' && ($num = '1'); 
    $num > 99999999 && ($num = '99999999');
    $url = "http://127.0.0.1:8888/ifsqwgat?userID=0&serverID=1101&orderID={$oid}&roleID={$uid}&money=100&payType=2&productType=item&payChannel=gm99&Item={$item}&Num={$num}";
    $ret = json_decode(curl_https($url),true);
    if($ret['code']==1){
        die('发送成功');
    }else{
        die('发送失败');
    }
}

function curl_https($url){
	$ch = curl_init(); 
	curl_setopt($ch, CURLOPT_URL, $url); 
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER,true); 
	$cnt = curl_exec($ch);
	curl_close($ch); 
    return $cnt; 
}

function createOrderNo(){
    $date = date('Ymd');
    return $date.substr(implode(NULL, array_map('ord', str_split(substr(uniqid(),
            7, 13), 1))), 0, 8);
}

?>