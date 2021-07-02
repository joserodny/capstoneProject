<!-- view -->

<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Update Password</h4>
			</div>
			<div class="modal-body">

				<form method="POST" action="edit.php">

					<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">

					<div class="form-group">
						<label class="col-form-label">City:</label>
						<?php echo $row['city']; ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">Name:</label>
						<?php echo $row['name']; ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">Username:</label>
						<?php echo $row['user']; ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">New Password:</label>
						<input type="password" class="form-control" name="pass" required />
					</div>



					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
						<button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="missing_<?php echo $row['misid']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Missing Person</h4>
			</div>
			<div class="modal-body" style="text-align:center;">

				<form method="POST" action="">
					<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['missing_id']; ?>">


					<div class="form-group">

						<center><?php echo "<img src='../missingrescuedimage/" . $row['img'] . "' width='320' height='280'>" ?></center>
					</div>


					<div class="form-group">
						<label class="col-form-label">Full Name:</label>
						<?php echo _decrypt($row['fname'], $secret); ?>&nbsp<?php echo _decrypt($row['midname'], $secret); ?> &nbsp<?php echo _decrypt($row['lname'], $secret); ?>
						<br>
						<label class="col-form-label">Age:</label>
						<?php echo $row['ages']; ?>
						<br>
						<label class="col-form-label">Gender:</label>
						<?php echo $row['genders']; ?>
						<br>
						<label class="col-form-label">Relative contact#:</label>
						<?php echo _decrypt($row['num'], $secret); ?>
					</div>
					<div class="form-group ">
						<label class="col-form-label">City:</label>
						<br>
						<?php echo $row['citys']; ?><br>
						<?php echo $row['citynum']; ?>
					</div>

					<div class="form-group ">
						<label class="col-form-label">Description:</label>
						<br>
						<?php echo $row['descript']; ?>
					</div>




				</form>

			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="rescued_<?php echo $row['rescued_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Rescued Person</h4>
			</div>
			<div class="modal-body" style="text-align:center;">

				<form method="POST" action="">
					<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['rescued_id']; ?>">


					<div class="form-group">

						<center><?php echo "<img src='../missingrescuedimage/" . $row['image'] . "' width='320' height='280'>" ?></center>
					</div>


					<div class="form-group">
						<label class="col-form-label">Full Name:</label>
						<?php echo _decrypt($row['name'], $secret); ?>&nbsp<?php echo _decrypt($row['midname'], $secret); ?>&nbsp<?php echo _decrypt($row['lastname'], $secret); ?>
						<br>
						<label class="col-form-label">Age:</label>
						<?php echo $row['age']; ?>
						<br>
						<label class="col-form-label">Gender:</label>
						<?php echo $row['gender']; ?>
						<br>
						<label class="col-form-label">City:</label>
						<?php echo $row['contact']; ?>
					</div>
					<div class="form-group ">
						<label class="col-form-label">Description:</label>
						<br>
						<?php echo $row['description']; ?>
					</div>




				</form>

			</div>
		</div>
	</div>
</div>