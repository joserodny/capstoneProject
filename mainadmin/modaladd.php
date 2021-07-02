<?php

$con = new mysqli('localhost', 'u712261449_evacuati', 'rodny123', 'u712261449_evacuationcent');
if ($con->connect_error) {
	die("Connection failed: " . $con->connect_error);
} else
	$query = "select * from region order by region_name asc";
$result = $con->query($query);
?>

<!-- =========== MODAL =========== -->

<!-- =========== / MODAL Region=========== -->


<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->

<div class="modal fade" id="Region" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add region</h4>
			</div>
			<div class="modal-body">

				<form action="index.php" method="POST" enctype="multipart/form-data">

					<div class="form-group">
						<label class="col-form-label">Region:</label><br>
						<input type="text" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" name="region" autocomplete="off" required />
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="postR" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php region(); ?>
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- PRoooovinceee-->

<div class="modal fade" id="province" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add province</h4>
			</div>
			<div class="modal-body">
				<form action="index.php" method="POST" enctype="multipart/form-data">

					<div class="form-group">
						<label class="col-form-label">Region:</label><br>
						<select class="form-control" name="region" required="">
							<option value="">- Select Region -</option>
							<?php listregion(); ?>
						</select>
					</div>
					<div class="form-group">
						<label class="col-form-label">Province:</label><br>
						<input type="text" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" name="province" autocomplete="off" required />
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="postP" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php province(); ?>
<!--/.==========  Citttyyyy =========== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->
<!-- ========================================================================== -->


<div class="modal fade" id="mcity" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add City/Municipalities </h4>
			</div>


			<div class="modal-body">

				<form action="index.php" method="POST" enctype="multipart/form-data">

					<div class="form-group">
						<label class="col-form-label">Region:</label><br>
						<select id="idregion" class="form-control" name="region" onChange="change_region()" required="">
							<option value="">- Select Region -</option>
							<?php listregion(); ?>
						</select>
					</div>

					<div id="idprov" class="form-group">
						<label class="col-form-label">Province:</label><br>
						<select class="form-control" name="province" required="">
							<option value="">- Select Province -</option>
						</select>
					</div>

					<div class="form-group">
						<label class="col-form-label">City/Municipalities :</label><br>
						<input type="text" class="form-control" name="city" autocomplete="off" required />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="postC" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php Citiess(); ?>



<!-- ================================admin users============================== -->

<script type="text/javascript">
	function get_username() {
		var name = $("#name").val();

		if (name != "") {
			$.ajax({
				type: 'post',
				url: 'do_signup.php',
				data: {
					get_username: name

				},
				success: function(response) {
					$("#username").css({
						"display": "block"
					});
					$("#username").html("UserName : " + response);
					$("#username_value").val(response);
				}
			});
		}
	}
</script>

<div class="modal fade" id="cityadmin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add City Account</h4>
			</div>


			<div class="modal-body">


				<form action="" method="POST" enctype="multipart/form-data">


					<div class="form-group">
						<label class="col-form-label">Region:</label><br>
						<select name="region" id="country" class="form-control" required>
							<option value="">Select Region</option>
							<?php
							if ($result->num_rows > 0) {
								while ($row = $result->fetch_assoc()) {
									echo '<option value="' . $row['r_id'] . '">' . $row['region_name'] . '</option>';
								}
							} else {
								echo '<option value="">Region not available</option>';
							}
							?>
						</select>
					</div>

					<div class="form-group">
						<label class="col-form-label">Province:</label><br>
						<select id="state" class="form-control" name="province" required>
							<option value="">Select Region first</option>
						</select>
					</div>

					<div class="form-group">
						<label class="col-form-label">City/Municipalities:</label><br>
						<select id="city" class="form-control" name="city" required>
							<option value="">Select Province first</option>
						</select>
					</div>


					<div class="form-group">
						<label class="control-label">Full Name:</label>

						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" name="name" id="name" placeholder="First Name" onblur="get_username();" autocomplete="off" />
								</div>
							</div><!-- /.col -->
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" name="mname" title="use letters only" placeholder="Middle name" autocomplete="off" />
								</div>
							</div><!-- /.col -->
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" name="lname" title="use letters only" placeholder="Last name" required autocomplete="off" />
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div>


					<div class="form-group">
						<label class="col-form-label">Username:</label><br>
						<h4 id="username"></h4>
						<input type="text" style="display: none;" name="username_value" id="username_value">
					</div>

					<div class="form-group">
						<label class="control-label">Email:</label>
						<input type="email" class="form-control" name="cmail" required autocomplete="off" />
					</div>

					<div class="form-group">
						<label class="control-label">Contact:</label>
						<input type="text" class="form-control" name="cnum" title="contact# field that must contain 11 numbers" placeholder="09xxxxxxxxx" pattern="\d{11}" maxlength="11" onkeyup="numbers(this)" title="a mobile number consists of 11 digits" autocomplete="off" required />
					</div>




					<input type="text" style="display: none;" class="form-control" name="cpass" ID="ACCOUNT" MAXLENGTH="16" SIZE="16" />

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="cityacc" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php cityuser(); ?>


