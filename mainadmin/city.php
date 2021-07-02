<?php

$con=mysqli_connect("localhost", "u712261449_evacuati", "rodny123");
mysqli_select_db($con,"u712261449_evacuationcent");

			$region=$_GET['region'];

			if($region!="")
			{
		$result = mysqli_query($con, "select * from province where r_id=$region");
		echo '<label class="col-form-label">Province:</label><br>';
		echo "<select class='form-control'  name='province' required>
		<option value=''>- Select Province -</option>
		";

				while ($row = mysqli_fetch_array($result))
				{



				echo "

				<option value=".$row['p_id'].">".$row['province_name']."</option>

			";

				}

		echo "

		</select>";


			}
			else
			{

			}









?>