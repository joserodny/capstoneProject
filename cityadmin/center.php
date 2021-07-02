<script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Evacuation Center:&nbsp;&nbsp;<?php echo $row['center']; ?></h4>
      </div>
            <div class="modal-body text-center">



			<form name="" method="POST" action="">


            <input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
            <div class="form-group">
						<label class="col-form-label">Evacuation Center:</label><br>
						<input type="text" class="form-control" name="center" value="<?php echo $row['center']; ?>" placeholder="" required />
					</div>


            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" href="#" name="upnamecenter" class="btn btn-success" ><span class="glyphicon glyphicon-check"></span>Update</button>
            </div>
					</form>

			</div>
        </div>
    </div>
</div>
<?php centerup(); ?>