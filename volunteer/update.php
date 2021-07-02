<?php
//insert.php;
 session_start();
  
$conn = new mysqli('localhost', 'u712261449_evacuati', 'rodny123', 'u712261449_evacuationcent');



$sql = "SELECT * FROM users where username = '". $_SESSION['username'] ."'";

							
		$query = $conn->query($sql);
		while($row = $query->fetch_assoc())
		{			
			$bid = $row['b_id'];
$sql = "SELECT * FROM constituents where cons_stat='1' and b_id='$bid'";
		
$query = $conn->query($sql);
		while($row = $query->fetch_assoc())
		{			
				
			
				$cons_id = $row['cons_id'];
				
		
		$updt = "update constituents set cons_stat='0', cons_fid='$cons_id' where cons_id='$cons_id'";
		
	

if($conn->query($updt)===TRUE){
  
}
		}
		}




?>
