<?php
$con = new mysqli('localhost', 'u712261449_evacuati', 'rodny123', 'u712261449_evacuationcent');
	if($con->connect_error){
	   die("Connection failed: " . $con->connect_error);
	}
	else



	if(isset($_POST['country']))
	{
		$country=$_POST['country'];
		$query=$con->query("select * from province where r_id=".$country."");
		$rowcount=$query->num_rows;

		if($rowcount > 0)

		{

        while($row = $query->fetch_assoc())
		{
            echo '<option value="'.$row['p_id'].'">'.$row['province_name'].'</option>';// select country id & name from country table
        }
    }
	else
	{
        echo '<option value="">Country Not Available</option>'; //display when no data!
	}


	}





?>