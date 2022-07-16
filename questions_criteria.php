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


<style type="text/css">
	#survey_info_container {
        width: 80%; 
        padding: 10px;
        transition: all .3s ease;
    }
</style>


</head>
<body style="padding: 0;">
	



    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/topbar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->




    <div style="padding: 0;">
    	<div align="left" class="d-flex" style="margin-left: 0px; position: relative; left: 0px; width: 100%;">
    		

			<!-- BEGIN CONTENT -->
            <!-- SIDEBAR -->
            <?php
                include DOMAIN_PATH."/app/global/side_bar.php";
			?>


			<!-- PAGE CONTAINER-->
            <div id="survey_info_container" class="border-0 shadow">

				<!-- HEADER TITLE -->
                <div class="container bg-light pt-1 pb-1 mb-3 shadow rounded">
                    <h3>Questions Criteria</h3>
                </div>

                <!-- CONTENTS... -->
                <div class="py-5 bg-light rounded shadow">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">

                				<!-- CONTENTS HERE -->
                				
                				<div>
                					<table class="table table-bordered">
                						<thead>
                							<tr>
                								<th>Questions</th>
                								<th>Type of Input</th>
                								<th>Action</th>
                							</tr>
                						</thead>
                						<tbody>
                							<tr>
                								<td>sample</td>
                								<td>sample</td>
                								<td>sample</td>
                							</tr>
                						</tbody>
                					</table>
                				</div>

                				<!-- END CONTENTS HERE -->
                				
                			</div>
                		</div>
                	</div>
                </div>
				
			</div>


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


<script type="text/javascript">

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