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
    <!-- HEADER -->
    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/top_bar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->

    <div class="container-fluid active">
        <div class="wrapper in">
            <!-- BEGIN CONTENT -->

            <!-- SIDEBAR -->
            <?php
                include DOMAIN_PATH."/app/global/sidebar.php";
			?>
            <!--END SIDEBAR-->

            <!-- PAGE CONTAINER-->
            <div class="content-page">
                <div class="content">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        <div class="d-flex justify-content-center">
                                            <!-- Total of Surveys of <year> -->
                                            <div class="border border-dark p-1"
                                                 style="width: fit-content;">
                                                <span>Total of Surveys
                                                <div class="text-center"><?php echo YEAR; ?></span></div>
                                                <h3 class="text-center">228</h3>
                                            </div>

                                            <div class="p-5"></div>

                                            <!-- Total of Surveys of <month> -->
                                            <div class="border border-dark p-1"
                                                 style="width: fit-content;">
                                                <span>Total of Surveys
                                                <div class="text-center"><?php echo MONTH; ?></span></div>
                                                <h3 class="text-center">228</h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div> <!-- end col-->
                        </div>

                    <!-- END PLACE PAGE CONTENT HERE -->
                </div>
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
