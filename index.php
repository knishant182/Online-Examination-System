<?php
session_start();
$con=mysqli_connect("localhost","root","","exam");
require("find_classes/database.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Examination System</title>
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
    /* Add a gray background color and some padding to the footer */
    footer { 
      background-color:#000000;
	  color:#FFFF33;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>
  <script>
 function f1(str,id)
 {   
  var data=str.toUpperCase();
  document.getElementById(id).value=data;
 }
 
 function f2(str,id)
 {   
  var data=document.getElementById(id).value;
  var value=isNaN(data);  
  if(value== true)
    {
   alert('Please Enter Numeric Value Only'); 
    }
        
 }
 </script>  
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
        <li><a href="about.php">About</a></li>
      </ul>
       <ul class="nav navbar-nav navbar-right">
	    <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> REGISTRATION</a></li>
        <li><a href="#" data-toggle="modal" data-target="#myModa2"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="image/2.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Mock Test</h3>
          </div>      
        </div>

        <div class="item">
          <img src="image/3.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Mock Test</h3>
          </div>      
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <?php
  if(isset($_POST['submit1']))
  {
 $name=$_POST['name'];$email=$_POST['email'];$contact=$_POST['contact'];$query=$_POST['query'];  
 mysqli_query($con,"insert into `query` VALUES('$name','$email','$contact','$query')");
 echo"<script>  alert('Submit Successfully');location.href='index.php';    </script>";   
  }
  
  ?>
  <div class="col-sm-4">
    <div class="well">
     <h3 style="text-align: center; ">Any Query ?</h3>
     <hr />
     <form method="POST">
      <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="name" name="name" required="" />
    </div> 
    <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" name="email" />
    </div>
    <div class="form-group">
    <label for="contact">Contact:</label>
    <input type="text" class="form-control" id="contact" name="contact" required="" />
    </div>
     <div class="form-group">
    <label for="query">Query:</label>
    <textarea class="form-control" name="query" id="query" required=""></textarea>
    </div>       
    <button type="submit" name="submit1" class="btn btn-success">Submit</button>  
     </form>  
    </div>
  
  </div>
</div>
<hr>
</div>

<div class="container text-center">    
  <h3>What We Offer</h3>
  <br>
  <div class="row">
    <div class="col-sm-4">
	<a href="#" data-toggle="modal" data-target="#myModa2">
      <img src="image/15.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h3>CBSE-12TH PCM MOCK TEST</h3>
    </a>
    </div>
    <div class="col-sm-4"> 
	<a href="#" data-toggle="modal" data-target="#myModa2">
      <img src="image/12.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h3>ENGINEERING MOCK TEST FOR JEE-MAIN</h3>  
    </a>  
    </div>
	 <div class="col-sm-4"> 
	 <a href="#" data-toggle="modal" data-target="#myModa2">
      <img src="image/13.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h3>ENGINEERING MOCK TEST FOR JEE-ADVANCED</h3> 
	 </a>   
    </div>
  
    </div>  
  </div>
  <hr>
</div>

<head>
  <style>
  .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
 
  </style>
</head>

<body>

<div class="container-fluid bg-1 text-center">
<h3>EXPERT TEAM</h3>
<hr>
 <div class="col-sm-3"> 
  <img src="image/29.jpg" class="img-circle">
  <h3>Rahul Ranjan</h3>
</div>
 <div class="col-sm-3"> 
  <img src="image/16.jpg" class="img-circle">
  <h3>Anand Kumar</h3>
</div>
<div class="col-sm-3"> 
  <img src="image/33.jpg" class="img-circle">
  <h3>Chetan Manbans</h3>
</div>
<div class="col-sm-3"> 
  <img src="image/28.jpg" class="img-circle">
  <h3>Parnav Kumar</h3>
</div>
</div>
</div>
</body>
<div class="container text-center">    
  <h3>Our Rankers</h3>
  <br>
  <div class="row">
    <div class="col-sm-2">
      <img src="image/39.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2"> 
      <img src="image/38.jpg" class="img-responsive" style="width:100%" alt="Image">   
    </div>
    <div class="col-sm-2"> 
      <img src="image/46.jpg"  class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2"> 
      <img src="image/47.jpg"  class="img-responsive" style="width:100%" alt="Image">
    </div> 
    <div class="col-sm-2"> 
      <img src="image/42.jpg"  class="img-responsive" style="width:100%" alt="Image">
    </div>     
    <div class="col-sm-2"> 
      <img src="image/54.jpg"  class="img-responsive" style="width:100%" alt="Image">
    </div> 
  </div>
</div><br>


<div class="container-fluid bg-2 text-center">
<br>
<br>
<div class="col-sm-4 text-center">
<h3>SUPER30 </h3>
<hr>
<h4> our online test series is a great</h4>
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


<?php
require("includes/registration.php");
require("includes/login.php");
?>
