


 <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>


<?php


include('../connection.php');




// ==============================

         // REGION ADD START

// ==============================



function _encrypt($message, $hmac = FALSE)
{
	date_default_timezone_set('UTC');
	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	$encryptionMethod = 'AES-256-CBC';
	$iv = substr(bin2hex(openssl_random_pseudo_bytes(16)),0,16);
	$encrypted = base64_encode($iv) . openssl_encrypt($message, $encryptionMethod, $secret, 0, $iv);

	return $encrypted;

}

function _decryptS($message, $hmac = FALSE)
					{
					date_default_timezone_set('UTC');
					$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
					$encryptionMethod = 'AES-256-CBC';
					$iv = base64_decode(substr($message, 0, 24));
					return openssl_decrypt(substr($message, 24), $encryptionMethod, $secret, 0, $iv);
					}


function region()
{

	if(isset($_POST['postR']))
	{

		global $con;
		$region = htmlentities($_POST['region']);

		$sql_e = "select * from region where region_name='$region'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

					echo '
					<script>
						swal(
				{
					type: "info",
					title: "Region name Already Exists!",
					showConfirmButton: false,
					timer: 1500
				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';

					}
					else
					{





		$sql = "INSERT INTO region (region_name) VALUES ('$region')";




						$instr = mysqli_query($con, $sql);
						$instr;

						if($instr)
						{


						echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
						}
					}


	}
}


function listregion()
{



		global $con;
		$result = mysqli_query($con, "select * from region");

				while ($row = mysqli_fetch_assoc($result)):


				echo "

					<option value=".$row['r_id'].">".$row['region_name']."</option>


				";

				endwhile;



}

// ==============================

         // REGION ADD END

// ==============================

//---------------------

// ==============================

         // PROVINCE ADD START

// ==============================


function province()
{

	if(isset($_POST['postP']))
	{

		global $con;
		$region = $_POST['region'];
		$province = $_POST['province'];

		$sql_e = "select * from province where province_name='$province'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

					echo '
					<script>
						swal(
				{
					type: "info",
					title: "Province name Already Exists!",
					showConfirmButton: false,
					timer: 1500
				},
				function()
				{
				  window.location.href = "index.php";
				})</script>';


					}
					else
					{

		$sql = "INSERT INTO province (r_id, province_name) VALUES ('$region', '$province')";





						$instr = mysqli_query($con, $sql);
						$instr;

						if($instr)
						{
						echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
						}

						}
	}

}

function listprovince()
{



		global $con;


		$result = mysqli_query($con, "select * from province");

				while ($row = mysqli_fetch_assoc($result)):


				echo "

					<option value=".$row['p_id'].">".$row['province_name']."</option>
				";

				endwhile;



}



// ==============================

         // PROVINCE ADD END

// ==============================

// ============================

  // Citiesss start

// ============================

//---------------------
function Citiess()
{

	if(isset($_POST['postC']))
	{

		global $con;
		$region = $_POST['region'];
		$province = $_POST['province'];
		$city = $_POST['city'];


		$sql = "INSERT INTO city (r_id, p_id, cities) VALUES ('$region', '$province' ,'$city')";





						$instr = mysqli_query($con, $sql);
						$instr;

						if($instr)
						{
						echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
						}


	}

}
function listcities()
{



		global $con;
		$result = mysqli_query($con, "select * from city");

				while ($row = mysqli_fetch_assoc($result)):


				echo "

					<option value=".$row['c_id'].">".$row['cities']."</option>
				";

				endwhile;



}
//---------------------

// ============================

  // Citiesss end

// ============================


// ============================

  // Add city admin

// ============================

//---------------------
function cityuser()
{

	if(isset($_POST['cityacc']))
	{

		global $con;
		$region = $_POST['region'];
		$province = $_POST['province'];
		$city = $_POST['city'];
		$fname = $_POST['name'];
		$mname = $_POST['mname'];
		$lname = $_POST['lname'];
		$cnum = $_POST['cnum'];
		$cmail = $_POST['cmail'];
		$cuser = $_POST['username_value'];
		$cpass = $_POST['cpass'];
		$md5cpass = md5($cpass);

		$sql_e = "select * from users where username='$cuser'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{


					echo '
					<script>
						swal(
				{
					type: "info",
					title: "Username already exist",
					showConfirmButton: false,
					timer: 2000
				},
				function()
				{
				  window.location.href = "index.php";
				})</script>';

					}
					else
					{

		$sql = "INSERT INTO users (r_id, p_id, c_id, fname, mname, lname, contact, email,username, password, role)
		VALUES ('$region', '$province', '$city', '$fname', '$mname', '$lname', '$cnum', '$cmail', '$cuser', '$md5cpass', 2)";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{


					mail($cmail, 'your evacuation monitoring account info', "Username: ".$cuser."\nPassword: ".$cpass);


				echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",
					text: "Please Check your spam email and mobile phone",

				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';

				if(isset($_POST['cityacc']))
				{
					$number = $_POST[cnum];
					$username = $_POST[username_value];
					$rndpass = $_POST[cpass];
					$api = "ST-JOSER937878_INASW";
					$ms = "Note Dont reply on this number";
					$user = "Username".":".$username;
					$pass = "Password".":".$rndpass;

					$result = itexmo($number, $user."\n".$pass."\n!!!!".$ms,$api);
					if ($result == ""){
					echo "iTexMo: No response from server!!!
					Please check the METHOD used (CURL or CURL-LESS). If you are using CURL then try CURL-LESS and vice versa.
					Please CONTACT US for help. ";
					}else if ($result == 0){
					echo "Message Sent!";
					}
					else{
					echo "Error Num ". $result . " was encountered!";
					}
				}

				}



					}


	}


}



