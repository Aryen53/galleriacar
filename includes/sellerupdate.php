<?php
include_once 'dbhh.php';
session_start();
$username = $_SESSION['username'];
if(isset($_POST['submit'])){
$firstt = mysqli_real_escape_string($connn, $_POST['first']);
$lastt =  mysqli_real_escape_string($connn, $_POST['last']);
$usernamee =  mysqli_real_escape_string($connn, $_POST['username']);
$contact =  mysqli_real_escape_string($connn, $_POST['contact']);
$location =  mysqli_real_escape_string($connn, $_POST['location']);
$email =  mysqli_real_escape_string($connn, $_POST['email']);
$pwd = mysqli_real_escape_string($connn, $_POST['pwd']);
$pwd2 =mysqli_real_escape_string($connn, $_POST['confirm']);
  $hashedPwd = md5($pwd . $salt);
	$hashedPwdd = md5($pwd2 . $salt);
	$uppercase = preg_match('@[A-Z]@',$pwd);
$lowercase = preg_match('@[a-z]@',$pwd);
$number = preg_match('@[0-9]@',$pwd);
$specialChars = preg_match('@[^\w]@',$pwd);

	if(empty($firstt) || empty($lastt) || empty($usernamee) || empty($contact) || empty($location) || empty($email) || empty($pwd) || empty($pwd2)){
header("Location: ../updateseller.php?error=emptyfields&first=".$firstt."&last=".$lastt."&username=".$usernamee."&contact=".$contact."&location=".$location."&email=".$email);
exit();
}else 	if(!filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/", $usernamee)){
	header("Location: ../updateseller.php?error=invalidemailusername");
	exit();
}else 	if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
	header("Location: ../updateseller.php?error=invalidemail&first=".$firstt."&last=".$lastt."&username=".$usernamee."&contact=".$contact."&location=".$location);
exit();
}
else if(!preg_match("/^[a-zA-Z0-9]*$/", $usernamee)){
	header("Location: ../updateseller.php?error=invalidusername&first=".$firstt."&last=".$lastt."&contact=".$contact."&location=".$location."&email=".$email);
exit();
}else if($pwd !== $pwd2){
	header("Location: ../updateseller.php?error=passwordcheck&first=".$firstt."&last=".$lastt."&username=".$usernamee."&contact=".$contact."&location=".$location."&email=".$email);
exit();
}else if(!$uppercase || !$lowercase || !$number || !$specialChars || strlen($pwd) < 8){
			header("Location: ../updateseller.php?error=Invalid Password&first=".$firstt."&last=".$lastt."&username=".$usernamee."&contact=".$contact."&location=".$location."&email=".$email);
exit();
	//echo 'Password should be at least 8 characters in length and should include at least one uppercase letter, one number and one special character.';
}

$sql = "UPDATE sellersignup SET first='$firstt',last='$lastt', username='$usernamee', contact='$contact',location='$location',email='$email',pwd='$hashedPwd',confirm='$hashedPwdd' WHERE username='$username'";
mysqli_query($connn, $sql);

	header("Location: ../carproject.php?update=success");
	}
else{
	echo "You have an error";
}
	$sql = "UPDATE imguploadseller SET userid='$usernamee' WHERE userid='$username'";
	mysqli_query($connn, $sql);	//$stmt = mysqli_stmt_init($connn);
		/*
if(!mysqli_stmt_prepare($stmt, $sql))
{ 
		header("Location: ../assignmentsignup.php?error=sqlerror");
		exit();
}else{
//$hashedPwd = password_hash($pwd,PASSWORD_DEFAULT);}
	mysqli_stmt_bind_param($stmt, "sssssss", $first, $last, $contact, $location, $email, $pwd , $pwd2);
mysqli_stmt_execute($stmt);
header("Location: ../assignmentsignup.php?signup = sucess");}else
{
	header("Location: ../assignmentsignup.php?");

die();}

if(!mysqli_stmt_prepare($stmt, $sql))
{
echo "SQL error";
}else{
	//$hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);
mysqli_stmt_bind_param($stmt, "ssssss", $first, $last, $contact, $email, $pwd, $pwd2);	
mysqli_stmt_execute($stmt);}
$sql = "SELECT * FROM usersignup WHERE first='$first' AND last='$last'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0){
	while($row = mysqli_fetch_assoc($result)){
	$userid = $row['id'];	
	$sql = "INSERT INTO imgupload(userid, status) VALUES ($userid, 1);";
	header("Location: userpage.php");
	}
}else{
	echo "You have an error";
}

	if(!preg_match("/^[a-zA-Z]*$/", $first) || !preg_match("/^[a-zA-Z]*$/", $last) || !preg_match("/^[a-zA-Z]*$/", $user)){
		header("Location: ../usersignup.php?signup = char");
die();
}else{
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
		header("Location: ../usersignup.php?signup=email&first=$first&last=$last");
	die();
	}else{
	header("Location: ../usersignup.php?signup = sucess");
die();}}}else{
header("Location: ../usersignup.php");
die();}
*/
