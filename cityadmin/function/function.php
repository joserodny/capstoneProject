  <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>

<?php



include('../connection.php');


// ================




// ==================

 // volunteer add

// ==================


function volunteeracc()
{
		global $con;


	if(isset($_POST['volunteeracc']))
	{
		$cuser = $_POST['username_value'];

		$sql_e = "select * from users where username='".$cuser."'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

					echo '
					<script>
						swal(
				{
					type: "info",
					title: "Username Already Exists!",
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


		$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$urid = $row['r_id'];
				$upid = $row['p_id'];
				$ucid = $row['c_id'];


		$cbrgy = $_POST['brgy'];
		$evaid = $_POST['evaid'];
		$cnum = $_POST['bnum'];
		$cuser = $_POST['username_value'];
		$fname = $_POST['name'];
		$mname = $_POST['mname'];
		$lname = $_POST['lname'];
		$cmail = $_POST['bmail'];
		$cpassgen = $_POST['bpass'];


		$cpass = md5($cpassgen);

		$sql1 = "INSERT INTO users (r_id, p_id, c_id, b_id, eva_id, fname, mname, lname, contact, email, username, password, role)
		VALUES ('$urid', '$upid', '$ucid', '$cbrgy', '$evaid','$fname', '$mname', '$lname', '$cnum', '$cmail', '$cuser', '$cpass', 4)";




		}

		$instr = mysqli_query($con, $sql1);


		$instr;
				if($instr)
				{

				mail($cmail, 'your evacuation monitoring account info', "Username: ".$cuser."\nPassword: ".$cpassgen);

				echo '<script>
				swal(
				{
					type: "success",
					title: "successfully inserted",
					text: "The random password will send to user contact number",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';

				if(isset($_POST['volunteeracc']))
				{

					$cuser = $_POST[username_value];

					$api = "ST-JOSER937878_INASW";
					$ms = "Note Dont reply on this number";
					$user = "Username".":".$cuser;
					$pass = "Password".":".$cpassgen;

					$result = itexmo($cnum, $user."\n".$pass."\n!!!!".$ms,$api);
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


// ==================

 // end volunteer add

// ==================






// ============================

  // add evacuationname

// ============================


function addevacution()
{

	global $con;


		if(isset($_POST['addevacuation']))
		{


			$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
			$rid = $row['r_id'];
			$pid = $row['p_id'];
			$cid = $row['c_id'];


			$brgy = $_POST['brgy'];
			$eva = $_POST['evaname'];


		$sql = "insert into evacuations (r_id, p_id, c_id, b_id, evacuation_name) values ('$rid', '$pid', '$cid', '$brgy','$eva')";

		}
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
// ============================

  // end evacuationname

// ============================

// ============================

  // start select brgy

// ============================

function brgyevacuation()
{
	global $con;

	$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
			$cid = $row['c_id'];

	$result = mysqli_query($con, "select * from brgy where c_id = '$cid'");
		}
				while ($row = mysqli_fetch_assoc($result)):


				echo "
					<option value=".$row['b_id'].">".$row['barangay']."</option>


				";
			endwhile;
}

// ============================

  //  end select brgy

// ============================

// ============================

  // start select brgy account

// ============================




function volunteerreg()
{
	global $con;

	$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
			$cid = $row['c_id'];

	$result = mysqli_query($con, "select * from brgy where c_id = '$cid'");
		}
				while ($row = mysqli_fetch_assoc($result)):


				echo "
					<option value=".$row['b_id'].">".$row['barangay']."</option>


				";
			endwhile;
}




function selectbgryacc()
{
	global $con;

	$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
			$cid = $row['c_id'];

	$result = mysqli_query($con, "select * from brgy where c_id = '$cid' and status_id='1'");
		}
				while ($row = mysqli_fetch_assoc($result)):


				echo "
					<option value=".$row['b_id'].">".$row['barangay']."</option>


				";
			endwhile;
}

// ============================

  //  end select brgy account

// ============================



// ============================

  //  add brgy account

// ============================


function addbrgy()
{
	global $con;


	if(isset($_POST['brgyname']))
	{
		$brgy = $_POST['bbrgy'];



		$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

		$query = $con->query($sql);
		while($row = $query->fetch_assoc()){

		$rid = $row['r_id'];
		$pid = $row['p_id'];
		$cid = $row['c_id'];
		$brgy = $_POST['bbrgy'];


		$sql = "INSERT INTO brgy (r_id, p_id, c_id, barangay, status_id) VALUES ('$rid','$pid','$cid', '$brgy', '1')";

		}

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

// ============================

  //  end brgy account

// ============================






function resetevacuation()
{

	global $con;


		if(isset($_POST['resetevacuation']))
		{


			$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
			$rid = $row['r_id'];
			$pid = $row['p_id'];
			$cid = $row['c_id'];


			$eva = $_POST['evaid'];
			$consid = $_POST['evaconsid'];
			$idperson = $_POST['idperson'];

		$sql = "
		UPDATE constituents cons
		LEFT JOIN evacuees ev on ev.cons_id=cons.cons_id
		LEFT JOIN evacuations eva on eva.eva_id=ev.eva_id
		set cons_stat=0 WHERE cons_stat=2 and eva.eva_id=$eva";

		}
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{
				echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully Reset",


				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
				$dlt = "UPDATE evacuees set stat_id=1 where eva_id=$eva";
				$instrs = mysqli_query($con, $dlt);

				}


		}
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


// ============================

  // update missing

// ============================

function uptmissing()
{
	global $con;
	if(isset($_POST['updmissing']))
	{

		$id = $_POST['missing_id'];

		$sql = "UPDATE missing set statusid=0 where missing_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{




				echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully change"
				},
				function()
				{
				  window.location.href = "missing.php";
				}
				)</script>';







					}


	}


}


function uptrescued()
{
	global $con;
	if(isset($_POST['uptrescued']))
	{

		$id = $_POST['rescued_id'];

		$sql = "UPDATE rescued set statusid=0 where rescued_id=$id";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{




				echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully change"
				},
				function()
				{
				  window.location.href = "rescued.php";
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


function centerup()
{

global $con;
if(isset($_POST['upnamecenter'])){

    $center = $_POST['center'];
    $id = $_POST['id'];

    $sql = "update evacuations set evacuation_name='$center' where eva_id='$id'";
    $result = mysqli_query($con, $sql);
    if($result)
    {
        echo '<script>
        swal(
        {
            type: "success",
            title: "successfully updated",


        },
        function()
        {
          window.location.href = "evacutioncenter.php";
        }
        )</script>';
    }
}
}


function missing()
{
		function _encrypt($message, $hmac = FALSE)
	{
		date_default_timezone_set('UTC');
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
		$encryptionMethod = 'AES-256-CBC';
		$iv = substr(bin2hex(openssl_random_pseudo_bytes(16)), 0, 16);
		$encrypted = base64_encode($iv) . openssl_encrypt($message, $encryptionMethod, $secret, 0, $iv);

		return $encrypted;
	}
		global $con;
			$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

			if(isset($_POST['missingperson']))
			{




		$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$urid = $row['r_id'];
				$upid = $row['p_id'];
				$ucid = $row['c_id'];
			




		$mname = _encrypt($_POST['mname'],$secret);
		$mmid = _encrypt($_POST['mmid'],$secret);
		$mlast = _encrypt($_POST['mlast'],$secret);
		$mage = $_POST['mage'];

		$mgender = $_POST['mgender'];
		$gnum = _encrypt($_POST['gnum'],$secret);
		$mimage = $_FILES['image']['name'];
		$mimage_tmp = $_FILES['image']['tmp_name'];
		$descrip = $_POST['descrip'];

		move_uploaded_file($mimage_tmp,"../missingrescuedimage/$mimage");

		$sql1 = "INSERT INTO missing (r_id, p_id, c_id, name, midname, lastname, age, gender, image, contact, description, statusid)
		VALUES ('$urid', '$upid', '$ucid', '$mname', '$mmid', '$mlast', '$mage', '$mgender', '$mimage', '$gnum', '$descrip', '1')";




		}

		$instr = mysqli_query($con, $sql1);


		$instr;
				if($instr)
				{
				echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully inserted",


				},
				function()
				{
				  window.location.href = "missing.php";
				}
				)</script>';
				}



	}


}

	function rescued()
	{

		global $con;
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

		if (isset($_POST['rescued'])) {


			$sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


			$query = $con->query($sql);
			while ($row = $query->fetch_assoc()) {


				$urid = $row['r_id'];
				$upid = $row['p_id'];
				$ucid = $row['c_id'];
			




				$mname = _encrypt($_POST['mname'], $secret);
				$mmid = _encrypt($_POST['mmid'], $secret);
				$mlast = _encrypt($_POST['mlast'], $secret);
				$mage = $_POST['mage'];
				$mgender = $_POST['mgender'];
				$desc = $_POST['desc'];



				$mimage = $_FILES['image']['name'];
				$mimage_tmp = $_FILES['image']['tmp_name'];

				move_uploaded_file($mimage_tmp, "../missingrescuedimage/$mimage");

				$sql1 = "INSERT INTO rescued (r_id, p_id, c_id, name, midname, lastname, age, gender, image, description, statusid)
		VALUES ('$urid', '$upid', '$ucid', '$mname', '$mmid', '$mlast', '$mage', '$mgender', '$mimage', '$desc', '1')";
			}

			$instr = mysqli_query($con, $sql1);


			$instr;
			if ($instr) {
				echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully inserted",


				},
				function()
				{
				  window.location.href = "rescued.php";
				}
				)</script>';
			}
		}
	}


?>

