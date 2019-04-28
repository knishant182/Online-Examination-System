<?php

if(  isset($_POST['submit'])   ) {
$name=$_POST['name'];$email=$_POST['email'];
$password=$_POST['pwd'];$contact=$_POST['contact'];
$mock=$_POST['sell'];
$database->registration_insert($name,$email,$password,$contact,$mock);                           
                             }
?>







<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!--Modal content-->
	  <div class="modal-content">
	    <div class="modal-header">
	     <button type="button" class="close" data-dismiss="modal">&times;</button>
		    <h4 class="modal-title">Registration</h4>
	     </div>
		 <div class="modal-body">
		 
		 
		 <form method="POST">
		 
		  <div class="form-group">
            <label for="email">Name:</label>
            <input type="text"  name="name"  onkeyup="f1(this.value,this.id)" class="form-control" id="name" required="">
          </div>
		  <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email"  name="email"  onkeyup="f1(this.value,this.id)"  class="form-control" id="email" required="">
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password"  name="pwd"  onkeyup="f1(this.value,this.id)"  class="form-control" id="pwd" required="">
          </div>
		   <div class="form-group">
            <label for="pwd">contact:</label>
            <input type="text"  name="contact"  onkeyup="f2(this.value,this.id)" placeholder="Do Not Use Country Code"   maxlength="10" class="form-control" id="contact" required="">
          </div>
		  <div class="form-group">
            <label for="sel1">Select Mock Test:</label>
            <select class="form-control" name="sell" id="sell">
            <option>12th PCM</option>
            <option>JEE-MAIN </option>
            <option>JEE-ADVANCED</option>
            </select>
          </div>
		 
		 <div class="form-group">
            <button type="submit" name="submit" class="btn btn-danger">Registered</button>
          </div>
      
		  
		 </form>
		 
		
		 
	   </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>