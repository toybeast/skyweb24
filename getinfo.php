<?php
include "ajax.php";
$reserved_days=$mysqli->query("SELECT id FROM days WHERE status=1");
$rs=[];
foreach ($reserved_days as $day)
{
    array_push($rs, $day['id']);

}
$rs=implode(' ,', $rs);
echo $rs;

