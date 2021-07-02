<?php

$con=mysqli_connect("localhost", "u712261449_evacuati", "rodny123");
mysqli_select_db($con,"u712261449_evacuationcent");

			$brgy=$_GET['brgy'];

			if($brgy!="")
			{
		$result = mysqli_query($con, "select * from evacuations where b_id=$brgy");
		echo '<label class="col-form-label">Evacuation center:</label><br>';
		echo "<select class='form-control'  name='evaid' required>
		<option value=''>- Select Evacuation Center-</option>"
		;

				while ($row = mysqli_fetch_array($result))
				{

				echo "

				<option value=".$row['eva_id'].">".$row['evacuation_name']."</option>

			";

				}

		echo "

		</select>";


			}
			else
			{

			}









?>