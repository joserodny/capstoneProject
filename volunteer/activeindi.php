
<div class="modal fade" id="indi_<?php echo $row['indid']; ?>"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Active evacuees</h4>
      </div>
      <div class="modal-body text-center">

	  <form action="" method="POST" enctype="multipart/form-data">
                           <h3>Is this person leaving the evacuation center now?</h3>

				 <div class="form-group">

                 <input type="text" style="display: none;"  name="fidfam" value="<?php echo $row['indid']; ?>" />
                 <input type="text" style="display: none;"  name="evacenter" value="<?php echo $row['evacuation']; ?>" />
				 </div>





		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="activeindi" value="Yes">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php activeindi(); ?>