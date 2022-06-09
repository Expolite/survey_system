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

?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";
?>
</head>
<body data-layout="detached">

	<!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/top_bar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->




    <!-- CONTENTS -->
    <div class="container-fluid active">
    	Contents...
    </div>
	<!-- END CONTENTS -->

    



    <!-- FOOTER -->
    <?php  include FOOTER_PATH; ?>
    <!-- END FOOTER -->


    <!-- all linked js -->
    <?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>


<script>
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