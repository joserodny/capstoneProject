<!--/.==========  End volunteer account =========== -->

<!--/.==========  add missing person =========== -->

<div class="modal fade" id="missing" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
		 <h5 class="modal-title" id="exampleModalLabel"><b>Add Missing Person</b></h5>
      </div>
      <div class="modal-body">

	  <form action="" method="POST" enctype="multipart/form-data">


				 <div class="form-group">
				 <h3 class="box-title">Add Image</h3>
                 <input width="160" height="90" type="file" id="input-file-now-custom-1" class="dropify" accept="image/*" name="image"  />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Name:</label><br>
				 <input type="text" class="form-control" name="mname" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Middle Name:</label><br>
				 <input type="text" class="form-control" name="mmid" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Last Name:</label><br>
				 <input type="text" class="form-control" name="mlast" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>


				 <div class="form-group">
				 <label class="col-form-label">Age:</label><br>
				 <input type="text" maxlength="2" class="form-control" name="mage" onkeyup="numbers(this)" />
				 </div>



				 <div class="form-group">
				 <label class="col-form-label">Gender:</label><br>
				 <select class="form-control"  name="mgender" required>
				 <option value="">Select</option>
				 <option>Male</option>
				 <option>Female</option>
				 </select>
				 </div>

				 <div class="form-group">
				 <label class="control-label">Guardian Contact:</label>
				 <input type="text" class="form-control" maxlength="11" placeholder="09xxxxxxxxx" name="gnum" onkeyup="numbers(this)" required />
				 </div>

				<div class="form-group">
						<label class="control-label">Description:</label>
						<div class="form-group">
							<textarea class="form-control" rows="4" name="descrip" placeholder="Description..................." required></textarea>
						</div>
				</div>



		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="missingperson" value="Add">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php missing(); ?>

<!--/.==========  end missing person =========== -->



<!--/.==========  add missing person =========== -->


<div class="modal fade" id="rescued" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Add Rescued Person</h4>
			</div>
			<div class="modal-body">

				<form action="" method="POST" enctype="multipart/form-data">


					<div class="form-group">
						<h3 class="box-title">Add Image</h3>
						<input width="160" height="90" type="file" id="input-file-now-custom-1" class="dropify" accept="image/x-png,image/gif,image/jpeg" name="image" />
					</div>

					<div class="form-group">
						<label class="col-form-label">Name:</label><br>
						<input type="text" class="form-control" name="mname" placeholder="" pattern="[a-zA-Z ]*$" title="use letters only" />
					</div>

					<div class="form-group">
						<label class="col-form-label">Middle Name:</label><br>
						<input type="text" class="form-control" name="mmid" placeholder="" pattern="[a-zA-Z ]*$" title="use letters only" />
					</div>

					<div class="form-group">
						<label class="col-form-label">Last Name:</label><br>
						<input type="text" class="form-control" name="mlast" placeholder="" pattern="[a-zA-Z ]*$" title="use letters only" />
					</div>


					<div class="form-group">
						<label class="col-form-label">Age:</label><br>
						<input type="text" maxlength="2" class="form-control" name="mage" placeholder="" onkeyup="numbers(this)" />
					</div>



					<div class="form-group">
						<label class="col-form-label">Gender:</label><br>
						<select class="form-control" name="mgender" required>
							<option value="">Select</option>
							<option>Male</option>
							<option>Female</option>
						</select>
					</div>

					<div class="form-group">
						<label class="control-label">Description:</label>
						<div class="form-group">
							<textarea class="form-control" rows="4" name="desc" placeholder="Description..................." required></textarea>
						</div>
					</div>



					<div class="modal-footer">

						<button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary" name="rescued" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php rescued(); ?>
<!--/.==========  end missing person =========== -->



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
				<label class="col-form-label">Password:</label><br>
				<input type="password" class="form-control" name="cpass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
				</div>

				<div class="form-group">
				<label class="col-form-label">Confirm Password:</label><br>
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
<?php endwhile; upacc(); ?>

<div class="modal fade" id="fhead" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Add Head of family</h4>
      </div>
      <div class="modal-body">

	  <form action="" method="POST" enctype="multipart/form-data">

				 <div class="form-group">
				 <label class="col-form-label">First name:</label><br>
				 <input type="text" class="form-control" name="cons_name" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Middle name:</label><br>
				 <input type="text" class="form-control" name="cons_midname" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Last name:</label><br>
				 <input type="text" class="form-control" name="cons_lname" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Age:</label><br>
				 <input type="text"  maxlength="2" class="form-control" name="cons_age" onkeyup="numbers(this)" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Gender:</label><br>
				 <select class="form-control"  name="cons_gender" required>
				 <option value="">Select</option>
				 <option>Male</option>
				 <option>Female</option>
				 </select>
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Street Add:</label><br>
				 <input type="text" class="form-control" name="cons_add"  pattern="[a-zA-Z0-9 ]+" title="no special characters" required />
				 </div>

		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="familyhead" value="Add">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php familyhead(); ?>

<div class="modal fade" id="individual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Add Individual</h4>
      </div>
      <div class="modal-body">

	  <form action="" method="POST" enctype="multipart/form-data">

				 <div class="form-group">
				 <label class="col-form-label">First name:</label><br>
				 <input type="text" class="form-control" name="cons_name" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Middle name:</label><br>
				 <input type="text" class="form-control" name="cons_midname" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Last name:</label><br>
				 <input type="text" class="form-control" name="cons_lname" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Age:</label><br>
				 <input type="text"  maxlength="2" class="form-control" name="cons_age" onkeyup="numbers(this)" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Gender:</label><br>
				 <select class="form-control"  name="cons_gender" required>
				 <option value="">Select</option>
				 <option>Male</option>
				 <option>Female</option>
				 </select>
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Street Add:</label><br>
				 <input type="text" class="form-control" name="cons_add"  pattern="[a-zA-Z0-9 ]+" title="no special characters" required />
				 </div>

		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="addindividual" value="Add">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>





<?php individual(); ?>






<div class="modal fade" id="newfam" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Add family member</h4>
      </div>
      <div class="modal-body">

	  <form action="" method="POST" enctype="multipart/form-data">

				 <div class="form-group">
				 <label class="col-form-label">First name:</label><br>
				 <input type="text" class="form-control" name="cons_name" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Middle name:</label><br>
				 <input type="text" class="form-control" name="cons_midname" pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Last name:</label><br>
				 <input type="text" class="form-control" name="cons_lname" pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Age:</label><br>
				 <input type="text"  maxlength="2" class="form-control" name="cons_age" onkeyup="numbers(this)" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Gender:</label><br>
				 <select class="form-control"  name="cons_gender" required>
				 <option value="">Select</option>
				 <option>Male</option>
				 <option>Female</option>
				 </select>
				 </div>



		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="newfam" value="Add">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php newfamem(); ?>




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