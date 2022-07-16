
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




// $msg_response['status']="error";
// $msg_response['msg']="Unable to delete";
// $session_class->setValue('error',$msg_response['msg']);
// header("location: template_list.php");
// exit();




// DELETE select item
if(isset($_POST['delete_btn'])) {
	
	// get data
	$s_template_item = $_POST['chk'];

	if(!empty($s_template_item)) {

		$extract_id = implode(',',$s_template_item); // array

		$sql_delete_template = "DELETE FROM survey_template WHERE s_template_id IN($extract_id)";

		if (mysqli_query($db_connect, $sql_delete_template)) {

			$msg_response['status']="success";
			$msg_response['msg']="Deleted!";
			$session_class->setValue('success',$msg_response['msg']);
			header("location: template_list.php");
			exit();

		}else {

			$msg_response['status']="error";
			$msg_response['msg']="Unable to delete!";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: template_list.php");
			exit();
		}

	}else {
		// select atleast one
		$msg_response['status']="error";
		$msg_response['msg']="Select atleast one";
		$session_class->setValue('error',$msg_response['msg']);
		header("location: template_list.php");
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


<style type="text/css">
    #survey_info_container {
        width: 80%; 
        padding: 10px;
        transition: all .3s ease;
    }

    #tr_hover:hover {
    	/*background-color: #3198FF;*/
    	background-color: #BDC3C7;
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
                    <h3>Template List</h3>
                </div>


                <!-- CONTENTS... -->
                <div class="py-3 bg-light rounded shadow">
                	
                	<div class="container">

                		<div class="row">
                			<div class="col-md-12">
                				
                				<form action="template_list.php" method="POST">

	                				<!-- DELETE Button -->
	                				<div class="mb-3" align="right">
	            						<button type="submit" name="delete_btn" class="btn btn-danger">Delete</button>
	                				</div>

	                				<!-- Table -->
	                				<div class="table-responsive" style="overflow-x:auto;">
	                				<table class="table table-bordered border shadow">
	                					<thead class="bg-primary text-light" style="font-weight: bold; font-size: 17px;">
	                						<tr>
	                							<th>
	                								<!-- main checkbox 1 -->
	                								<div class="form-check form-check-inline" onclick="selects()" id="all_checkboxs_1">
														<label class="form-check-label" for="inlineCheckbox1" style="cursor: pointer;"> 
														<i class="fa-regular fa-square-full"></i> Select all
														</label>
													</div>
													<!-- main checkbox 2 -->
	                								<div class="form-check form-check-inline" onclick="deSelect()" id="all_checkboxs_2">
														<label class="form-check-label" for="inlineCheckbox2" style="cursor: pointer;">
														<i class="fa-regular fa-square-check" style="font-size: 20px;"></i> Deselect all
														</label>
													</div>
	                							</th>
	                							<th>ID</th>
	                							<th>Title</th>
	                							<th>Description</th>
	                							<th>Start</th>
	                							<th>End</th>
	                							<th>Actions</th>
	                						</tr>
	                					</thead>
	                					<tbody>
	                						<?php 
	                						// DISPLAY SURVEY TEMPLATES
											$sql_d_templates = "SELECT * FROM survey_template ORDER BY s_template_id DESC";
											$res_d_templates = mysqli_query($db_connect, $sql_d_templates);

											if (mysqli_num_rows($res_d_templates) > 0) {

												while($row_d_templates = mysqli_fetch_assoc($res_d_templates)) {
													$s_template_id = $row_d_templates['s_template_id'];
													$s_template_title = $row_d_templates['template_title'];
													$templ_description = $row_d_templates['survey_templ_desc'];
													$s_publish_date = $row_d_templates['date_publish'];
													$s_date_start = $row_d_templates['start_date'];
													$s_date_end = $row_d_templates['end_date'];

	                						?>

	                						<tr title="Published: <?php echo $s_publish_date; ?>" id="tr_hover" onclick="toggle_<?php echo $s_template_id;?>()">
	                							<td><input type="checkbox" name="chk[]" value="<?php echo $s_template_id; ?>" class="m-1" id="<?php echo $s_template_id;?>"></td>
	                							<td><?php echo $s_template_id;?></td>
	                							<td><?php echo $s_template_title; ?></td>
	                							<td><?php if(empty($templ_description)){echo"...";}else{echo $templ_description;}; ?></td>
	                							<td><?php echo $s_date_start; ?></td>
	                							<td><?php echo $s_date_end; ?></td>
	                							<td>
	                								<a href="manage_template.php?template_id_tl=<?php echo $s_template_id; ?>" class="text-primary"><i class="fa-solid fa-eye"></i> View</a>
	                								<a href="create_template.php?template_id_tl=<?php echo $s_template_id; ?>" class="m-0 text-secondary"><i class="fa-solid fa-pen-to-square"></i> Edit</a>
	                							</td>
	                						</tr>

	                						<!-- checkbox to list -->
	                						<script type="text/javascript">
	                							// Toggle checkbox
												function toggle_<?php echo $s_template_id;?>() {
													// Click
													document.getElementById("<?php echo $s_template_id;?>").click();
												}
	                						</script>

	                						<?php  
												}
											}
	                						?>

	                					</tbody>
	                				</table>
	                				</div>
	                				<!-- END Table -->
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





// Toggle checkbox (select all checkbox)
all_checkboxs_2.style.display = "none"; // default

// SELECT
function selects(){  
    var ele=document.getElementsByName('chk[]');  
    for(var i=0; i<ele.length; i++){  
        if(ele[i].type=='checkbox')  
            ele[i].checked=true;  
    }  
    all_checkboxs_1.style.display = "none"; // hide
    all_checkboxs_2.style.display = "block"; // hide
}  

// DESELECT
// (deselect all checkbox)
function deSelect(){  
    var ele=document.getElementsByName('chk[]');  
    for(var i=0; i<ele.length; i++){  
        if(ele[i].type=='checkbox')  
            ele[i].checked=false;  
          
    }  
    all_checkboxs_2.style.display = "none"; // hide
    all_checkboxs_1.style.display = "block"; // display
}   
</script>








</html>