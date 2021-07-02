 <?php
session_start();
include 'connection.php';
global $con;
$username = $_POST['username'];
        $password = $_POST['password'];
		$password = md5($password);
        $newpassword = $_POST['newpassword'];
		$newpassword = md5($newpassword);
        $confirmnewpassword = $_POST['confirmnewpassword'];
        $result = mysqli_query($con, "SELECT password FROM users WHERE user_id='$username'");
        if(!$result)
        {
        echo "The username you entered does not exist";
        }
		
		
        else if($password!=$result)
        {
        echo "You entered an incorrect password";
        }
        else if($newpassword==$confirmnewpassword)
        $sql="UPDATE users SET password='$newpassword' where user_id='$username'";
		if($con->query($sql)){
        
        echo "Congratulations You have successfully changed your password";
        }
       else
        {
       echo "Passwords do not match";
       }
      ?>