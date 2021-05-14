<?php
$data = $_POST['active'];
$data=explode(',', $data);
$connect = new mysqli("localhost", "root", "root", "main");

foreach ($data as $dat){
$connect->query("UPDATE days SET status = 1 WHERE id =$dat");
}

?>

