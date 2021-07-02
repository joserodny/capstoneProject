 <!-- Sweet-Alert  -->
 <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
 <?php

	function _encrypt($message, $hmac = FALSE)
	{
		date_default_timezone_set('UTC');
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
		$encryptionMethod = 'AES-256-CBC';
		$iv = substr(bin2hex(openssl_random_pseudo_bytes(16)), 0, 16);
		$encrypted = base64_encode($iv) . openssl_encrypt($message, $encryptionMethod, $secret, 0, $iv);

		return $encrypted;
	}
	function _decrypts($message, $hmac = FALSE)
	{
		date_default_timezone_set('UTC');
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
		$encryptionMethod = 'AES-256-CBC';
		$iv = base64_decode(substr($message, 0, 24));
		return openssl_decrypt(substr($message, 24), $encryptionMethod, $secret, 0, $iv);
	}


	include('../connection.php');



	// add missing person
	function missing()
{

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
				$ubid = $row['b_id'];




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

		$sql1 = "INSERT INTO missing (r_id, p_id, c_id, b_id, name, midname, lastname, age, gender, image, contact, description, statusid)
		VALUES ('$urid', '$upid', '$ucid', '$ubid', '$mname', '$mmid', '$mlast', '$mage', '$mgender', '$mimage', '$gnum', '$descrip', '1')";




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
	// end process of missing person

	// add missing person
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
				$ubid = $row['b_id'];




				$mname = _encrypt($_POST['mname'], $secret);
				$mmid = _encrypt($_POST['mmid'], $secret);
				$mlast = _encrypt($_POST['mlast'], $secret);
				$mage = $_POST['mage'];
				$mgender = $_POST['mgender'];
				$desc = $_POST['desc'];



				$mimage = $_FILES['image']['name'];
				$mimage_tmp = $_FILES['image']['tmp_name'];

				move_uploaded_file($mimage_tmp, "../missingrescuedimage/$mimage");

				$sql1 = "INSERT INTO rescued (b_id, r_id, p_id, c_id, name, midname, lastname, age, gender, image, description, statusid)
		VALUES ('$ubid', '$urid', '$upid', '$ucid', '$mname', '$mmid', '$mlast', '$mage', '$mgender', '$mimage', '$desc', '1')";
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

	function infos()
	{
		global $con;

		$sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


		$query = $con->query($sql);
		while ($row = $query->fetch_assoc()) {
			$cid = $row['eva_id'];

			$result = mysqli_query($con, "SELECT
	eva.evacuation_name as center,
	ct.cities as ct,
	br.barangay as brgy
	FROM users us
	LEFT JOIN evacuations eva on us.eva_id=eva.eva_id
	LEFT JOIN city ct on ct.c_id=us.c_id
	LEFT JOIN brgy br on br.b_id=us.b_id
	where us.eva_id=$cid group by ct.c_id");
		}
		while ($row = mysqli_fetch_assoc($result)) :


			echo "
					<h5 class='pull-right'><b>City</b>:<u>" . $row['ct'] . "</u> &nbsp; <b>Brgy</b>:<u>" . $row['brgy'] . "</u> &nbsp; <b>Evacuation</b>:<u>" . $row['center'] . "</u></h5>

				";
		endwhile;
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




function familyhead()
{
		global $con;
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

	if(isset($_POST['familyhead']))
	{

		$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$urid = $row['r_id'];
				$upid = $row['p_id'];
				$ucid = $row['c_id'];
				$ubid = $row['b_id'];
			$volunteerid = $row['user_id'];

		$cons_name = _encrypt($_POST['cons_name'],$secret);
		$cons_midname = _encrypt($_POST['cons_midname'],$secret);
		$cons_lname = _encrypt($_POST['cons_lname'],$secret);
		$cons_age = $_POST['cons_age'];
		$cons_gender = $_POST['cons_gender'];
		$cons_add = _encrypt($_POST['cons_add'],$secret);


		$insert = "INSERT INTO constituents (cons_name, cons_midname, cons_lname, cons_age, cons_gender, cons_add, b_id, c_id, p_id, r_id, cons_stat, cons_fid, volunteer_id)
		values ('$cons_name', '$cons_midname', '$cons_lname', '$cons_age', '$cons_gender', '$cons_add', '$ubid', '$ucid', '$upid', '$urid', 1, 1, '$volunteerid')";
		}

		$instr = mysqli_query($con, $insert);


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
				  window.location.href = "family.php";
				}
				);</script>';
				}



	}
}


