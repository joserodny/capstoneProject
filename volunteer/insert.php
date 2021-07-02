<?php
//insert.php;

function _encrypt($message, $hmac = FALSE)
{
	date_default_timezone_set('UTC');
	$secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
	$encryptionMethod = 'AES-256-CBC';
	$iv = substr(bin2hex(openssl_random_pseudo_bytes(16)),0,16);
	$encrypted = base64_encode($iv) . openssl_encrypt($message, $encryptionMethod, $secret, 0, $iv);

	return $encrypted;

}


if(isset($_POST["cons_name"]))
{

 $secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

 $connect = new PDO("mysql:host=localhost;dbname=u712261449_evacuationcent", "u712261449_evacuati", "rodny123");

 for($count = 0; $count < count($_POST["cons_name"]); $count++)
 {
  $query = "INSERT INTO constituents (cons_name, cons_midname, cons_lname, cons_age, cons_gender, cons_add, b_id, c_id, p_id, r_id, cons_fid)
		values (:cons_name, :cons_midname, :cons_lname, :cons_age, :cons_gender, :cons_add, :b_id, :c_id, :p_id, :r_id, :cons_fid)";
  $statement = $connect->prepare($query);
  $statement->execute(
   array(

    ':cons_name'  => _encrypt($_POST["cons_name"][$count],$secret),
    ':cons_midname' => _encrypt($_POST["cons_midname"][$count],$secret),
    ':cons_lname'  => _encrypt($_POST["cons_lname"][$count],$secret),
	':cons_age'  => $_POST["cons_age"][$count],
	':cons_gender'  => $_POST["cons_gender"][$count],
	':cons_add'  => $_POST["cons_add"][$count],
	':b_id'  => $_POST["b_id"][$count],
	':c_id'  => $_POST["c_id"][$count],
	':p_id'  => $_POST["p_id"][$count],
	':r_id'  => $_POST["r_id"][$count],
	':cons_fid'  => $_POST["cons_fid"][$count]
   )
  );
 }

 $result = $statement->fetchAll();
 if(isset($result))
 {
  echo 'ok';
 }



}


?>
