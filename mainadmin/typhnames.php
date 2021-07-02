<div class="modal fade" id="edit_<?php echo $row['typhoon_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">

			<div class="modal-body">

				<form action="" method="POST" enctype="multipart/form-data">

					<div class="form-group">
                    <br>
                    <h4>
                    This Typhoon is already outside of Philippine Area of Responsibility ?
                    </h4>
                    <br>
                    </div>

                    <input name="typhoonnamedis" style="display: none;"  value="<?php echo $row['typhoon_id']; ?>">

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">No</button>
						<input type="submit" class="btn btn-danger btn-rounded" name="distyphon" value="Yes">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<?php distyphon(); ?>