<script type="text/javascript">

  function checkForm(form)
  {
    if(form.cname.value == "") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.cname.value)) {
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.cname.focus();
      return false;
    }

    if(form.cpass.value != "" && form.cpass.value == form.conpass.value) {
      if(form.cpass.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.cpass.focus();
        return false;
      }
      if(form.cpass.value == form.cname.value) {
        alert("Error: Password must be different from Username!");
        form.cpass.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.cpass.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.cpass.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.cpass.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.cpass.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.cpass.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.cpass.focus();
        return false;
      }
    } else {
      swal({
            title: "Error",
            text: "Please check that you've entered and confirmed your password!",
            type: "warning",
            confirmButtonText: "Ok"

        });
      form.cpass.focus();
      return false;
    }
}

</script>
<?php
	global $con;
	$result = mysqli_query($con, "SELECT * FROM users WHERE username ='". $_SESSION['username'] ."'");

									while ($row = mysqli_fetch_assoc($result)):

									?>
<div class="modal fade" id="accsetting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Profile</h4>
			</div>


			<div class="modal-body">


				<form action="" method="POST" enctype="multipart/form-data">


					<div class="form-group">
						<label class="control-label">Full Name:</label>

						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" name="name" id="name" placeholder="First Name" value="<?php echo $row['fname']; ?>" autocomplete="off" />
								</div>
							</div><!-- /.col -->
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" name="mname" title="use letters only" placeholder="Middle name" autocomplete="off" value="<?php echo $row['mname']; ?>" />
								</div>
							</div><!-- /.col -->
							<div class="col-md-4">
								<div class="form-group">
									<input type="text" class="form-control" pattern="[a-zA-Z ]*$" name="lname" title="use letters only" placeholder="Last name" required autocomplete="off" value="<?php echo $row['lname']; ?>" />
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div>


					<div class="form-group">
					<input type="text" style="display: none;" class="form-control" name="id" value="<?php echo $row['user_id']; ?>">
						<label class="col-form-label">Username:</label><br>
					<input type="text" class="form-control" name="user" pattern="([a-z0-9]){5,15}" title="Username should only contain lowercase letters and no special characters and space. e.x juan1" value="<?php echo $row['username']; ?>">
					</div>

					<div class="form-group">
						<label class="control-label">Email:</label>
						<input type="email" class="form-control" name="cmail" required autocomplete="off" value="<?php echo $row['email']; ?>" />
					</div>

					<div class="form-group">
						<label class="control-label">Contact:</label>
						<input type="text" class="form-control" name="cnum" title="contact# field that must contain 11 numbers" placeholder="09xxxxxxxxx" pattern="\d{11}" maxlength="11" onkeyup="numbers(this)" title="a mobile number consists of 11 digits" autocomplete="off" value="<?php echo $row['contact']; ?>" required />
					</div>
					
					
					<div class="form-group">
				<label class="col-form-label">Current password:</label><br>
				<input type="password" class="form-control" name="current" required />
				</div>

					<div class="form-group">
				<label class="col-form-label">New password:</label><br>
				<input type="password" class="form-control" name="cpass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
				</div>

				<div class="form-group">
				<label class="col-form-label">Re-type new password:</label><br>
				<input type="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />

				</div>

							<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-success btn-rounded" name="upacc" value="Update account">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
endwhile;
?>
<?php upacc(); ?>



<div class="modal fade" id="disaster" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add Disasters</h4>
			</div>
			<div class="modal-body">

				<form action="index.php" method="POST" enctype="multipart/form-data">

				<div class="form-group">
						<label class="col-form-label">Select Common disaster:</label><br>
						<input type="button" class="btn btn-primary btn-rounded" value="Typhoon" onclick="myFunction()"> &nbsp;
						<input type="button" class="btn btn-primary btn-rounded" value="Floods" onclick="floods()">  &nbsp;
						<input type="button" class="btn btn-primary btn-rounded" value="Earthquakes" onclick="earthquakes()">  &nbsp;
						<input type="button" class="btn btn-primary btn-rounded" value="Landslide" onclick="landslide()">  &nbsp;
					</div>

					<div class="form-group">
						<label class="col-form-label">Disaster:</label><br>
						<input type="text" id="myBtn" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" placeholder="ex. Floods, Typhoon, Fire, " name="disas" autocomplete="off" required />
					</div>


					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="disaster" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php disas(); ?>


