
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

    #tr_hover:hover {
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
                <div class="container bg-light pt-1 pb-1 mb-3 shadow rounded">
                    <h3>Template List</h3>
                </div>


                <!-- CONTENTS... -->
                <div class="py-5 bg-light rounded shadow">
                	
                	<div class="container">

                		<div class="row">
                			<div class="col-md-12">

                				<!-- Actions -->
                				<div class="mb-3" align="right">
                					<form action="template_list.php" action="POST">
                						<button type="button" name="delete_btn" class="btn btn-danger">Delete</button>
                					</form>
                				</div>
                				
                				<!-- Table -->
                				<div class="table-responsive">
                				<table class="table table-striped border shadow">
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
                							<th>#</th>
                							<th>Title</th>
                							<th>Published</th>
                							<th>Actions</th>
                						</tr>
                					</thead>
                					<tbody>
                						<?php 
                						// DISPLAY SURVEY TEMPLATES
										$sql_d_templates = "SELECT * FROM survey_template";
										$res_d_templates = mysqli_query($db_connect, $sql_d_templates);

										if (mysqli_num_rows($res_d_templates) > 0) {

											while($row_d_templates = mysqli_fetch_assoc($res_d_templates)) {
												$s_template_id = $row_d_templates['s_template_id'];
												$s_template_title = $row_d_templates['template_title'];
												$s_publish_date = $row_d_templates['date_publish'];

                						?>

                						<tr id="tr_hover" onclick="toggle_<?php echo $s_template_id;?>()">
                							<td><input type="checkbox" name="chk" class="m-1" id="<?php echo $s_template_id;?>"></td>
                							<td><?php echo $s_template_id;?></td>
                							<td><?php echo $s_template_title; ?></td>
                							<td><?php echo $s_publish_date; ?></td>
                							<td><a href="create_template.php?template_id_tl=<?php echo $s_template_id; ?>" class="m-0 text-dark"><i class="fa-solid fa-pen-to-square"></i> Edit</a></td>
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


                						<!-- Select All Checkbox -->
                						<script type="text/javascript">

                							

                						</script>

                					</tbody>
                				</table>
                				</div>
                				<!-- END Table -->

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
    var ele=document.getElementsByName('chk');  
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
    var ele=document.getElementsByName('chk');  
    for(var i=0; i<ele.length; i++){  
        if(ele[i].type=='checkbox')  
            ele[i].checked=false;  
          
    }  
    all_checkboxs_2.style.display = "none"; // hide
    all_checkboxs_1.style.display = "block"; // display
}   
</script>








</html>