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


// DISPLAY NUMBER OF SURVEYS
// $sql_display_num_surveys = "SELECT * FROM tbl_surveys_records WHERE date_log = ''";
// $res_display_num_surveys = mysqli_query($conn, $sql_display_num_surveys);

// if (mysqli_num_rows($res_display_num_surveys) > 0) {
//   // output data of each row
//   while($row = mysqli_fetch_assoc($res_display_num_surveys)) {
//     echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
//   }
// } else {
//   echo "0 results";
// }

?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";
?>

<style type="text/css">
    #survey_info_container {
        width: 80%; 
        padding: 10px;
        transition: all .3s ease;
        background-color: grey;
    }
</style>

</head>

<body>
    <!-- HEADER -->
    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/top_bar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->

    <div class="" style="padding: 0;">
        <div align="left" class="d-flex" style="margin-left: 0px; position: relative; left: 0px; width: 100%;">

            <!-- BEGIN CONTENT -->
            <!-- SIDEBAR -->
            <?php
                include DOMAIN_PATH."/app/global/side_bar.php";
			?>

            <!-- PAGE CONTAINER-->
            <div id="survey_info_container" class="border-0">
                <!-- CONTENTS... -->
                To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.To add more than one shadow to the text, add a comma-separated list of shadows.
            </div>
            <!-- END CONTENT -->

        </div>
    </div>

<!-- FOOTER -->
<?php  include FOOTER_PATH; ?>
<!-- END FOOTER -->

</body>

<!-- all the js files -->
<!-- bundle -->

<!-- all linked js -->
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>

<!-- Bootstrap JS -->
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

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
</html>