function individual()
{
		global $con;
		$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

	if(isset($_POST['addindividual']))
	{

		$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$urid = $row['r_id'];
				$upid = $row['p_id'];
				$ucid = $row['c_id'];
				$ubid = $row['b_id'];


		$cons_name = _encrypt($_POST['cons_name'],$secret);
		$cons_midname = _encrypt($_POST['cons_midname'],$secret);
		$cons_lname = _encrypt($_POST['cons_lname'],$secret);
		$cons_age = $_POST['cons_age'];
		$cons_gender = $_POST['cons_gender'];
		$cons_add = _encrypt($_POST['cons_add'],$secret);


		$insert = "INSERT INTO constituents (cons_name, cons_midname, cons_lname, cons_age, cons_gender, cons_add, b_id, c_id, p_id, r_id)
		values ('$cons_name', '$cons_midname', '$cons_lname', '$cons_age', '$cons_gender', '$cons_add', '$ubid', '$ucid', '$upid', '$urid')";
		}

		$instr = mysqli_query($con, $insert);


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
				  window.location.href = "index.php";
				}
				);</script>';
				}



	}
}

function selecthead()
{
	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	global $con;
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

										$uquery = $con->query($user);
										while($rows = $uquery->fetch_assoc()){


										$bid = $rows['b_id'];
	$result = mysqli_query($con, "select * from constituents where cons_stat = '1' and b_id='$bid'");
										}
				while ($row = mysqli_fetch_assoc($result)):


				echo "
					<h4 class='m-t-0 text-info'>"._decrypts($row['cons_name'],$secret)." "._decrypts($row['cons_lname'],$secret)."</h4>

				";



			endwhile;
}


function familymember()
{
	global $con;


	if(isset($_POST['submit']))
	{
		$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

										$uquery = $con->query($user);
										while($rows = $uquery->fetch_assoc()){


										$bid = $rows['b_id'];
									$volunteerid = $rows['user_id'];

		$sql = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id='$volunteerid'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$cons_id = $row['cons_id'];


		$updt = "update constituents set cons_stat='0', cons_fid='$cons_id' where cons_id='$cons_id'";
		}

		}
		$instr = mysqli_query($con, $updt);

		$instr;
				if($instr)
				{

				}



	}
}







// call id address



function bid($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["b_id"].'">'.$row["b_id"].'</option>';
 }
 return $output;
}
}

// call cid address


function cid($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["c_id"].'">'.$row["c_id"].'</option>';
 }
 return $output;
}
}

 // call pid address

function pid($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["p_id"].'">'.$row["p_id"].'</option>';
 }
 return $output;
}
}

// call rid address

function rid($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["r_id"].'">'.$row["r_id"].'</option>';
 }
 return $output;
}
}

// call fid address

function fid($connect)
{
	$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

	$uquery = $connect->prepare($user);
	$uquery->execute();
	$rslt = $uquery->fetchAll();
	foreach($rslt as $rows){
	$bid = $rows['b_id'];
	$volunteerid = $rows['user_id'];
 $output = '';
 $query = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid' and volunteer_id ='$volunteerid'";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output .= '<option value="'.$row["cons_id"].'">'.$row["cons_id"].'</option>';
 }
 return $output;
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

function disasters()
{
	global $con;


	$result = mysqli_query($con, "select * from disaster where disaster_level !='Typhoon'");

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



function fmemremove()
{
	global $con;
	if(isset($_POST['fmemremove'])){
 $headid = $_POST['ffammem'];
 $headidfam = $_GET['headid'];

	$sql = "delete from constituents where cons_id = '$headid'";
	$result = mysqli_query($con, $sql);
	if($result)
	{
		echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully removed",


				},
				function()
				{
				  window.location.href = "familymember.php?headid='.$headidfam.'";
				}
				)</script>';
	}
}

}

function fmemedit()
{
	global $con;
	$headidfam = $_GET['headid'];
	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	if(isset($_POST['constiedit']))
	{
		$headid = $_POST['headid'];
		$cons_name = _encrypt($_POST['cons_name'],$secret);
		$cons_midname = _encrypt($_POST['cons_midname'],$secret);
		$cons_lname = _encrypt($_POST['cons_lname'],$secret);
		$cons_age = $_POST['cons_age'];

		$sql = "update constituents set cons_name='$cons_name', cons_midname='$cons_midname', cons_lname='$cons_lname', cons_age='$cons_age' where cons_id='$headid'";
		$result = mysqli_query($con, $sql);
		if($result)
	{
		echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully updated",


				},
				function()
				{
				  window.location.href = "familymember.php?headid='.$headidfam.'";
				}
				)</script>';
	}

	}
}

