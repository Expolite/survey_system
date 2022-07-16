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
	$templ_id_frmTempList = $_GET['template_id_tl'];
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
							    <h4><span style="font-weight: normal;">Title:</span> Suvery_Name</h4>

							    <br><br><br><br>
							    <hr style="border: 1px solid black;">
							    <hr style="border: 1px solid black;">

							    <div>
								    <!-- My JQuery -->
									<script type="text/javascript" src="<?php echo BASE_URL;?>js/jquery-3.6.0.min.js?v=<?php echo FILE_VERSION;?>"></script>
									
									<script type="text/javascript">
										$(document).ready(function(){

											var html = ' <tr><td><input class="form-control" type="text" name="txtFullname[]" required=""></td><td><input class="form-control" type="text" name="txtEmail[]" required=""></td><td><input class="form-control" type="text" name="txtPhone[]" required=""></td><td><input class="form-control" type="text" name="txtAddress[]" required=""></td><!-- Button --><td><input class="btn btn-danger" type="button" name="remove" id="remove" value="Remove"></td></tr>';

											// max of field to add
											var max = 3;
											var x = 1;

											// Add Button (Add row)
											$("#add").click(function(){
												if(x <= max) {
													$("#table_field").append(html);
													x++;
												}
											});
											// Remove Button (Remove Row)
											$("#table_field").on('click','#remove',function(){
												$(this).closest('tr').remove();
												x--;
											});

										});
									</script>

	                				<div>
	                					<form id="insert_form">
		                					<table class="table table-bordered" id="table_field">
		                						<thead>
													<tr>
														<th>Question</th>
														<th>Email Address</th>
														<th>Phone No</th>
														<th>Address</th>
														<th>Add or Remove</th>
													</tr>
		                						</thead>
		                						<tbody>
													<tr>
														<td><input class="form-control" type="text" name="txtFullname[]" required=""></td>
														<td><input class="form-control" type="text" name="txtEmail[]" required=""></td>
														<td><input class="form-control" type="text" name="txtPhone[]" required=""></td>
														<td><input class="form-control" type="text" name="txtAddress[]" required=""></td>
														<!-- Button -->
														<td><input class="btn btn-warning" type="button" name="addd" id="add" value="Add"></td>
													</tr>
		                						</tbody>
		                					</table>

		                					<!-- SUBMIT Button -->
		                					<center>
												<input class="btn btn-success" type="submit" name="save" id="save" value="Save Data">
											</center>

		                				</form>
	                				</div>
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