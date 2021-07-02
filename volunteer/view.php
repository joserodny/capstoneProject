<!-- view -->
<div class="modal fade" id="edit_<?php echo $row['missing_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

						<center><?php echo "<img src='../missingrescuedimage/" . $row['image'] . "' width='320' height='280'>" ?></center>
					</div>


					<div class="form-group">
						<label class="col-form-label">Full Name:</label>
						<?php echo _decrypt($row['name'], $secret); ?>&nbsp<?php echo _decrypt($row['lastname'], $secret); ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">Age:</label>
						<?php echo $row['age']; ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">Gender:</label>
						<?php echo $row['gender']; ?>
					</div>

					<div class="form-group">
						<label class="col-form-label">Contact:</label>
						<?php echo _decrypt($row['contact'], $secret); ?>
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



<!-- view -->
<div class="modal fade" id="view_<?php echo $row['rescued_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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