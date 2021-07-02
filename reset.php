<!DOCTYPE html>  
<?php
session_start();


include('connection.php');
?>
<html lang="en">



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="img/logo.png">
    <title>Evacuation Monitoring Login</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!--alerts CSS -->
    <link href="plugins/bower_components/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<!-- Preloader -->
<div class="preloader">
  <div class="cssload-speeding-wheel"></div>
</div>
<section id="wrapper" class="new-login-register">
      <div class="lg-info-panel">
              <div class="inner-panel">
                  <a href="javascript:void(0)" class="p-20 di">
	
                  <div class="lg-content">
                      <h2>EVACUATION MONITORING</h2>
                      <p class="text-muted">...</p>
                      <a href="logout.php" class="btn btn-rounded btn-danger p-l-20 p-r-20"> 
                    Home</a>
                  </div>
                  </a>
              </div>
      </div>
	  
	  
	  <div class="new-login-box">
                <div class="white-box">
				
				
					
						
				<?php 
				
				global $con;
	if(isset($_POST['reset']))
	{

		$id = $_GET['id'];
		$email = $_GET['email'];
		
		$cpass = $_POST['newpassword'];
		$md5 = md5($cpass);

		$sql = "UPDATE users set password='$md5' where user_id = '" . $id . "' and email='".$email."'";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				 echo '
					
					<meta content="2; URL = logout.php" http-equiv="Refresh" />﻿	
                    <div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
                    <h4>Success! Password Changes</h4>Please wait redirecting..</div>';

				}
			}
				?>
					
				 
				
                    <h3 class="box-title m-b-0">Reset Password</h3>
                    <small>Enter your details below</small>
					
					
					<form method="POST" class="form-horizontal new-lg-form" action="">
					<table>
					
				
					 
					  
					   <div class="form-group  ">
                      <div class="col-xs-12">
                         <label>Enter your new password</label>
                        <input class="form-control" type="password" size="10" id="newpassword" name="newpassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" autocomplete="off" required />
                      </div>
					  </div>
					  
					    <div class="form-group  ">
                      <div class="col-xs-12">
                         <label>Re-enter your new password</label>
                        <input class="form-control" type="password" size="10" id="confirm_password" name="confirmnewpassword" autocomplete="off" required />
                      </div>
					  </div>
					  
					  <div class="form-group">
                      <div class="col-md-12">
					   <a href="#" class="btn btn-danger waves-effect waves-light pull-right"><span>Contact admin</span> <i class="fa fa-link m-l-5"></i></a>
                      </div>
                    </div>
					
                    <div class="form-group">
                      <div class="form-group text-center m-t-20">
                      <div class="col-xs-12">
					  <i class="fcbtn btn btn-info btn-outline btn-1d"><input class="waves-button-input" type="submit" name="reset" value="Update Password" ></i>
                      </div>
                    </div>
                </div>
				
				
                        </table>
				
                    </form>
			           
		</div>
	  
	  
	  
          </div>
				  
				  
				
				
				
               
              
  
				
</section>
<script> 
var password = document.getElementById("newpassword")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;		
</script>
 <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Sweet-Alert  -->
    <script src="plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <!--Style Switcher -->
    <script src="plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>


</body>
</html>
