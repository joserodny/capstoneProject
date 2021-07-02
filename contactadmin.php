<div class="modal fade" id="contactadmin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     <div class="modal-header">
		 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
         <h4 class="modal-title">Contact Admin</h4>
      </div>
	  <form method="post">
      <div class="modal-body">
      
		<div class="section-title">
		
		 <div class="form-group">
		  <label class="col-form-label">Email:</label><br>
     <input class="form-control" type="email" name="email" placeholder="example@gmail.com" required>
		</div>	
		
		<div class="form-group">
		  <label class="col-form-label">Message:</label><br>
     <textarea  rows="4" class="form-control" type="text" name="message" placeholder="Your Message" required></textarea >
		</div>	
	<div class="text-right">
						<button type="button" class="btn btn-secondary float-left btn-rounded" data-toggle="modal" data-dismiss="modal">Cancel</button>
						<input type="submit" class="btn btn-primary btn-rounded" name="submit" value="Submit">
			</div>
		</div>
		
		</div>
		</form>
		<?php 
			
				
				global $con;
				if(isset($_POST['submit']))
				{
					$msg = 'Message:' . $_POST['message'] . "\n"; 
					$email = $_POST['email'];
					$sql_e = "select * from users where email='".$email."'";

					$res_e = mysqli_query($con, $sql_e);


					if(mysqli_num_rows($res_e) > 0)
					{

					$sql = "SELECT * FROM users where email = '". $email ."'";


		$query = $con->query($sql);
		while($row = $query->fetch_assoc())
		{
				
				$useremail = $row['email'];
					
				if($email == $useremail)
					{
					mail('evacuationcentermonitoring@gmail.com', 'Contact admin', $msg, $email);
					header('location: login.php');	
							
					}
					}
		}
					
				}
			?>
    </div>
  </div>
</div>