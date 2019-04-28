<?php

class database{
public $connect;
    
public function connection()
        {
$this->connect=mysqli_connect("localhost","root","","exam");        
        }
public function checklogin()
{
if(!isset($_SESSION['uid']))  
    {
echo"<script>location.href='index.php';</script>";    
    }  
}    
public function authentication($email,$pwd)
{
$this->connection();   
$res=mysqli_query($this->connect,"SELECT * FROM `registration` WHERE `email`='$email' and `password`='$pwd'");
if(mysqli_num_rows($res) == 1)
        {
$_SESSION['uid']= $email;                      
echo"<script>location.href='home.php';</script>";    
    
        }
 else
 {
echo"<script>alert('Your Login Id/Password does not exist');</script>";     
 }                                
       

    
}   		
		

public function registration_insert($name,$email,$password,$contact,$mock)
{
$this->connection();  
mysqli_query($this->connect,"INSERT INTO `registration`(`name`,`email`,`password`,`contact`,`select mock test`) VALUES('$name','$email','$password','$contact','$mock') ");
echo" <script> alert('Submit Successfully');location.href='index.php'; </script>  "; 
          
}
}




$database= new database();
?>
 
   