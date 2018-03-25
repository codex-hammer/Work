<?php
$user='root';
$pass='';
$db='project';
$db=new mysqli('localhost',$user,$pass,$db) or die ("unable to connect");


$a=$_POST["email"];
$b=$_POST["name"];
$c=$_POST["country"];
$d=$_POST["password"];

$sql = "INSERT INTO employer_register(email_id,name,country,password)
VALUES('$a','$b','$c','$d')";
if ($db->query($sql)===TRUE)
{header('location: thanks.html');}
else
{echo "Error connecting to DATABASE".$db->error;}
$db->close();
?> 