function newfamem()
{
	global $con;
	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	$headidfam = $_GET['headid'];
	if(isset($_POST['newfam']))
	{
		$sql = "SELECT * FROM constituents where cons_fid='$headidfam'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{


				$cons_add = $row['cons_add'];
				$ubid = $row['b_id'];
				$ucid = $row['c_id'];
				$upid = $row['p_id'];
				$urid = $row['r_id'];


				$cons_name = _encrypt($_POST['cons_name'],$secret);
				$cons_midname = _encrypt($_POST['cons_midname'],$secret);
				$cons_lname = _encrypt($_POST['cons_lname'],$secret);
				$cons_age = $_POST['cons_age'];
				$cons_gender = $_POST['cons_gender'];

				$insert = "INSERT INTO constituents (cons_name, cons_midname, cons_lname, cons_age, cons_gender, cons_add, b_id, c_id, p_id, r_id, cons_fid)
		values ('$cons_name', '$cons_midname', '$cons_lname', '$cons_age', '$cons_gender', '$cons_add', '$ubid', '$ucid', '$upid', '$urid', '$headidfam')";
		}
				$result = mysqli_query($con, $insert);
				if($result)
			{
				echo '<script>
						swal(
						{
							type: "success",
							title: "Successfully added",


						},
						function()
						{
						  window.location.href = "familymember.php?headid='.$headidfam.'";
						}
						)</script>';
			}

	}
}



function constieditper()
{
	global $con;

	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	if(isset($_POST['constieditper']))
	{
		$headid = $_POST['headid'];
		$cons_name = _encrypt($_POST['cons_name'],$secret);
		$cons_midname = _encrypt($_POST['cons_midname'],$secret);
		$cons_lname = _encrypt($_POST['cons_lname'],$secret);
		$editconsadd = _encrypt($_POST['editconsadd'],$secret);
		$cons_age = $_POST['cons_age'];

		$sql = "update constituents set cons_name='$cons_name', cons_midname='$cons_midname', cons_lname='$cons_lname', cons_age='$cons_age', cons_add='$editconsadd' where cons_id='$headid'";
		$result = mysqli_query($con, $sql);
		if($result)
	{
		echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully updated",


				},
				function()
				{
				  window.location.href = "editcons.php";
				}
				)</script>';
	}

	}
}






function conedrem()
{
	global $con;
	if(isset($_POST['conedrem'])){
 $headid = $_POST['ffammem'];


	$sql = "delete from constituents where cons_id = '$headid'";
	$result = mysqli_query($con, $sql);
	if($result)
	{
		echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully removed",


				},
				function()
				{
				  window.location.href = "editcons.php";
				}
				)</script>';
	}
}

}



function conshead()
{
	global $con;
	if(isset($_POST['conshead'])){
 $headid = $_POST['ffammem'];
		$user = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

		$uquery = $con->query($user);
		while($rows = $uquery->fetch_assoc()){


		$uid = $rows['user_id'];

	$sql = "update constituents set cons_stat='1', cons_fid='$headid', volunteer_id='$uid' where cons_id = '$headid'";
 }
	$result = mysqli_query($con, $sql);
	if($result)
	{
		echo '<script>
				swal(
				{
					type: "success",
					title: "Successfully updated",


				},
				function()
				{
				  window.location.href = "family.php";
				}
				)</script>';
	}
}

}

function activeeva()
{
	global $con;
	if(isset($_POST['newfamact'])){

		$fidfam = $_POST['fidfam'];
		$evacenter = $_POST['evacenter'];

		$sql = "
		UPDATE constituents cons
		LEFT JOIN evacuees ev on ev.cons_id=cons.cons_id
		LEFT JOIN evacuations eva on eva.eva_id=ev.eva_id
		set cons_stat=0 WHERE cons_stat=2 and eva.eva_id='$evacenter' and cons.cons_fid='$fidfam'";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				$dlt = "UPDATE evacuees set stat_id=1 where eva_id='$evacenter' and cons_fid='$fidfam'";
				$instrs = mysqli_query($con, $dlt);

				echo '<script>
				swal(
				{
					type: "success",
					title: "Success",
					timer: 2000,
					showConfirmButton: false

				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';

				}



	}
}


function activeindi()
{
	global $con;
	if(isset($_POST['activeindi'])){

		$fidfam = $_POST['fidfam'];
		$evacenter = $_POST['evacenter'];

		$sql = "
		UPDATE constituents cons
		LEFT JOIN evacuees ev on ev.cons_id=cons.cons_id
		LEFT JOIN evacuations eva on eva.eva_id=ev.eva_id
		set cons_stat=0 WHERE cons_stat=2 and eva.eva_id='$evacenter' and cons.cons_id='$fidfam'";
		$instr = mysqli_query($con, $sql);
		$instr;
				if($instr)
				{

				$dlt = "UPDATE evacuees set stat_id=1 where eva_id='$evacenter' and cons_id='$fidfam'";
				$instrs = mysqli_query($con, $dlt);
				echo '<script>
				swal(
				{
					type: "success",
					title: "Success",
					timer: 2000,
					showConfirmButton: false

				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';


				}



	}
}

?>