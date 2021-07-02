<div class="modal fade" id="indi_<?php echo $row['cons_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myLargeModalLabel">Evacuees</h4>
            </div>
            <div class="modal-body text-center">


                     <h3 align="center" >This person is inside in designated evacution center ? </h3><br>
                     <h4>Select Disaster First</h4>

			<form method="POST" action="evaindi.php">
            <button class="btn btn-primary btn-rounded waves-effect waves-light" type="button" id="show"><span class="btn-label"><i class="wi wi-thunderstorm"></i></span>Typhoon</button>

&nbsp;&nbsp;&nbsp;
<button class="btn btn-info btn-rounded waves-effect waves-light" type="button" id="hide"><span class="btn-label"><i class="wi wi-small-craft-advisory"></i></span>Other disaster</button>

<div>&nbsp;</div>
      <div class="form-group " id="disasters" style="display:none; text-align: center;">

           <div class="col-lg-4 col-lg-offset-4">
               <div class="form-group">
               <select name="disaster" id="saster"  class="form-control" required>
                 <option value="">- Select Disaster -</option>
               <?php disasters(); ?>
               </select>
           </div>
           </div><!-- /.col -->
   </div><br><br><!-- /.row -->

<div class="form-group" id="reply" style="display:none;">
       <div class="row ">
           <div class="col-md-6">
               <div class="form-group">
               <select name="disaster" id="dis" class="form-control">

               <?php disaster(); ?>
               </select>
           </div>
           </div><!-- /.col -->
           <div class="col-md-6" >
               <div class="form-group">
               <select class="form-control" name="typname" id="mySelect" required>
               <option value="">- Select Typhoon name -</option>
               <?php activetyphoon() ?>
               </select>
           </div>
           </div><!-- /.col -->
          </div><!-- /.row -->
    </div><!-- /.row -->
				<input type="text" style="display: none;" class="form-control" name="consfid" value="<?php echo $row['cons_fid']; ?>">
                <input type="text" style="display: none;" class="form-control" name="consid" value="<?php echo $row['cons_id']; ?>">
                <input type="text" style="display: none;" name="stat_id"  value="0">
                <input type="text" style="display: none;" name="eva_date"  value="<?php date_default_timezone_set("Asia/Manila"); echo date('Y-m-d'); ?>">

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Yes</button>
            </div>
					</form>

			</div>
        </div>
    </div>
</div>
