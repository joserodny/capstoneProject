<?php

$con=mysqli_connect("localhost", "u712261449_evacuati", "rodny123");
mysqli_select_db($con,"u712261449_evacuationcent");
$country=$_GET['country'];
$state=$_GET['state'];

if($country!="")
{
		$result = mysqli_query($con, "select * from province where r_id=$country");
		echo "<select class='form-control'  id='statedd' onChange='change_state()' name='province' required>";
			while ($row = mysqli_fetch_array($result))
				{
				echo "<option value=".$row['p_id'].">".$row['province_name']."</option>";
				}
		echo "</select>";
}

if($state!="")
{
		$result = mysqli_query($con, "select * from cities where p_id=$state");
		echo "<select class='form-control'  name='city' required>";
			while ($row = mysqli_fetch_array($result))
				{
				echo "<option value=".$row['p_id'].">".$row['province_name']."</option>";
				}
		echo "</select>";
}


?>