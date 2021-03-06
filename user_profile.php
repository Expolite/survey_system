<?php 

require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;// check kung nakalogin

// Select data
$sql_user_info = "SELECT * FROM users WHERE user_id = '$g_user_id'";
$res_user_info = mysqli_query($db_connect, $sql_user_info);

if (mysqli_num_rows($res_user_info) > 0) {
  // output data of each row
  while($row_user_info = mysqli_fetch_assoc($res_user_info)) {
    $fname = $row_user_info["firstname"];
    $lname = $row_user_info["lastname"];
    $email_address = $row_user_info["email_address"];
  }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";
?>

</head>
<body>

    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/topbar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->


    <div class="container mt-2 bg-light rounded border shadow"><h3>Profile Information</h3></div>

    <!-- CONTENTS... -->
    <div class="container rounded bg-light mt-2 shadow border">

        <img src="<?php echo $g_logo_sidebar;?>" class="rounded border m-2" alt="profile pic" width="150px" height="150px">

        <!-- User Name -->
        <h4>Name: <span style="font-size: 18px; font-weight: normal;"><?php echo $fname." ".$lname; ?></span></h4>

        <!-- Email -->
        <h4>Email: <span style="font-size: 18px; font-weight: normal;"><?php echo $email_address; ?></span></h4>

        <!-- Department -->
        <h4>Department: <span style="font-size: 18px; font-weight: normal;"><?php echo "Dept Sample"; ?></span></h4>

        <!-- Settings btn -->
        <button type="button" onclick="window.location.href = 'manage_profile.php';" class="btn btn-primary mb-3 mt-2"><i class="fa-solid fa-gear"></i> Profile Settings</button>

    </div>
    <!-- END CONTENTS -->



    
    <!-- FOOTER -->
    <?php  include FOOTER_PATH; ?>
    <!-- END FOOTER -->

    <!-- all linked js -->
    <?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>

<script>
addClass(document.getElementById('student_link'),'active');
<?php
		$msg_success =$session_class->getValue('success');
    	if(isset($msg_success) AND $msg_success !=""){
			echo "success_notif('".$msg_success."');";
			$session_class->dropValue('success');
    	}

    	$msg_error =$session_class->getValue('error');
    	if(isset($msg_error) AND $msg_error !=""){
			echo "error_notif('".$msg_error."');";
			$session_class->dropValue('error');
    	}
?>
</script>
    
</body>
</html>