
<div class="modal fade"  id="fmem_<?php echo $row['cons_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

         <h4 class="modal-title">Info</h4>
      </div>
      <div class="modal-body">

	  <form action="" method="POST" enctype="multipart/form-data">
      <input type="text" style="display: none;" value="<?php echo $row['cons_id']; ?>" name="headid">
				 <div class="form-group">
				 <label class="col-form-label">First name:</label><br>
				 <input type="text" class="form-control" name="cons_name" value="<?php   $secret = '474MaXCKBtASxDT6hgyU067THgqmnB=='; echo _decrypt($row['cons_name'], $secret); ?> " pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Middle name:</label><br>
				 <input type="text" class="form-control" name="cons_midname" value="<?php   $secret = '474MaXCKBtASxDT6hgyU067THgqmnB=='; echo _decrypt($row['cons_midname'], $secret); ?> " pattern="[a-zA-Z ]*$" title="use letters only" />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Last name:</label><br>
				 <input type="text" class="form-control" name="cons_lname" value="<?php   $secret = '474MaXCKBtASxDT6hgyU067THgqmnB=='; echo _decrypt($row['cons_lname'], $secret); ?> " pattern="[a-zA-Z ]*$" title="use letters only" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Age:</label><br>
				 <input type="text"  maxlength="2" class="form-control" value="<?php echo $row['cons_age']; ?>" name="cons_age" onkeyup="numbers(this)" required />
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Gender:</label><br>
                 <h5><?php echo $row['cons_gender']; ?></h5>

				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Street Add:</label><br>
				 <h5><?php   $secret = '474MaXCKBtASxDT6hgyU067THgqmnB=='; echo _decrypt($row['cons_add'], $secret); ?></h5>
				 </div>

		<div class="modal-footer">

        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">Cancel</button>
		<input type="submit" class="btn btn-primary" name="constiedit" value="Update">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php fmemedit(); ?>


<div class="modal fade"  id="fmemrem_<?php echo $row['cons_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-body text-center">

	  <form action="" method="POST" enctype="multipart/form-data">
	  <input type="text" style="display: none;" value="<?php echo $row['cons_id']; ?>" name="ffammem">
	  <br>
	  <br>
				 <div class="form-group">
                     <h3>Are you sure you want to remove this person ?</h3>
				 </div>



		<div class="modal-footer">
        <button type="button" class="btn btn-secondary float-left" data-toggle="modal" data-dismiss="modal">No</button>
		<input type="submit" class="btn btn-primary" name="fmemremove" value="Yes">
			  </div>
			</form>
		</div>
     </div>
  </div>
</div>
<?php fmemremove(); ?>