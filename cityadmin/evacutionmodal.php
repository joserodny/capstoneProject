<div class="modal fade" id="edit_<?php echo $row['evaid']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Evacuation Center:&nbsp;&nbsp;<?php echo $row['evacuationcenter']; ?></h4>
      </div>
            <div class="modal-body text-center">



			<form name="" method="POST" action="">

				<input type="hidden" class="form-control" name="evaid" value="<?php echo $row['evaid']; ?>">
                <input type="hidden" class="form-control" name="evaconsid" value="<?php echo $row['evaconsid']; ?>">
                <input type="hidden" class="form-control" name="idperson" value="<?php echo $row['idperson']; ?>">
				 <div class="form-group">

				<h4>Are you sure this evacuation center is not active anymore<br> and would you like to save the data for future analysis?</h4>
				 </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" href="#" name="resetevacuation" class="btn btn-success" ><span class="glyphicon glyphicon-check"></span>Yes</button>
            </div>
					</form>

			</div>
        </div>
    </div>
</div>
<?php resetevacuation(); ?>