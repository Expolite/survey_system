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




// Save New Added Question
if (isset($_POST['save_question'])) {
	// Get data
	$select_answer_type = $_POST['select_answer_type'];
	$txt_question = $_POST['txt_question'];
	$q_date_created = date('Y-m-d H:i:s');
	$s_templ_id = $_POST['s_templ_id'];

	// Insert
	$insert_question = "INSERT INTO quest_criteria (questions, answer_type, survey_templ_id, date_created) VALUES('$txt_question','$select_answer_type','$s_templ_id','$q_date_created')";
	if (mysqli_query($db_connect, $insert_question)) {

		$msg_response['status']="success";
		$msg_response['msg']="Data successfully saved!";
		$session_class->setValue('success',$msg_response['msg']);
		header("location: manage_template.php?template_id_tl=$s_templ_id");
		exit();
	}
}





// DELETE QUESTION
if(isset($_GET['quest_id'])) {

	$q_criteria = $_GET['quest_id']; // question criteria id

	$sql_delete_q = "DELETE FROM quest_criteria WHERE id = '$q_criteria'";

	if (mysqli_query($db_connect, $sql_delete_q)) {

		$msg_response['status']="success";
		$msg_response['msg']="Deleted successfully!";
		$session_class->setValue('success',$msg_response['msg']);
		header("location: manage_template.php");
		exit();
	}
}





