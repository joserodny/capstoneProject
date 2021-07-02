<!-- view -->
<div class="modal fade" id="edit_<?php echo $row['missing_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Missing Person</h4>
      </div>
            <div class="modal-body text-center">

			<form method="POST" action="updatemissing.php">
				<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['missing_id']; ?>">


				 <div class="form-group">

				 <center><?php echo "<img src='../missingrescuedimage/".$row['image']."' width='320' height='280'>" ?></center>
				 </div>



				  <div class="form-group">
				 <label class="col-form-label">Full Name:</label>
				<?php echo _decrypt($row['name'],$secret);?>&nbsp;<?php echo _decrypt($row['midname'],$secret);?>&nbsp;<?php echo _decrypt($row['lastname'],$secret);?>
				 <br>

				 <label class="col-form-label">Age:</label>
				 <?php echo $row['age'];?> <br>

				 <label class="col-form-label">Gender:</label>
				 <?php echo $row['gender'];?> <br>
				 <label class="col-form-label">Relative contact #:</label>
				 <?php echo _decrypt($row['contact'],$secret);?>
				 </div>
				  <div class="form-group ">
				   <label class="col-form-label">Description:</label>
				   <br>
				    <?php echo $row['description'];?>
				  </div>




            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Close</button>

            </div>
					</form>

			</div>
        </div>
    </div>
</div>

<div class="modal fade" id="upd_<?php echo $row['missing_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Missing Person</h4>
      </div>
            <div class="modal-body text-center">

			<form method="POST" action="">
				<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['missing_id']; ?>">


				<div class="form-group"><h3>Is this missing person have been found ?</h3></div>

				<div class="form-group">
				<label class="col-form-label">Details</label>
				<div class="form-group">
				 <label class="col-form-label">Full Name:</label>
				<?php echo _decrypt($row['name'],$secret);?>&nbsp;<?php echo _decrypt($row['midname'],$secret);?>&nbsp;<?php echo _decrypt($row['lastname'],$secret);?>
				 <br>

				 <label class="col-form-label">Age:</label>
				 <?php echo $row['age'];?> <br>

				 <label class="col-form-label">Gender:</label>
				 <?php echo $row['gender'];?> <br>
				 <label class="col-form-label">Relative contact #:</label>
				 <?php echo _decrypt($row['contact'],$secret);?>
				 </div>
				  <div class="form-group ">
				   <label class="col-form-label">Description:</label>
				   <br>
				    <?php echo $row['description'];?>
				  </div>

				  </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="updmissing" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Yes</button>
            </div>
					</form>
       	</div>
        </div>
    </div>
</div>
<?php uptmissing(); ?>


<div class="modal fade" id="edit_<?php echo $row['rescued_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Rescued Person</h4>
      </div>
            <div class="modal-body text-center">

			<form method="POST" action="edit.php">
				<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['missing_id']; ?>">


				 <div class="form-group ">

				 <center><?php echo "<img src='../missingrescuedimage/".$row['image']."' width='320' height='280'>" ?></center>
				 </div>


				 <div class="form-group">
				 <label class="col-form-label">Full Name:</label>
				 <?php echo _decrypt($row['name'],$secret);?>&nbsp<?php echo _decrypt($row['lastname'],$secret);?>
				 </div>



				 <div class="form-group">
				 <label class="col-form-label">Age:</label>
				 <?php echo $row['age'];?>
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Gender:</label>
				 <?php echo $row['gender'];?>
				 </div>


				 <div class="form-group ">
				   <label class="col-form-label">Description:</label>
				   <br>
				    <?php echo $row['description'];?>
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







<div class="modal fade" id="updres_<?php echo $row['rescued_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Rescued Person</h4>
      </div>
            <div class="modal-body text-center">

			<form method="POST" action="">
				<input type="hidden" class="form-control" name="rescued_id" value="<?php echo $row['rescued_id']; ?>">


				<div class="form-group"><h3>Is this rescued person have been found ?</h3></div>

				<div class="form-group">
				<label class="col-form-label">Details</label>
				<div class="form-group">
				 <label class="col-form-label">Full Name:</label>
				<?php echo _decrypt($row['name'],$secret);?>&nbsp;<?php echo _decrypt($row['midname'],$secret);?>&nbsp;<?php echo _decrypt($row['lastname'],$secret);?>
				 <br>

				 <label class="col-form-label">Age:</label>
				 <?php echo $row['age'];?> <br>

				 <label class="col-form-label">Gender:</label>
				 <?php echo $row['gender'];?> <br>
				</div>
				  <div class="form-group ">
				   <label class="col-form-label">Description:</label>
				   <br>
				    <?php echo $row['description'];?>
				  </div>

				  </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="uptrescued" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Yes</button>
            </div>
					</form>
       	</div>
        </div>
    </div>
</div>
<?php uptrescued(); ?>