
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




	// alert notif info
	// $msg_response['status']="error";
	// $msg_response['msg']="Success";
	// $session_class->setValue('success',$msg_response['msg']);







// VIEW TEMPLATE / EDIT
if(isset($_GET['template_id_tl'])) {

	// get data
	$template_id_tl = $_GET['template_id_tl'];

	$sql_view_edit_tmpl = "SELECT * FROM survey_template WHERE s_template_id = '$template_id_tl'";
	$res_view_edit_tmpl = mysqli_query($db_connect, $sql_view_edit_tmpl);

	if (mysqli_num_rows($res_view_edit_tmpl) > 0) {

		while($row_view_edit_tmpl = mysqli_fetch_assoc($res_view_edit_tmpl)) {

			$edit_title = $row_view_edit_tmpl['template_title'];
			$edit_header = $row_view_edit_tmpl['template_header'];
		}
	}
}








// Publish Template data
if(isset($_POST['publish_data'])) {



	// get data
	$get_templ_id = mysqli_real_escape_string($db_connect, $_POST['get_templ_id']);
	$s_title = mysqli_real_escape_string($db_connect, $_POST['template_title']);
	$s_header = mysqli_real_escape_string($db_connect, $_POST['template_header']);


	// date now
	// $date_now = date('Y-m-d');


	// if id is not empty -> INSERT
	// else -> UPDATE


	// INSERT
	if($get_templ_id == ""){
		

		// if data is empty
		if(empty($s_title)) {

			$msg_response['status']="error";
			$msg_response['msg']="Title cannot be empty";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}elseif(empty($s_header)){

			$msg_response['status']="error";
			$msg_response['msg']="Header cannot be empty";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}


		// Insert data
		$sql_template_insert = "INSERT INTO survey_template (template_title, template_header) VALUES ('$s_title', '$s_header')";
		$res_template_insert = mysqli_query($db_connect, $sql_template_insert);

		if(!$res_template_insert) {

			$msg_response['status']="error";
			$msg_response['msg']="Fail to publish";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}else{

			$msg_response['status']="success";
			$msg_response['msg']="Published!";
			$session_class->setValue('success',$msg_response['msg']);
			header("location: create_template.php");
			exit();
		}





	// UPDATE
	}else{


		// if data is empty
		if(empty($s_title)) {

			$msg_response['status']="error";
			$msg_response['msg']="Title cannot be empty";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}elseif(empty($s_header)){

			$msg_response['status']="error";
			$msg_response['msg']="Header cannot be empty";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}


		// Update data
		$sql_template_update = "UPDATE survey_template SET template_title = '$s_title', template_header = '$s_header' WHERE s_template_id = '$get_templ_id'";
		$res_template_update = mysqli_query($db_connect, $sql_template_update);

		if(!$res_template_update) {

			$msg_response['status']="error";
			$msg_response['msg']="Fail to update";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: create_template.php");
			exit();

		}else{

			$msg_response['status']="success";
			$msg_response['msg']="UPDATED!";
			$session_class->setValue('success',$msg_response['msg']);
			header("location: create_template.php");
			exit();
		}
	}



}

