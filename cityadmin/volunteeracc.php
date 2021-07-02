<!-- view -->
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Update Account</h4>
      </div>
            <div class="modal-body text-center">

			<form method="POST" action="edit.php">

				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">

				 <div class="form-group">
				 <label class="col-form-label">Evacuation Center:</label>
				 <?php echo $row['center'];?>
				 </div>

				 <div class="form-group">
				 <label class="col-form-label">Full ame:</label>
				 <?php echo $row['f']; ?> &nbsp;  <?php echo $row['m']; ?> &nbsp;  <?php echo $row['l']; ?> 

				 </div>

				  <div class="form-group">
				 <label class="col-form-label">Username:</label>
				 <?php echo $row['user'];?>
					</div>


					 <div class="form-group">
				 <label class="col-form-label">Contact:</label>
				  <input type="text" class="form-control" name="num" value="<?php echo $row['num'];?>" pattern="\d{11}" maxlength="11" onkeyup="numbers(this)" title="a mobile number consists of 11 digits" required />

				 </div>


				 <div class="form-group">
				 <label class="col-form-label">Generate new Password:</label>
				<div class="input-group">
				  <input type="password" name="pass" id="password-field" class="form-control" rel="gp" data-size="12" data-character-set="0-9">
				  <span class="input-group-btn"><button type="button" class="btn btn-default getNewPass"><span class="fa fa-refresh"></span></button></span>
				  </div>
				</div>





            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" href="#" name="edit" class="btn btn-success" ><span class="glyphicon glyphicon-check"></span> Update</button>
            </div>
					</form>

			</div>
        </div>
    </div>
</div>

<div class="modal fade" id="dis_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Deactivated Account</h4>
			</div>
			<div class="modal-body text-center">



				<form name="" method="POST" action="">

					<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">





					<div class="form-group">
						<h4>Are you sure, Do you want to Deactivated this account ?</h4>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
						<button type="submit" href="#" name="dis" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Yes</button>
					</div>

				</form>

			</div>
		</div>
	</div>
</div>
<?php dis(); ?>

<div class="modal fade" id="act_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Activated Account</h4>
			</div>
			<div class="modal-body text-center">



				<form name="" method="POST" action="">

					<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">





					<div class="form-group">
						<h4>Are you sure, Do you want to Activated this account ?</h4>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
						<button type="submit" href="#" name="act" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Yes</button>
					</div>

				</form>

			</div>
		</div>
	</div>
</div>
<?php act(); ?>

<script>
	function letters(input)
	{
		var regex = /[^a-z]/gi;
		input.value = input.value.replace(regex, "");
	}
	function numbers(input)
	{

		var regex = /[^0-9]/g;
		input.value = input.value.replace(regex, "");
	}
</script>

<script>

// Generate a password string
function randString(id){
  var dataSet = $(id).attr('data-character-set').split(',');
  var possible = '';
  if($.inArray('a-z', dataSet) >= 0){
    possible += 'abcdefghijklmnopqrstuvwxyz';
  }
  if($.inArray('A-Z', dataSet) >= 0){
    possible += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  }
  if($.inArray('0-9', dataSet) >= 0){
    possible += '0123456789';
  }
  if($.inArray('#', dataSet) >= 0){
    possible += '![]{}()%&*$#^<>~@|';
  }
  var text = '';
  for(var i=0; i < $(id).attr('data-size'); i++) {
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }
  return text;
}



// Create a new password
$(".getNewPass").click(function(){
  var field = $(this).closest('div').find('input[rel="gp"]');
  field.val(randString(field));
});




</script>