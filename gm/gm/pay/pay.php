<?php
error_reporting(0);
$usr = $_POST['usr'];
$cdk = $_POST['cdk'];
$pas = $_POST['pas'];
$usr = str_replace(array(' ','%'),'',$usr);
$cdk = str_replace(array(' ','%'),'',$cdk);
$pas = str_replace(array(' ','%'),'',$pas);
$cdk =='' && (die('请输入CDKEY'));
$usr =='' && (die('请输入ID'));
$pas =='' && (die('请输入密码'));
$mysql = mysqli_connect('127.0.0.1','root','b712f606771025f0','user',3306) or die("数据库连接错误");
$mysql->query('set names utf8');
$xx = mysqli_fetch_assoc($mysql->query("SELECT uid FROM cdk WHERE uid = '$usr' limit 1"));
$xx['uid'] != '' && (die('此ID已授权,无需再次授权'));
$uid = $usr;
$xxx = mysqli_fetch_assoc($mysql->query("SELECT * FROM user.cdk WHERE cdk = '$cdk' limit 1"));
$xxx['id'] == '' && (die('无此授权卡'));
$xxx['status'] != 0 && (die('此授权卡已被使用'));
if($mysql->query("UPDATE user.cdk SET status = 1 , uid = '$uid' , pass = '$pas' WHERE cdk = '$cdk';")){
    die('角色ID授权成功');
}else{
	die('授权失败.请联系管理员');
}
?>