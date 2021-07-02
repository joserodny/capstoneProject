<!DOCTYPE html>
<?php
session_start();
include('connection.php');


?>
<html lang="en">

<?php 
			
				
				global $con;
				if(isset($_POST['forgot']))
				{
					$email = $_POST['email'];
					
					$sql_e = "select * from users where email='".$email."'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

					$sql = "SELECT * FROM users where email = '". $email ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
				
				
					$iddate = $row['user_id'];
					$emaildata = $row['email'];
					$namedata = $row['username'];
					
					
					$subject = 'Evacuation Monitoring reset password';
					$url = 'http://'.$_SERVER['SERVER_NAME'].'/reset.php?id='.$iddate.'&email='.$emaildata;
				
					
						

				if($email == $emaildata)
					{
						
								
							if(mail($emaildata, 'Evacuation Monitoring reset password', "Hi, This is you forgot password link. ".$url."\n"))
							{
								echo '<div id="alertbottomright" class="myadmin-alert alert-success myadmin-alert-bottom-right" style="display: block;">
                    <h4>Message has been sent</h4>..</div>';
							}
							
					}elseif($email != $emaildata)
					{
						echo '<div id="alertbottomright" class="myadmin-alert alert-danger myadmin-alert-bottom-right" style="display: block;">
                    <h4>Email invalid</h4>..</div>';
					}

					
				
								
				
				
						
					}
		}else
		{
			echo '<div id="alertbottomright" class="myadmin-alert alert-danger myadmin-alert-bottom-right" style="display: block;">
                    <h4>Email invalid</h4>..</div>';
		}
					
				}
			?>
			
			

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
                      <a href="logout.php" class="btn btn-rounded btn-danger p-l-20 p-r-20"> Home</a>
                  </div>
                  </a>

                </div>

          </div>


			


	  <div class="new-login-box">
                <div class="white-box">
			
<h3 class="box-title m-b-0">Reset Password</h3>
                    <small>Enter your details below</small>

						
						
					<form method="POST" class="form-horizontal new-lg-form" action="">
					
				 <div class="col-xs-12">
                  <label>Email</label>
                 <input class="form-control" placeholder="example@gmail.com" type="email"  name="email" autocomplete="off" required /><br>
               </div>
           
              <br>
              <br>
              <br>
          
            
            
			<div class="form-group ">
					<a href="#" class="btn btn-danger waves-effect waves-light pull-right" data-toggle="modal" data-target="#contactadmin"><span>Contact admin</span> <i class="fa fa-link m-l-5"></i></a></div>		
					
					
					  <div class="form-group">
					 
						<div class="form-group text-center m-t-20">
						 <i class="fcbtn btn btn-info btn-outline btn-1d">
                      <div class="col-xs-12">
					  <input class="waves-button-input" type="submit" name="forgot" value="Submit" >
                      </div>	</i>
                    </div>
				
                </div>
				</form>

				
            </div>
			</div>
	

</section>
<script>
	function letters(input) {
		var regex = /[^a-z]/gi;
		input.value = input.value.replace(regex, "");
	}

	function numbers(input) {

		var regex = /[^0-9]/g;
		input.value = input.value.replace(regex, "");
	}
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
 <?php include('contactadmin.php'); ?>
   
</body>
</html>
