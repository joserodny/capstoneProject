


<div class="modal fade bs-example-modal-lg" id="edit_<?php echo $row['cons_fid']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myLargeModalLabel">Evacuees</h4>
            </div>
            <div class="modal-body text-center">
                <h3>Is this person and his family members are already at designated evacuation area</h3>
                <br>
                <h4>Select Disaster First</h4>

                 <form method="POST" action="edit.php">
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






 <?php

date_default_timezone_set("Asia/Manila");
            $sql1 = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";
            $id = $row['cons_id'];
            $query1 = $con->query($sql1);
            while($row = $query1->fetch_assoc())
            {

                $rid = $row['r_id'];
                $pid = $row['p_id'];
                $cid = $row['c_id'];
                $bids = $row['b_id'];
                $evaid = $row['eva_id'];

                        $result1 = mysqli_query($con, "select * from constituents where cons_fid='$id'");
            }
                    while ($row = mysqli_fetch_assoc($result1)) :


            ?>




                <input type="text" style="display: none;" name="id"  value="<?php echo $row['cons_fid']; ?>">
                <input type="text" style="display: none;" name="cons_id[]"  value="<?php echo $row['cons_id']; ?>">
                <input type="text" style="display: none;" name="cons_fid[]"  value="<?php echo $row['cons_fid']; ?>">
                <input type="text" style="display: none;" name="r_id[]"  value="<?php echo $rid; ?>">
                <input type="text" style="display: none;" name="p_id[]"  value="<?php echo $pid; ?>">
                <input type="text" style="display: none;" name="c_id[]"  value="<?php echo $cid; ?>">
                <input type="text" style="display: none;" name="b_id[]"  value="<?php echo $bids; ?>">
                <input type="text" style="display: none;" name="eva_id[]"  value="<?php echo $evaid; ?>">
                <input type="text" style="display: none;" name="stat_id[]"  value="0">
                <input type="text" style="display: none;" name="eva_date[]"  value="<?php echo date('Y-m-d'); ?>">

            <?php endwhile; ?>


            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                <button type="submit" class="btn btn-success waves-effect text-left" name="insert"><span class="glyphicon glyphicon-check"></span>&nbsp;Yes</button>
            </div>
                    </form>
        </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>


<!-- view -->





