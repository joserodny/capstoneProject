<!-- Edit -->
<div class="modal fade" id="edit_<?php echo $row['misid']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
		 <h5 class="modal-title" id="exampleModalLabel">Missing Person</h5>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
		
      </div>
            <div class="modal-body">
			
			<form method="POST">
				<input type="hidden" class="form-control" name="missing_id" value="<?php echo $row['misid']; ?>">
				
				
				 <div class="form-group">
				 
				 <center><?php echo "<img src='missingrescuedimage/".$row['img']."' width='320' height='280'>" ?></center>
				 </div>
				 
				 
				 <div class="form-group">
				 <label class="col-form-label">Full Name:</label>
				<?php echo _decrypt($row['fname'],$secret);?>&nbsp;<?php echo _decrypt($row['midname'],$secret);?>&nbsp;<?php echo _decrypt($row['lname'],$secret);?> 
				 <br>
				 
				 <label class="col-form-label">Age:</label>
				 <?php echo $row['ages'];?> <br>
				 
				 <label class="col-form-label">Gender:</label>
				 <?php echo $row['genders'];?> <br>
				 <label class="col-form-label">City:</label>
				 <?php echo $row['citys'];?>
				 </div>	
				  <div class="form-group ">
				   <label class="col-form-label">Description:</label>
				   <br>
				    <?php echo $row['descript'];?>
				  </div>
				  
				  <br>
				 <div class="form-group">
				 <p>If anyone has information on this missing person Please contact your local geverment <br><label class="col-form-label"><?php echo $row['citynum'];?></label></p>
				 
				  
				
				 </div>
                </form>
				
			</div>
        </div>
    </div>
</div>





