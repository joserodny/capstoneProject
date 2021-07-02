<?php 

include 'connection.php'; 
 
if(!empty($_POST["country_id"])){ 
    
    $query = "SELECT * FROM province WHERE r_id = ".$_POST['country_id']." ORDER BY province_name ASC"; 
    $result = $con->query($query); 
     
    // Generate HTML of state options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Select Province</option>'; 
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['p_id'].'">'.$row['province_name'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">Province not available</option>'; 
    } 
}elseif(!empty($_POST["state_id"])){ 
   
    $query = "SELECT * FROM city WHERE p_id = ".$_POST['state_id']." ORDER BY cities ASC"; 
    $result = $con->query($query); 
     
    // Generate HTML of city options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Select city</option>'; 
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['c_id'].'">'.$row['cities'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">City not available</option>'; 
    } 
} 
?>