//UPDATE Question
if(isset($_POST['update_question'])){
	// get data
	$txt_question = $_POST['txt_question'];
	$select_answer_type = $_POST['select_answer_type'];
	$s_templ_id = $_POST['s_templ_id'];

	// UPDATE
	$sql_update_crit_q = "UPDATE quest_criteria SET questions = '$txt_question', answer_type = '$select_answer_type' WHERE survey_templ_id = '$s_templ_id'";
	if (mysqli_query($db_connect, $sql_update_crit_q)) {

		$msg_response['status']="success";
		$msg_response['msg']="Update successfully!";
		$session_class->setValue('success',$msg_response['msg']);
		header("location: manage_template.php?template_id_tl=$s_templ_id");
		exit();
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


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



<style type="text/css">
	/* Container */
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



<!-- EDIT Question Func -->
<script type="text/javascript">
<?php 
if(isset($_GET['edit_quest_id'])) { 
	//get data
	$edit_quest_id = $_GET['edit_quest_id'];

	// SELECT DATA
	$sql_select_question = "SELECT * FROM quest_criteria WHERE id = '$edit_quest_id'"; 
	$res_select_question = mysqli_query($db_connect, $sql_select_question);
	if (mysqli_num_rows($res_select_question) > 0) {
		while($row_edit_q = mysqli_fetch_assoc($res_select_question)) {
			$edit_question = $row_edit_q['questions'];
			$edit_ans_type = $row_edit_q['answer_type'];
		}
	}
?>
	// Toggle Modal -> to Edit Question
	setTimeout(toggle_modal_edit, 500); // call function in .5 second.

	function toggle_modal_edit() {
		document.getElementById("toggle_me").click();
	}
<?php } ?>
</script>




                <!-- CONTAINER 2 -->
                <div class="py-3 bg-light rounded shadow mt-3">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">
                				<!-- CONTENTS -->

                				<!-- HEADER TITLE -->
							    <h4 class="float-left">Survey Questionaire</h4>


							    <!-- Add New Question Button -->
							    <?php if(!empty($edit_ans_type)){ ?>
							    	<a href="manage_template.php?template_id_tl=<?php echo $templ_id_frmTempList; ?>&add_new_q=add" class="btn btn-sm btn-success float-right">&plus; Add New Quesion</a>
							    	<button type="button" id="toggle_me" class="btn btn-sm btn-success float-right" data-toggle="modal" data-target="#exampleModal" style="display: none;">&plus; Add New Quesion</button>
							    <?php } ?>
							    <?php if(empty($edit_ans_type)){ ?>
							    	<button type="button" id="toggle_me" class="btn btn-sm btn-success float-right" data-toggle="modal" data-target="#exampleModal">&plus; Add New Quesion</button>
							    <?php } ?>

							    <br>
							    <hr class="mt-4">

							    <?php 
							    	// SELECT DATA / DISPLAY DATA
							    	$sql_select_questions = "SELECT * FROM quest_criteria WHERE survey_templ_id = '$templ_id_frmTempList' ORDER BY id DESC";
							    	$res_select_questions = mysqli_query($db_connect, $sql_select_questions);

							    	if (mysqli_num_rows($res_select_questions) > 0) {
							    		while($row_sel_quest = mysqli_fetch_assoc($res_select_questions)) {
							    			$q_id = $row_sel_quest['id'];
							    			$qc_question = $row_sel_quest['questions'];
							    			$q_answer_type = $row_sel_quest['answer_type'];
							    ?>
							    <!-- Card -->
								<div class="card shadow border">
									<div class="card-body rounded" style="border-left: 3px solid #007bff; padding: 20px;">
										<!-- Title -->
										<h5 class="card-title float-left"><?php echo $qc_question; ?></h5>
										<!-- Option -->
										<div class="float-right px-2 text-dark" style="cursor: pointer; font-size: 18px;" data-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></div>
										<!-- Dropdown list -->
										<div class="dropdown-menu dropdown-menu-right shadow rounded" style="border-left: 3px solid #007bff; border-bottom: 3px solid #007bff;">
											<a href="manage_template.php?template_id_tl=<?php echo $templ_id_frmTempList; ?>&edit_quest_id=<?php echo $q_id; ?>" class="dropdown-item text-primary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
											<a href="manage_template.php?quest_id=<?php echo $q_id; ?>" class="dropdown-item text-danger" style="cursor: pointer;"><i class="fa-solid fa-trash"></i> Delete</a>
											<!-- <a href="#" onclick="confirmDel_Q()" class="dropdown-item text-danger" style="cursor: pointer;"><i class="fa-solid fa-trash"></i> Delete</a> -->
										</div>
										<br>
										<hr>
										<!-- Answer Type -->
										<?php if($q_answer_type === "text_field") { ?>
											<!-- Text Field -->
								        	<input type="text" class="form-control" placeholder="Write something here..." readonly>
										<?php } ?>

										<?php if($q_answer_type === "single_answer") { ?>
							        		<table class="table table-bordered rounded">
							        			<tr>
							        				<td style="padding: 4px;"><div style="height: 30px; position: relative;"><input type="radio" class="form-control form-control-sm" style="height: 20px; position: absolute; top: 50%; transform: translateY(-50%);" disabled></div></td>
							        				<td style="padding: 4px;"><input type="text" class="form-control form-control-sm" placeholder="Very Satisfied" readonly></td>
							        			</tr>
							        			<tr>
							        				<td style="padding: 4px;"><div style="height: 30px; position: relative;"><input type="radio" class="form-control form-control-sm" style="height: 20px; position: absolute; top: 50%; transform: translateY(-50%);" disabled></div></td>
							        				<td style="padding: 4px;"><input type="text" class="form-control form-control-sm" placeholder="Satisfied" readonly></td>
							        			</tr>
							        			<tr>
							        				<td style="padding: 4px;"><div style="height: 30px; position: relative;"><input type="radio" class="form-control form-control-sm" style="height: 20px; position: absolute; top: 50%; transform: translateY(-50%);" disabled></div></td>
							        				<td style="padding: 4px;"><input type="text" class="form-control form-control-sm" placeholder="Dissatisfied" readonly></td>
							        			</tr>
							        			<tr>
							        				<td style="padding: 4px;"><div style="height: 30px; position: relative;"><input type="radio" class="form-control form-control-sm" style="height: 20px; position: absolute; top: 50%; transform: translateY(-50%);" disabled></div></td>
							        				<td style="padding: 4px;"><input type="text" class="form-control form-control-sm" placeholder="Very Dissatisfied" readonly></td>
							        			</tr>
							        		</table>
										<?php } ?>
									</div>
								</div>
								<!-- END Card -->
							    <?php 
							    		}
							    	}
							    ?>


							    <!-- END CONTAINER -->
                			</div>
                		</div>
                	</div>
                </div>
                <!-- END CONTAINER 2 -->
				
			</div>


    	</div>
    </div>








<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
  	<form action="manage_template.php?template_id_tl=<?php echo $templ_id_frmTempList; ?>" method="POST">
  		<!-- survey template id -->
  		<input type="text" name="s_templ_id" value="<?php echo $templ_id_frmTempList; ?>" style="display: none;">
	    <div class="modal-content">
	      <div class="modal-header">
	      	<!-- Modal title -->
	        <h5 class="modal-title" id="exampleModalLabel"><?php if(!empty($edit_quest_id)){echo'Edit Question';}else{echo'New Question';} ?></h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<!-- Questions -->
	        <label style="font-weight: bold;">Question</label>
	        <textarea name="txt_question" class="form-control mb-3" required><?php if(!empty($edit_question)){echo $edit_question;}else{echo'';} ?></textarea>
	        <!-- Answer Type -->
	        <label style="font-weight: bold;">Answer Type</label>
	        <select id="answer_type_selection" name="select_answer_type" class="form-control mb-3" onchange="check_answer_type()">
	        	<?php if($edit_ans_type === "single_answer"){ ?>
	        		<option value="single_answer" selected>Single Answer/Radio Button</option>
		        	<option value="text_field">Text Field</option>
	        	<?php }elseif($edit_ans_type === "text_field"){ ?>
	        		<option value="single_answer">Single Answer/Radio Button</option>
		        	<option value="text_field" selected>Text Field</option>
	        	<?php }else{ ?>
	        		<option value="single_answer">Single Answer/Radio Button</option>
		        	<option value="text_field">Text Field</option>
	        	<?php } ?>
	        </select>
	        <hr>
	        <!-- Preview Type of Answer -->
	        <div>
	        	<label style="font-weight: bold;">Preview</label>
	        	<!-- Text Field -->
	        	<input type="text" id="txt_field_input" class="form-control" placeholder="Write something here..." readonly>
	        	<!-- Single Answer/Radio -->
	        	<div id="sinlge_answer_input">
	        		<table class="table table-bordered rounded">
	        			<tr>
	        				<td style="padding: 4px;"><input type="radio" class="form-control" disabled></td>
	        				<td style="padding: 4px;"><input type="text" class="form-control" placeholder="Very Satisfied" readonly></td>
	        			</tr>
	        			<tr>
	        				<td style="padding: 4px;"><input type="radio" class="form-control" disabled></td>
	        				<td style="padding: 4px;"><input type="text" class="form-control" placeholder="Satisfied" readonly></td>
	        			</tr>
	        			<tr>
	        				<td style="padding: 4px;"><input type="radio" class="form-control" disabled></td>
	        				<td style="padding: 4px;"><input type="text" class="form-control" placeholder="Dissatisfied" readonly></td>
	        			</tr>
	        			<tr>
	        				<td style="padding: 4px;"><input type="radio" class="form-control" disabled></td>
	        				<td style="padding: 4px;"><input type="text" class="form-control" placeholder="Very Dissatisfied" readonly></td>
	        			</tr>
	        		</table>
	        	</div>
	        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
	        <!-- Save Button -->
	        <?php if(!isset($_GET['edit_quest_id'])) { ?>
	        	<button type="submit" name="save_question" class="btn btn-sm btn-primary">Save</button>
	        <?php } ?>
	        <!-- Update Button -->
	        <?php if(isset($_GET['edit_quest_id'])) { ?>
	        	<button type="submit" name="update_question" class="btn btn-sm btn-info">Update</button>
	        <?php } ?>
	      </div>
	    </div>
	</form>
  </div>
</div>
<!-- END Modal -->





<!-- Answer Type Function -->
<script type="text/javascript">

	// EDIT Question Func
	// if question is 'single_answer' -> preview the radio single questions
	<?php if($edit_ans_type === "single_answer"){ ?>
		txt_field_input.style.display = "none";
		sinlge_answer_input.style.display = "block";
	<?php }elseif($edit_ans_type === "text_field"){ ?>
		txt_field_input.style.display = "block";
		sinlge_answer_input.style.display = "none";
	<?php }elseif(empty($edit_ans_type)){ ?>
		// hide txt field input (Default)
		txt_field_input.style.display = "none"; // hide txt field
	<?php } ?>


	// hide txt field input (Default)
	// txt_field_input.style.display = "none"; // hide txt field

	function check_answer_type() {
		// Get data
		var answer_type = document.getElementById("answer_type_selection").value; // answer type selection

		// if txt field are selected
		if(answer_type == "text_field") {
			txt_field_input.style.display = "block";
			sinlge_answer_input.style.display = "none";
		}

		// if single answer are selected
		if(answer_type == "single_answer") {
			txt_field_input.style.display = "none";
			sinlge_answer_input.style.display = "block";
		}
	}




	// Add new question
	// refresh page and open modal
	<?php if(isset($_GET['add_new_q'])){ ?>
	setTimeout(open_modal_new_q, 1000);

	function open_modal_new_q() {
		document.getElementById("toggle_me").click();
	}
	<?php } ?>

</script>







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