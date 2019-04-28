<?php
session_start();
$con=mysqli_connect("localhost","root","","exam");
require("find_classes/database.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Exam System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
  
  .bg-2 { 
      background-color: #474e5d;
      color: #ffffff;
  }
 

  
  </style>
   <style>
 


@media (max-width:767px){
	#footer h5 {
    padding-left: 0;
    border-left: transparent;
    padding-bottom: 0px;
    margin-bottom: 10px;
}
}

    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color:#000000;
	  color:#FFFF33;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }


  </style>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style="color:#FFFF00;">SUPER30</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Home</a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron">
    <h1 style="text-align:center">Mock Test</h1>
	<div align="left">
	<div style="font-size:16px">
	<h3>General Instruction:-</h3>
	The Test Consist Of 15 Questions<br>
	Timing 1Hours<br>
	Maximum Marks 60
	</div>
	</div>
</div>
<div class="row" style="text-align:center"> 
<div class="col-sm-2">Question</div><div class="col-sm-2">Ans-1</div><div class="col-sm-2">Ans-2</div><div class="col-sm-2">Ans-3</div><div class="col-sm-2">Ans-4</div></div>
<?php	
$exam = $_POST['exam'];
$i=1;
$res=mysqli_query($con,"SELECT * FROM `questionpaper` WHERE `test`='$exam'");		
while($fetch=mysqli_fetch_array($res)){
?> 
<div class="row" style="text-align:center"> 
<div class="col-sm-2"><?php print $i ; echo" : "; print $fetch[1];	?> </div>
<div class="col-sm-2"><?php print $i ; echo" : "; print $fetch[2];	?> <input type="checkbox"></div>
<div class="col-sm-2"><?php print $i ; echo" : "; print $fetch[3];	?> <input type="checkbox"></div>
<div class="col-sm-2"><?php print $i ; echo" : "; print $fetch[4];	?> <input type="checkbox"></div> 
<div class="col-sm-2"><?php print $i ; echo" : "; print $fetch[5];	?> <input type="checkbox"></div> 
</div> 
 <div class="row"> 
<div class="col-sm-3"><br><br></div> 
</div> 
<?php
$i++;
										}
?> 
<div class="row">
<div class="col-sm-12">
<button type="submit" name="submit" class="btn btn-success">SUBMIT TEST</button>

<?php
 if(isset($_POST['submit']))
 {
 $testname=$_POST['testname'];
 $sno[]=$_POST['sno'];
 $answer[]=$_POST['answer'];
 for($i=0;$i<count($sno);$i++)
	 {
mysqli_query($conn,"insert into  `data`(`testname`,`sno`,`answer`) VALUES ('$testname','$sno[$i]','$answer[$i]')");
	 }
 echo"<script>alert('Test Submit Successfully');location.href='index.php';</script>";
 }
 
?>

</div>
</div>

 
<br>  

<div class="container-fluid bg-2 text-center">
<br>
<br>
<div class="col-sm-4 text-center">
<h3>SUPER30 </h3>
<hr>
<h4 > our online test series is a great</h4>
<h4> revision tool that provide students</h4>
<h4> an opportunity to assess your preperation</h4>
<h4> and strengthen the weak areas to outperform</h4> 
<h4> in the actual examination.</h4>
</div>
<div class="col-sm-4 text-center">
<h3>CONTACT </h3>
<hr>
<h4>Office Address:-</h4>
<h4> Ramanujan School of Mathematics
   <br> Naya Tola, Kumhrar, Patna-800 020
</h4>
<h4>Shanti Kutir, Chandpur Bela, Patna 800 001</h4>
<h4>email:- mail@super30.org</h4>
<br>
<br>

</div>

<div class="col-sm-4 text-center">
<h3>WHY CHOOSE US </h3>
<hr>
<h4>Complete Practice Test</h4>
<h4>Time Management Skill</h4>
<h4>Expert Solution</h4>
<h4>Evaluate Their Performance</h4>
<br>
<br>
</div>

</div>

<footer class="container-fluid text-center">
  <p>Made With <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> by Nishant kumar and Arib Choudhary 2018. All Rights Reserved.</p>
</footer>

</body>
</html>
