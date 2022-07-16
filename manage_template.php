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




// VIEW TEMPLATE

// from TEMPLATE LIST
if (isset($_GET['template_id_tl'])) {
	// get data(id) from Template_List
	$templ_id_frmTempList = $_GET['template_id_tl']; // template id

	$sql_select_template_manage_templ = "SELECT * FROM survey_template WHERE s_template_id = '$templ_id_frmTempList'";
	$res_select_template_manage_templ = mysqli_query($db_connect, $sql_select_template_manage_templ);

	if (mysqli_num_rows($res_select_template_manage_templ) > 0) {
		while($row_select_template_manage_templ = mysqli_fetch_assoc($res_select_template_manage_templ)) {
			$v_templ_title = $row_select_template_manage_templ['template_title'];
			$v_templ_descption = $row_select_template_manage_templ['survey_templ_desc'];
			$v_templ_start_date = $row_select_template_manage_templ['start_date'];
			$v_templ_end_date = $row_select_template_manage_templ['end_date'];
			$v_templ_taken = $row_select_template_manage_templ['taken'];
		}
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
                    <h3>View Survey</h3>
                </div>

                <!-- CONTENTS... -->
                <div class="py-3 bg-light rounded shadow">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">

							    <!-- CONTENTS HERE -->

							    <!-- HEADER TITLE -->
							    <h4 class="mb-4"><span style="font-weight: normal;">Title:</span> <?php echo $v_templ_title; ?></h4>
							    
							    <h4 style="font-weight: normal;">Description:</h4>
							    <p><?php echo $v_templ_descption; ?></p>

							    <hr>

							    <!-- Start and End Date -->
							    <div style="font-size: 17px;" class="mb-2">
							    	<span style="font-family: arial;">Start:</span> <span style="font-weight: bold;"><?php echo $v_templ_start_date; ?></span>
							    </div>
							    <div style="font-size: 17px;" class="mb-2">
							    	<span style="font-family: arial;">End:</span> <span style="font-weight: bold;"><?php echo $v_templ_end_date; ?></span>
							    </div>
							    <!-- TAKEN -->
							    <div style="font-size: 17px;">
							    	<span style="font-family: arial;">Have taken:</span> <span style="font-weight: bold;"><?php if(empty($v_templ_taken)){echo"0";}else{echo $v_templ_taken;} ?></span>
							    </div>

                				<!-- END CONTENTS HERE -->
                				
                			</div>
                		</div>
                	</div>
                </div>


                <!-- CONTAINER 2 -->
                <div class="py-3 bg-light rounded shadow mt-3">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">
                				<!-- CONTENTS -->

                				<!-- HEADER TITLE -->
							    <h4 class="float-left">Survey Questionaire</h4>

							    <button type="button" class="btn btn-sm btn-outline-success float-right">&plus; Add New Quesion</button>

							    <br>
							    <hr class="mt-4">

							    <div>
							    	
							    </div>
							    <!-- END CONTAINER -->
                			</div>
                		</div>
                	</div>
                </div>
                <!-- END CONTAINER 2 -->
				
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