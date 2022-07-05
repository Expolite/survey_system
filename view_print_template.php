
<?php 

require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;// check kung nakalogin


// if the user is not logged yet
if(!($g_user_role[0] == "ADMIN")){  
	header("Location: ".BASE_URL);
	exit();
}





// Get the data to print
$title = $_SESSION["template_title"];
$header = $_SESSION["template_header"];

// check if the value is empty, then print 'empty'
if(empty($title)){
	$title = "Empty";
}
if(empty($header)){
	$header = "Empty";
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<?php include DOMAIN_PATH."/app/global/include_top.php"; ?>

	<title>Print Template</title>
</head>
<body>

	<h1>Title: <?php echo $title; ?></h1>

	<br>
	<br>
	
	<p>Body: <?php echo $header; ?></p>
	
</body>
</html>