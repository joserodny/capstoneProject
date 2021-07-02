

<?php

$con = new mysqli('localhost', 'u712261449_evacuati', 'rodny123', 'u712261449_evacuationcent');
	if($con->connect_error){
	   die("Connection failed: " . $con->connect_error);
	}


if(isset($_POST['getusers']))
{
 $user_name=str_replace(' ', '', $_POST['getusers']);
 random_username($user_name);
 exit();
}

function random_username($user_name)
{
 $new_name = $user_name.mt_rand(0,9999999);
 check_user_name($new_name,$user_name);
}

function check_user_name($new_name,$user_name)
{

	global $con;

				$sql_e = "select * from users where username='$new_name'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e))
					{
				  random_username($user_name);
				 }
				 else
				 {
				  echo $new_name;
				 }
				}

				?>