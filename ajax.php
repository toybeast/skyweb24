<?php
$mysqli = new mysqli("localhost", "root", "root", "main");
$days=$mysqli->query("SELECT * FROM days");