<div class="modal fade" id="typhoon" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add Typhoon Name</h4>
			</div>
			<div class="modal-body">

				<form action="" method="POST" enctype="multipart/form-data">

				<div class="form-group">
						<label class="col-form-label">Disaster:</label><br>
						<select name="typ" class="form-control" required>
						<?php disaster(); ?>
						</select>
						</div>

					<div class="form-group">
						<label class="col-form-label">Typhoon name:</label><br>
						<input type="text" class="form-control" pattern="[a-zA-Z ]*$" title="use letters only" name="typhoonname" autocomplete="off" required />
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="typhoon" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php typhoonname(); ?>

<?php
$conn = mysqli_connect("localhost", "u712261449_evacuati", "rodny123", "u712261449_evacuationcent");
if (! empty($_FILES)) {
    // Validating SQL file type by extensions
    if (! in_array(strtolower(pathinfo($_FILES["backup_file"]["name"], PATHINFO_EXTENSION)), array(
        "sql"
    ))) {
        $response = array(
            "type" => "error",
            "message" => "Invalid File Type"
        );
		
		
    } else {
        if (is_uploaded_file($_FILES["backup_file"]["tmp_name"])) {
            move_uploaded_file($_FILES["backup_file"]["tmp_name"], $_FILES["backup_file"]["name"]);
            $response = restoreMysqlDB($_FILES["backup_file"]["name"], $conn);
        }
    }
}

function restoreMysqlDB($filePath, $conn)
{
    $sql = '';
    $error = '';
    
    if (file_exists($filePath)) {
        $lines = file($filePath);
        
        foreach ($lines as $line) {
            
            // Ignoring comments from the SQL script
            if (substr($line, 0, 2) == '--' || $line == '') {
                continue;
            }
            
            $sql .= $line;
            
            if (substr(trim($line), - 1, 1) == ';') {
                $result = mysqli_query($conn, $sql);
                if (! $result) {
                    $error .= mysqli_error($conn) . "\n";
                }
                $sql = '';
            }
        } // end foreach
        
        if ($error) {
            $response = array(
                "type" => "error",
                "message" => $error
            );
        } else {
            $response = array(
                "type" => "success",
                "message" => "Database Restore Completed Successfully."
            );
			echo '
					<script>
						swal(
				{
					type: "success",
					title: "Restore Database Successfully",
					showConfirmButton: false,
					timer: 2500
				},
				function()
				{
				  window.location.href = "index.php";
				}
				)</script>';
        }
        exec('rm ' . $filePath);
    } // end if file exists
    
    return $response;
}

?>

<div class="modal fade" id="backres" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Backup and Restore Database</h4>
			</div>
			<div class="modal-body">

			
				<div class="form-group">
						<label class="col-form-label">Backup:</label><br>
					<a href="backupdb.php">	<button class="btn btn-block btn-success btn-rounded">Backup database</button></a>
						</select>
						</div>
<form method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="col-form-label">Restore</label><br>
						
							<?php
							if (! empty($response)) {
								?>
							<div class="response <?php echo $response["type"]; ?>">
							<?php echo nl2br($response["message"]); ?>
							</div>
							<?php
							}
							?>	
							<label for="input-file-now">Select Database Backup</label>
							
                            <input width="160" height="90" type="file" name="backup_file" id="input-file-now-custom-1" class="dropify " />
							<br>
							  <input type="submit" name="restore" class="btn btn-info pull-right" value="Import" />
                  </div>

				</form>
			</div>
		</div>
	</div>
</div>



<div class="modal fade" id="adminacc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Main Admin account</h4>
			</div>
			<div class="modal-body">


				<form method="post">

					<div class="form-group">
						<label class="col-form-label">username:</label><br>
						<input type="text" class="form-control" pattern="[a-zA-Z0-9 ]+" title="no special characters" name="mainadminacc" autocomplete="off" required />
						<h5>default password: admin</h5>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="mainadminaccset" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php
global $con;
if(isset($_POST['mainadminaccset']))
{
	$mainuser = $_POST['mainadminacc'];
	$sql = "insert into users (username,password, role) values ('$mainuser', '21232f297a57a5a743894a0e4a801fc3', '1')";
	$result = mysqli_query($con, $sql);
	if($result){
		echo '<script>
				swal(
				{
					type: "success",
					title: "successfully created account",


				},
				function()
				{
				  window.location.href = "users.php";
				}
				)</script>';
	}
}
?>


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

<script>
	function randomNumber(len) {
		var randomNumber;
		var n = '';

		for (var count = 0; count < len; count++) {
			randomNumber = Math.floor(Math.random() * 10);
			n += randomNumber.toString();
		}
		return n;
	}

	document.getElementById("ACCOUNT").value = randomNumber(9);
</script>

<script>
function myFunction() {
  document.getElementById("myBtn").value = "Typhoon";

}

function floods() {
  document.getElementById("myBtn").value = "Floods";

}

function earthquakes() {
  document.getElementById("myBtn").value = "Earthquakes";

}

function landslide() {
  document.getElementById("myBtn").value = "Landslide";

}

</script>