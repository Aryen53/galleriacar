	
	<?php
session_start();
//$_SESSION['id']; 
$username = $_SESSION['username'];
 include 'search.dbh.php';
 include_once 'includes/dbhh.php';

//include_once 'includes/dbhuser.php';
//require 'includes/user.incc.php';

 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/slide.css">
		<script>
function validateForm()
{
	var search = document.forms["myForm"]["search"].value;
	if(search == null || search == ""){
		alert("search must be filled out!");
return false;}

}

</script>
</head>
<body>
    <div class="container">
        <nav class="navbar nav-tabs navbar-expand-lg bg-dark text-light">
            <a class="navbar-brand" href="garagepage.php">Galleria </a>
            
                    <a class="nav-link" href="garagepage.php">Home <span class="sr-only">(current)</span></a>
                </li>

                    <a class="nav-link" href="carsoldgarage.php">Cars<span class="sr-only">(current)</span></a>
                </li>

                    <a class="nav-link" href="forumgarage.php">Forum <span class="sr-only">(current)</span></a>
                </li>
                    <a class="nav-link" href="contactadmingarage.php">Contact <span class="sr-only">(current)</span></a>
                </li>
                    <a class="nav-link" href="userlogout.php">Logout <span class="sr-only">(current)</span></a>
                </li>
          
            <form  class="form-inline my-2 my-lg-0" action="searchgarage.php" method="POST" name="myForm" onsubmit="return validateForm()"
>
                <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search cars on sale" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit">Search</button>
            </form>

        
 
		<?php
/*
$sql = "SELECT * FROM garagesignup WHERE username = '$username'";
$result = mysqli_query($connn, $sql);
if (mysqli_num_rows($result) > 0){
	while($row = mysqli_fetch_assoc($result)){
$id = $row['username'];
$sqlImg = "SELECT * FROM imguploadgarage WHERE userid='$id'"; 	
$resultImg = mysqli_query($connn, $sqlImg);
while ($rowImg = mysqli_fetch_assoc($resultImg)){
	echo "<div class='imageupload'>";
	if($rowImg['status'] == 0){
	echo "<img src='uploads/Gallerygarage/profile".$id.".jpg?".mt_rand()."'>";
	}else {
		echo "<img src='uploads/icon.jpg'>";
	}
	//echo $row['first']." ".$row['last'];
	echo "</div>";
}
	
	}
	
}
else{
		echo "no users";
	}


/*if(isset($_SESSION['id'])){
if($_SESSION['id'] == 1){
	echo "You are logged in as";
	echo "<p>".$row['first']."</p>";
	echo "<p>".$row['last']."</p>";
	
}*/
;
?>


 <span class="tooltiptext"><?php echo htmlspecialchars($username);?>

</span>

        </nav>
<button  class= "frmm" onclick="document.getElementById('id01') .style.display='block'">VIEW PROFILE</button>
<div id="id01" class="modal">
<form class="modal-content">
<div class= "imgcontainer">
<span onclick="document.getElementById('id01') .style.display='none'" class="close" title="Close Modal"> &times;</span>
<div class="container">
<?php
$sql = "SELECT * FROM garagesignup WHERE username = '$username'";
$result = mysqli_query($connn, $sql);
if (mysqli_num_rows($result) > 0){
	while($row = mysqli_fetch_assoc($result)){
$id = $row['username'];
$sqlImg = "SELECT * FROM imguploadgarage WHERE userid='$id'"; 	
$resultImg = mysqli_query($connn, $sqlImg);
while ($rowImg = mysqli_fetch_assoc($resultImg)){
	echo "<div class='imageuploadd'>";
	if($rowImg['status'] == 0){
	echo "<img src='uploads/Gallerygarage/profile".$id.".jpg?".mt_rand()."'>";
	}else {
		echo "<img src='uploads/icon.jpg'>";
	}
	//echo $row['first']." ".$row['last'];
	echo "</div>";
}
	
	}
	
}
else{
		echo "no users";
	}


/*if(isset($_SESSION['id'])){
if($_SESSION['id'] == 1){
	echo "You are logged in as";
	echo "<p>".$row['first']."</p>";
	echo "<p>".$row['last']."</p>";
	
}*/
;
$sql = "SELECT * FROM garagesignup WHERE username = '$username'";
$result = mysqli_query($connn, $sql);
if (mysqli_num_rows($result) > 0){
	while($row = mysqli_fetch_assoc($result)){
echo '<p>First Name: '.$row["first"].'</p>';
echo '<p>Last Name: '.$row["last"].'</p>';
echo '<p>Username: '.$row["username"].'</p>';
echo '<p>Contact: '.$row["contact"].'</p>';
echo '<p>Garage Name: '.$row["gname"].'</p>';
echo '<p>Services: '.$row["services"].'</p>';
echo '<p>Email: '.$row["email"].'</p>';
}}
echo '<form action="#" method="POST" enctype="multipart/form-data">
<a class="nav-link" href="updategarage.php">EDIT PROFILE</a>
</form>';
?>
<form class="frm" action='includes/machgarage.php' method='POST' enctype='multipart/form-data' >
<input type='file' name='file'>
<button type='submit' name='submit'>UPLOAD PROFILE</button>
	</form><br />
	
	<form class='frm' action='includes/machgaragedelete.php' method='POST'>
<button type='submit' name='submit'>DELETE PHOTO</button>
	</form><br />
	<form action="includes/deletegarage.php" method='POST' enctype='multipart/form-data'>
<button type='submit' name='submit'>DELETE PROFILE</button>
</form>



</div>



	</div>
	</form>
</div>

<script>
document.getElementById('button').addEventListener('click', function(){
	document.querySelector('.bg-modal').style.display = 'flex';
});
	document.querySelector('.bg-modal').style.display = 'flex';

</script>
		
                </div>
            </form>
			</div>
			<script>
			var modal = document.getElementById('id01');
			window.onclick = function(event){
				if(event.target == modal){
					modal.style.display = "none";
				}
			}
			</script>