// print template
if(isset($_POST['print_data'])){

	$_SESSION["template_header"] = $_POST['template_header'];

	header("location: view_print_template.php");
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


<!-- Sweet Alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style type="text/css">
	/* Fixed underline body 1 */
	.hr_line {
		border: 1px solid black; 
		border-top-style: none; 
		border-left-style: none; 
		border-right-style: none; 
		padding-left: 30%;
	}
	.tbl_td_fxd1 {
		border: 1px solid black; 
		border-top-style: none; 
		border-left-style: none; 
		border-right-style: none;
		padding-left: 100px;
	}

	/* Body 2 table hover */
	.custm_body2 tbody tr {
		background-color: white;
	}
	.custm_body2 tbody tr:hover {
		background-color: #3198FF;
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
                <div class="container bg-light pt-1 pb-1 mb-3 shadow border rounded">
                    <h3><?php if(empty($template_id_tl)){echo "Create";}else{echo "Edit";} ?> Template</h3>
                </div>


                <!-- CONTENTS... -->
                <div class="py-5 bg-light rounded border shadow mb-3">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">

                				<form action="create_template.php" method="POST">
                				<div class="container">

                					<!-- Print btn -->
                					<div style="float: right;">
                						<button class="btn btn-outline-secondary btn-sm" name="print_data" style="padding-left: 20px; padding-right: 20px;"><i class="fa-solid fa-print"></i> Print & View</button>
                					</div>

	                				<!-- Title -->
	                				<div class="mb-3">
	                					<label style="font-size: 20px; font-weight: bold;">Title</label>
			            				<input name="template_title" type="text" value="<?php if(!empty($edit_title)){echo $edit_title;}else{echo "";} ?>" class="form-control">
	                				</div>
	                				
	                				<!-- Form Editor / Builder field -->
									<div>
										<label style="font-size: 20px; font-weight: bold;">Header</label>
										<textarea name="template_header" name="survey_data" id="template_editor">
											<?php echo !empty($edit_header)?$edit_header:''; ?>	
										</textarea>
									</div>


									<hr>


									<!-- Fixed Body 1 -->
									<label style="font-size: 20px; font-weight: bold;">Fixed Body 1</label>
									<div class="border" style="padding-top: 5px; padding-left: 5px; padding-right: 5px; background: #D0D3D4;">
										
										<!-- I -->
										<b style="font-size: 17px;">I. Impormasyon ng kliyente / Client Information</b>
										<p>
											Pangalan (Kung nais lamang) / Name (Optional): <span class="hr_line"> </span><br>
											Tanggapan binisita o Taong kinausap / Office or person visited: <span class="hr_line"> </span> <br>
											Layunin ng pagbisita (Pakitukoy) / Purpose of Visit (Please specify): <span class="hr_line"> </span>

											<table>
												<tr>
													<td>Petsa / Date: </td>
													<td class="tbl_td_fxd1"></td>
													<td>Oras dumating / Time started: </td>
													<td class="tbl_td_fxd1"></td>
													<td>Oras natapos / Time finished: </td>
													<td class="tbl_td_fxd1"></td>
												</tr>
											</table>
										</p>

										<!-- II -->
										<b style="font-size: 17px;">II. Pagsukat sa antas ng kasiyahan ng kliyente / Client Satisfaction Rating</b>
										<p>Pinagpayuhan na sukatin ang kalidad ng serbisyo na ibinigay sa pamamagitan ng tsek (✓) ng naangkop na kahon. <br>
											Kindly rate the quality service provided by checking (✓) the appropriate box.</p>
									</div>

									<!-- contents -->
									<textarea style="display: none;">
										<!-- I -->
										<b style="font-size: 17px;">I. Impormasyon ng kliyente / Client Information</b>
										<p>
											Pangalan (Kung nais lamang) / Name (Optional): <span class="hr_line"> </span><br>
											Tanggapan binisita o Taong kinausap / Office or person visited: <span class="hr_line"> </span> <br>
											Layunin ng pagbisita (Pakitukoy) / Purpose of Visit (Please specify): <span class="hr_line"> </span>

											<table>
												<tr>
													<td>Petsa / Date: </td>
													<td class="tbl_td_fxd1"></td>
													<td>Oras dumating / Time started: </td>
													<td class="tbl_td_fxd1"></td>
													<td>Oras natapos / Time finished: </td>
													<td class="tbl_td_fxd1"></td>
												</tr>
											</table>
										</p>

										<!-- II -->
										<b style="font-size: 17px;">II. Pagsukat sa antas ng kasiyahan ng kliyente / Client Satisfaction Rating</b>
										<p>Pinagpayuhan na sukatin ang kalidad ng serbisyo na ibinigay sa pamamagitan ng tsek (✓) ng naangkop na kahon. <br>
											Kindly rate the quality service provided by checking (✓) the appropriate box.</p>
									</textarea>

									<!-- END Fixed Body 1 -->


									<hr>


									<!-- Custom Body 2 -->
									<label style="font-size: 20px; font-weight: bold;">Custom Body 2</label>
									<div class="border">
										<table class="custm_body2 table table-striped">
											<thead style="background: #3198FF;">
												<tr>
													<th>Questions</th>
													<th>Very Satisfied</th>
													<th>Satisfied</th>
													<th>Dissatisfied</th>
													<th>Very Dissastisfied</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>What's your favorite color?</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
												</tr>
												<tr>
													<td>Performance of functionality?</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
												</tr>
												<tr>
													<td>Third question</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
													<td>...</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- END Custom Body 2 -->




									<!-- get ID -->
									<input type="text" name="get_templ_id" value="<?php if(!empty($template_id_tl)){echo $template_id_tl;}else{echo "";} ?>" style="display: none;">

									<!-- SUBMIT -->
									<button type="submit" name="publish_data" class="btn btn-success mt-4" style="width: 100%;"><?php if(empty($template_id_tl)){echo "PUBLISH";}else{echo "UPDATE";} ?></button>
                				</div>
                				</form>

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






<!-- Form builder field (CKEditor) -->
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

<script>
    CKEDITOR.replace('template_editor', {
        filebrowserUploadUrl: 'ckeditor/ck_upload.php',
        filebrowserUploadMethod: 'form'
    });
</script>
<!-- END - Form builder field (CKEditor) -->





	
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