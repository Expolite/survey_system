
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
$header = $_SESSION["template_header"];

// check if the value is empty, then print 'empty'
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

	<div>
		<?php echo $header; ?>
	</div>
	
</body>
</html>