// ============================

  // Add city End

// ============================

function regselect()
{
	global $con;


	$result = mysqli_query($con, "select * from region");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['r_id'].">".$row['region_name']."</option>


				";
			endwhile;


}

// ============================

  // disable account

// ============================

function dis()
{
	global $con;
	if(isset($_POST['dis']))
	{

		$id = $_POST['id'];

		$sql = "UPDATE users set stat_id=1 where user_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{




				echo '<script>
				swal(
				{
					type: "success",
					title: "Account successfully deactivated"
				},
				function()
				{
				  window.location.href = "users.php";
				}
				)</script>';







					}


	}


}

// ============================

  // Actived account

// ============================


function act()
{
	global $con;
	if(isset($_POST['act']))
	{

		$id = $_POST['id'];

		$sql = "UPDATE users set stat_id=0 where user_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				echo '<script>
				swal(
				{
					type: "success",
					title: "Account successfully activated"
				},
				function()
				{
				  window.location.href = "users.php";
				}
				)</script>';

				}
			}
}


function upacc()
{
	global $con;
	if(isset($_POST['upacc']))
	{

		$id = $_POST['id'];
		$user = $_POST['user'];
		$name = $_POST['name'];
		$mname = $_POST['mname'];
		$lname = $_POST['lname'];
		$cmail = $_POST['cmail'];
		$cpass = $_POST['cpass'];
		$md5 = md5($cpass);
		$current = $_POST['current'];
		$cur = md5($current);

		$cnum = $_POST['cnum'];
			$sql_e = "select * from users where password='$cur'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

						if(!empty($_POST['cpass'])){
					$sql = "UPDATE users set fname='$name', contact='$cnum', mname='$mname', lname='$lname', username='$user', email='$cmail', password='$md5' where user_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				echo '<script>
				swal(
				{
					type: "success",
					title: "Account successfully Change"
				},
				function()
				{
				  window.location.href = "../logout.php";
				}
				)</script>';

				}
						}elseif(empty($_POST['cpass']))
						{
							$sql = "UPDATE users set fname='$name', contact='$cnum', mname='$mname', lname='$lname', username='$user', email='$cmail' where user_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				echo '<script>
				swal(
				{
					type: "success",
					title: "Account successfully Change"
				},
				function()
				{
				   window.location.href = "../logout.php";
				}
				)</script>';

				}
						}





					}
					else
					{
						echo '
					<script>
						swal(
				{
					type: "info",
					title: "Current password is wrong",
					showConfirmButton: false,
					timer: 2000
				},
				function()
				{
				  window.location.href = "index.php";
				})</script>';
					}
			}
}




function disas()
{

	if(isset($_POST['disaster']))
	{

		global $con;
		$disas = $_POST['disas'];


		$sql_e = "select * from disaster where disaster_level ='$disas'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{


					echo '
					<script>
						swal(
				{
					type: "info",
					title: "Disaster already Exists!",
					showConfirmButton: false,
					timer: 1500
				},
				function()
				{
				  window.location.href = "index.php";
				})</script>';

					}
					else
					{


		$sql = "INSERT INTO disaster (disaster_level) VALUES ('$disas')";





						$instr = mysqli_query($con, $sql);
						$instr;

						if($instr)
						{
						echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
						}

						}
	}

}


function disaster()
{
	global $con;


	$result = mysqli_query($con, "select * from disaster where disaster_level='Typhoon'");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['disaster_level'].">".$row['disaster_level']."</option>


				";
			endwhile;


}



function typhoonname()
{

	if(isset($_POST['typhoon']))
	{

		global $con;
		$typ = $_POST['typ'];
		$typhoon = $_POST['typhoonname'];



		$sql = "INSERT INTO typhoon_name (disas_id, typ_name) VALUES ('$typ','$typhoon')";

					$instr = mysqli_query($con, $sql);
						$instr;

						if($instr)
						{
						echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';


			}
	}

}




function disasterreport()
{
	global $con;


	$result = mysqli_query($con, "select * from disaster where disaster_level='Typhoon'");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['disaster_level'].">".$row['disaster_level']."</option>


				";
			endwhile;


}

function disasters()
{
	global $con;


	$result = mysqli_query($con, "select * from disaster");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['disaster_level'].">".$row['disaster_level']."</option>


				";
			endwhile;


}

function typhname()
{
	global $con;


	$result = mysqli_query($con, "select * from typhoon_name where disas_id='Typhoon'");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['typ_name'].">".$row['typ_name']."</option>


				";
			endwhile;


}

function activetyphoon()
{
	global $con;


	$result = mysqli_query($con, "select * from typhoon_name where disas_id='Typhoon' and stat_id='0'");

				while ($row = mysqli_fetch_array($result)):


				echo "
					<option value=".$row['typ_name'].">".$row['typ_name']."</option>


				";
			endwhile;


}


function distyphon()
{
  global $con;


  if(isset($_POST['distyphon'])){
	$typhoonnamedis = $_POST['typhoonnamedis'];
	$sql = "update typhoon_name set stat_id='1' where typhoon_id='$typhoonnamedis'";
	$result = mysqli_query($con, $sql);
	if($result)
	{
		echo '<script>
		swal(
		{
			type: "success",
			title: "successfully updated",
			showConfirmButton: false,
			timer: 1500

		},
		function()
		{
		  window.location.href = "typhoons.php";
		}
		)</script>';

	}
  }
}



?>





