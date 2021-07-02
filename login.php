<!DOCTYPE html>  
<?php
session_start();
include('connection.php');

if (isset($_SESSION['username']))
{
	 header("Location: index.php");
}
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
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="css/colors/default.css" id="theme"  rel="stylesheet">
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
                      <a href="index.php" class="btn btn-rounded btn-danger p-l-20 p-r-20"> Home</a>
                  </div>
                  </a>
              </div>
      </div>
      <div class="new-login-box">
                <div class="white-box">
                    <h3 class="box-title m-b-0">Sign In</h3>
                    <small>Enter your details below</small>
                  <form class="form-horizontal new-lg-form" action="" method="POST">
                    
                    <div class="form-group  m-t-20">
                      <div class="col-xs-12">
                        <label>User</label>
                        <input class="form-control" type="text" required="" placeholder="Username" name="user">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-xs-12">
                        <label>Password</label>
                        <input class="form-control" type="password" required="" placeholder="Password" name="pass" autocomplete="off">
                      </div>
                    </div>
					<div class="form-group">
                      <div class="col-md-12">
                        <a href="resetpass.php" id="to-recover" class="text-dark pull-right"><i class="fa fa-lock m-r-5"></i> Forgot pwd?</a> </div>
                    </div>
                    <div class="form-group">
                      <div class="form-group text-center m-t-20">
                      <div class="col-xs-12">
					  <input class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit" name="login" value="Log In">
                      </div>
                    </div>
                
                      </div>
                  </form>
				  
				  <?php
				  
				
			
				global $con;
					if(isset($_POST['login']))
					{
						
						
					
						
						
						$c_email = $_POST['user'];
						$c_pass = $_POST['pass'];
						
						
						$p = md5($c_pass);
						
						$q=mysqli_query($con, "select * from users where password='$p' AND username='$c_email'");
						$row=mysqli_fetch_array($q);
						$type=$row['role'];
						$stat=$row['stat_id'];
						
						$list=mysqli_query($con, "select * from users where password='$p' AND username='$c_email'");
						$check_customer = mysqli_num_rows($list);
						
														
						if($check_customer==1)
						{	$_SESSION['username']=$c_email;
							$_SESSION["role"] = $row['role'];
							$_SESSION["username"] = $row['username'];
							
							if($stat == 1)
							{			
										 session_destroy();
									echo "<script>window.open('404.html','_self')</script>";	
								
									
									
							}
							 if($type == 1)
							{			
										$_SESSION['username']=$c_email;
									echo '<meta content="2; URL = mainadmin/index.php" http-equiv="Refresh" />';		
									
									
									echo '
									<div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
									<h4>Success!</h4>Please wait redirecting..</div>';
							}
							 if($type == 2)
							{			
										$_SESSION['username']=$c_email;
									echo '<meta content="2; URL = cityadmin/index.php" http-equiv="Refresh" />';		
									
									
									echo '
									<div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
									<h4>Success!</h4>Please wait redirecting..</div>';
							}
							 if($type == 3)
							{			
										$_SESSION['username']=$c_email;
									echo '<meta content="2; URL = brgyadmin/index.php" http-equiv="Refresh" />';		
									
									
									echo '
									<div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
									<h4>Success!</h4>Please wait redirecting..</div>';
							}
							if($type == 4)
							{			
										$_SESSION['username']=$c_email;
									echo '<meta content="2; URL = volunteer/index.php" http-equiv="Refresh" />';		
								
									
									echo '
									<div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
									<h4>Success!</h4>Please wait redirecting..</div>';
							}
							
						
							
						}
							elseif($check_customer==0)
							{
								 session_destroy();
								echo '
					<div id="alertbottomright" class="myadmin-alert alert-danger myadmin-alert-bottom-right" style="display: block;">
                    <h4>Invalid username or password</h4> Try again..</div>';
							}
						
						
					}						
				?>
				
				
				  
                </div>
      </div>            
  
  
</section>
<!-- jQuery -->
<script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Menu Plugin JavaScript -->
<script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

<!--slimscroll JavaScript -->
<script src="js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="js/waves.js"></script>
<!-- Custom Theme JavaScript -->
<script src="js/custom.min.js"></script>
<!--Style Switcher -->
<script src="plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>
