<?php
require 'config/config.php';
require GLOBAL_FUNC;
require CL_SESSION_PATH;
require CONNECT_PATH;
require ISLOGIN;// check kung nakalogin

if(!($g_user_role[0] == "ADMIN")){ 
    header("Location: ".BASE_URL); //balik sa login then sa login aalamain kung anung role at saang page landing dapat
    exit();
}

$page_title ="ADD USER";

$error = false;
$response_msg ="";
$title_form = "Add User";
$action_form = "save";

$get_id = isset($_POST['get_id']) ? $_POST['get_id'] :'';

$input =array();
$input['id_no'] = "";
$input['lastname'] = "";
$input['firstname'] = "";
$input['user_role'] = "";


if (isset($_POST['save']) AND $_POST['save']=="save"){
	$required_field = array("get_id","id_no","firstname","lastname","user_role","email");
    foreach ($required_field as $key) {
        if('get_id' == $key ){
            continue;
        }
         if(isset($_POST[$key])){
			$_POST[$key] = trim($_POST[$key]);
            if($_POST[$key] === ""){
				$error =  true;
				break;
		    }
        }else{
			$error = true;
			break;
		}
    }

    if($error){
        $session_class->setValue('error',"Input Invalid!");
        $response_msg ="Input Invalid!<br>";
    }else{
		$username = $input['id_no'] = $_POST['id_no'];
		$firstname = $input['firstname'] = $_POST['firstname'];
		$lastname = $input['lastname'] = $_POST['lastname'];
		$userrole = $input['user_role']  = $_POST['user_role'];
		$email = $input['email'] = $_POST['email'];

		/*$password = $_POST['password'];*/

		// Check User Role
		if(!in_array($userrole, array(1,2,3))){
			$error =true;
			$session_class->setValue('error',"User Role Invalid!");
			$response_msg ="User Role Invalid<br>";
		}

		// Check User ID if already exist
		$query1 = call_mysql_query("SELECT Username FROM users WHERE username = '".escape($db_connect,$username)."'");
		$count1 = call_mysql_num_rows($query1);
		if ($count1 > 0){
			$error =true;
			$session_class->setValue('error',"User ID Already Exist!");
			$msg ="Already Exist<br>";
		}

		// Check User Name and ID if Already Exist
		$query = call_mysql_query("SELECT username,firstname,lastname FROM users WHERE username = '".escape($db_connect,$username)."' AND lastname = '".escape($db_connect,$lastname)."' AND firstname = '".escape($db_connect,$firstname)."'");
		$count = call_mysql_num_rows($query);
		if ($count > 0){
			$error =true;
			$session_class->setValue('error',"User Name and ID  Already Exist!");
			$msg ="Already Exist<br>";
		}

		
		// Email Validation
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error = true;
			$session_class->setValue('error',"Email Invalid Format!");
			$msg = "Email Invalid Format";
		}
		$query_email = call_mysql_query("SELECT username FROM users WHERE email_address = '".$email."'");
		$count_email = call_mysql_num_rows($query_email);
		if($count_email > 0 ){
			$error = true;
			$session_class->setValue('error',"Email Already Exist!");
			$msg = "Email Already Exist!";
		}	
    }
    // If no error -> Insert new data
    if($error!=true){
            $password = set_password($username);
            $nusername = escape($db_connect,$username);
            $firstname = escape($db_connect,$firstname);
            $lastname = escape($db_connect,$lastname);
            $userrole =escape($db_connect,$userrole);
            $email = escape($db_connect,$email);

            if(call_mysql_query("INSERT INTO users (username,password,firstname,lastname,id_no,user_role,email_address) values('".$nusername."','".$password."','".$firstname."','".$lastname."','".$nusername."','".$userrole."','".$email."')")){
				$last_id = mysqli_insert_id($db_connect);
				$log = json_encode(array('USER_ID'=>$last_id,'USERNAME'=>$nusername,'FIRST_NAME'=>$firstname,'LAST_NAME'=>$lastname,'USER_ROLE'=>$userrole,'EMAIL'=>$email));
                activity_log_new("Add User ".$username." Details::".$log);
                $response_msg ="Successfully Saved!";
                $session_class->setValue('success',"Successfully Saved!");
                header("Location: user_management.php");
                exit();
            }
    }

}else if (isset($_POST['save']) AND $_POST['save']=="update" AND  is_digit($get_id)){ //update

	$required_field = array("get_id","id_no","firstname","lastname","user_role","email");
    foreach ($required_field as $key) {
         if(isset($_POST[$key])){
			$_POST[$key] = trim($_POST[$key]);
            if($_POST[$key] === ""){
				$error =  true;
				break;
		    }
        }else{
			$error = true;
			break;
		}
    }

    if($error){
        $response_msg ="Input Invalid!<br>";
    }else{
		$id_no = $_POST['id_no'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$userrole = $_POST['user_role'];
		$email = $_POST['email'];

		/*$password = $_POST['password'];*/
		if(!in_array($userrole, array(1,2,3))){
			$error =true;
			$response_msg ="User Role Invalid<br>";
		}


		$query = call_mysql_query("SELECT username,id_no FROM users WHERE  id_no = '".$id_no."' AND user_id != '".$get_id."'");
		$count = call_mysql_num_rows($query);
		if ($count > 0){
			$error =true;
			$response_msg ="Already Exist<br>";
		}
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error = true;
			$response_msg = "Email Invalid Format";
		}
		$query_email = call_mysql_query("SELECT username FROM users WHERE email_address = '".$email."' AND user_id != '".$get_id."'" );
		$count_email = call_mysql_num_rows($query_email);
		if($count_email > 0 ){
			$error = true;
			$response_msg = "Email Already Exist!";
		}
    }
    if($error!=true){

            $nid_no = escape($db_connect,$id_no);
            $firstname = escape($db_connect,$firstname);
            $lastname = escape($db_connect,$lastname);
            $userrole =escape($db_connect,$userrole);
            $email = escape($db_connect,$email);

			$old_data = "{}";
			$query_user = call_mysql_query("SELECT * FROM users WHERE user_id = '".$get_id."'" );
			$number = call_mysql_num_rows($query_user);
			if($number > 0 ){
				$data = mysqli_fetch_assoc($query_user);
				$old_data = array('USER_ID'=>$get_id,'USER_NO'=>$data['id_no'],'FIRST_NAME'=>$data['firstname'],'LAST_NAME'=>$data['lastname'],'USER_ROLE'=>$data['user_role'],'EMAIL'=>$data['email_address']);
			}

            if(call_mysql_query("UPDATE users SET id_no = '".$nid_no."',username = '".$nid_no."', firstname = '".$firstname."',lastname = '".$lastname."', user_role = '".$userrole."', email_address = '".$email."' WHERE user_id = '".$get_id."'")){
				if($num = call_mysql_affected_rows()){
					
					$to_log = array('USER_ID'=>$get_id,'USER_NO'=>$nid_no,'FIRST_NAME'=>$firstname,'LAST_NAME'=>$lastname,'USER_ROLE'=>$userrole,'EMAIL'=>$email);
					$change_array  = get_array_changes($old_data,$to_log);
					activity_log_new("Update User ".$id_no." USER_ID:".$get_id." - FROM Details ".json_encode($change_array['old_data'])." TO ".json_encode($change_array['new_data']));
					$response_msg ="Successfully Saved!";
					$session_class->setValue('success',"Successfully Saved!");
					header("Location: user_management.php");
					exit();
				}
            }
    }

}







// Manage User Department

// Type submit: Added new dept
if(isset($_POST['submit_add_user_manage_dept'])) {

	// get data
	$Selected_user = $_POST['sel_user_inDept']; // Select user
	$added_new_dept = $_POST['added_new_dept']; // Add new dept

	// check selected_user if empty, then send error msg
	if(empty($Selected_user)) {
		$msg_response['status']="error";
		$msg_response['msg']="Please Select User";
		$session_class->setValue('error',$msg_response['msg']);
		header("location: user_management.php?select_user_Alert=error");
		exit();
	}
	// if data is not empty -> Insert
	// else -> send error msg
	if(!empty($added_new_dept)) { // added new dept field

		// check if the Department is already exist
		$sql_ifAlreadyExist = "SELECT dept_name FROM tbl_survey_dept WHERE dept_name = '$added_new_dept'";
		$res_ifAlreadyExist = mysqli_query($db_connect, $sql_ifAlreadyExist);

		// Department Already Exist
		if (mysqli_num_rows($res_ifAlreadyExist) > 0) {
			$msg_response['status']="error";
			$msg_response['msg']="Department Already Exist!";
			$session_class->setValue('error',$msg_response['msg']);
			header("location: user_management.php?deptAlreadyExist=error");
			exit();
		}
		// Insert data into 'tbl_survey_dept'
		$sql_addNew_dept = "INSERT INTO tbl_survey_dept (dept_name) VALUES ('$added_new_dept')";
		if (mysqli_query($db_connect, $sql_addNew_dept)) {

			// Update users data
			$sql_update_usersDept = "UPDATE users SET dept_assign = '$added_new_dept' WHERE id_no = '$Selected_user'";
			if (mysqli_query($db_connect, $sql_update_usersDept)) {

				$msg_response['status']="success";
				$msg_response['msg']="Successfully Saved!";
				$session_class->setValue('success',$msg_response['msg']);
				header("location: user_management.php");
				exit();
			}

		}
	}else {
		// Add new dept alert
		$msg_response['status']="error";
		$msg_response['msg']="Please Enter Department";
		$session_class->setValue('error',$msg_response['msg']);

		header("location: user_management.php?new_deptAlert=error");
		exit(); 
	}
}

// Type submit: Select dept
if(isset($_POST['submit_select_user_manage_dept'])) {

	// get data
	$Selected_user = $_POST['sel_user_inDept']; // Select user
	$selected_dept = $_POST['selected_dept']; // selected dept

	// check data if empty, then send error msg
	if(empty($Selected_user)) {
		$msg_response['status']="error";
		$msg_response['msg']="Please Select User";
		$session_class->setValue('error',$msg_response['msg']);
		header("location: user_management.php?select_user_Alert=error");
		exit();
	}

	// if data is not empty -> Insert
	// else -> send error msg
	if(!empty($selected_dept)) { // added new dept field

		// // check if the Department is already exist
		// $sql_ifAlreadyExist = "SELECT dept_name FROM tbl_survey_dept WHERE dept_name = '$selected_dept'";
		// $res_ifAlreadyExist = mysqli_query($db_connect, $sql_ifAlreadyExist);

		// // Department Already Exist -> Update data
		// if (mysqli_num_rows($res_ifAlreadyExist) > 0) {
		// 	// Update data into 'tbl_survey_dept'
		// 	$sql_update_selectDept = "UPDATE tbl_survey_dept SET dept_name = '$selected_dept' WHERE dept_name = '$selected_dept'";
		// 	mysqli_query($db_connect, $sql_update_selectDept);
		// }

		// Update users data
		$sql_update_usersDept = "UPDATE users SET dept_assign = '$selected_dept' WHERE id_no = '$Selected_user'";
		if (mysqli_query($db_connect, $sql_update_usersDept)) {

			$msg_response['status']="success";
			$msg_response['msg']="Successfully Saved!";
			$session_class->setValue('success',$msg_response['msg']);
			header("location: user_management.php");
			exit();

		}
		
	}else {
		// Add new dept alert
		$msg_response['status']="error";
		$msg_response['msg']="Please Select Department";
		$session_class->setValue('error',$msg_response['msg']);

		header("location: user_management.php?select_deptAlert=error");
		exit(); 
	}


}






// Delete Department
if(isset($_POST['del_dept_submit_confirm'])) {
	// Get data
	$user_idNum = $_POST['del_dept_userIdNum'];
	$department_name = $_POST['del_department_name'];

	// Update / Removing user department_assigned to
	$sql_delDept = "UPDATE users SET dept_assign = '' WHERE dept_assign = '$department_name'";

	// if Success, delete the same name on department list
	if (mysqli_query($db_connect, $sql_delDept)) {
		// Delete row
		$sql_del_department_row = "DELETE FROM tbl_survey_dept WHERE dept_name = '$department_name'";
		if (mysqli_query($db_connect, $sql_del_department_row)) {
			$msg_response['status']="success";
			$msg_response['msg']="Removed";
			$session_class->setValue('success',$msg_response['msg']);
			header("location: user_management.php");
			exit();
		}
	}
}






// Edit User Department 
if(isset($_POST['edit_dept_submit'])) {
	// get data
	$id_user = $_POST['user_id'];
	$department_name = $_POST['del_dept_userIdNum'];


}






// END Manage User Department

// $msg_response['status']="error";
// $msg_response['msg']="You have not Enter Department";
// $session_class->setValue('error',$msg_response['msg']);

// header("location: user_management.php?new_deptAlert=error");
// exit(); 


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
        /*width: 50%; */
        transition: all .3s ease;
        /*background-color: #B3B6B7;*/
        padding: 10px; /* temp */
        width: 100%;
        margin: 0;
    }

	/* Add / Edit Section */
	.add_edit_section {
		padding: 10px;
		padding-left: 20px;
		padding-right: 20px;
	}

	/* Manage User Department */
	.manage_user_dept {
		padding-top: 10px;
		padding-bottom: 15px;
		padding-left: 20px;
		padding-right: 20px;
	}


	/* User List */
	.user_list_container {
		padding-top: 10px;
		padding-bottom: 10px;
		padding-left: 20px;
		padding-right: 20px;
		overflow-x:auto;
	}

	/* userl list table */
	.userlist_tbl {
		min-width: unset; 
		width: 100%;
		
	}


	/* resize input tags */
	.resize_input_tags {
		width: 100%;
		min-width: unset;
	}


	/* Users Department Management */

	/* User Department Table */
	.user_dept_tbl tr th {
		border-top: 1px solid black;
		border-bottom: 2px solid black;
	}
	/* Border td top */
	.tbl_border_td td {
		border-top: 1px solid #ACACAC;
	}
</style>

</head>

<body style="padding: 0; position: relative;">



    <!-- NAVBAR -->
    	<?php include DOMAIN_PATH."/app/global/topbar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->





    <div style="padding: 0;">
    	<div align="left" class="d-flex" style="margin-left: 0px; position: relative; left: 0px; width: 100%; padding: 0;">
    		
    		<!-- BEGIN CONTENT -->
            <!-- SIDEBAR -->
            <?php include DOMAIN_PATH."/app/global/side_bar.php"; ?>
            <!-- END SIDEBAR -->



            <!-- PAGE CONTAINER -->
            <div id="survey_info_container" class="border-0 shadow">

	            <!-- CONTENTS -->
	            <div class="py-3">
	            	<div class="container">
	            		<div class="row">
	            			<div class="col-md-12">


				            	<!-- HEADER TITLE -->
					            <div class="container bg-light pt-1 pb-1 mb-3 shadow rounded">
					                <h3>User Management</h3>
					            </div>

		
			            		<!-- Contents -->
								<!-- ADD/EDIT USER SECTION -->
								<!-- add_edit_section -->
								<div class="add_edit_section bg-light rounded shadow" style="margin: 0;">
									<!-- ADD USER -->
									<h3 class="header-title">ADD USER</h3>

									<?php if($get_id > 0) { ?>
									<a href="user_management.php"></a>
									<?php } ?>

									<form id="form_submit" method="post">
										<!-- Select Role -->
										<label>Select Role</label>
										<select class="form-control resize_input_tags" name ="user_role" placeholder="User Role" required>
											<option></option>
											<?php
												$user_role =array(1=>"Admin",2=>"Manager",3=>"Department");
												foreach($user_role as $id => $text) {
													$selected ="";
													if($id==$input['user_role']){
														$selected ="selected";
													}
													echo "<option value='".$id."' ".$selected .">".$text."</option>";
												}
											?>
										</select>
										<!-- id number -->
										<label for="">ID Number</label>
										<input type="text" class="form-control resize_input_tags" name="id_no" value="<?php echo $input['id_no'];?>" required>
										<!-- first name -->
										<label>First Name</label>
										<input type="text" class="form-control resize_input_tags" name="firstname" value="<?php echo $input['firstname'];?>" required>
										<!-- last name -->
										<label>Last Name</label>
										<input type="text" class="form-control resize_input_tags" name="lastname" value="<?php echo $input['lastname'];?>" required="">
										<!-- email address -->
										<label>Email Address</label>
										<input type="email" class="form-control resize_input_tags" name="email" value="<?php echo $input['email'];?>" required="">
										
										<!-- get id -->
										<input type="hidden" value="" id="get_id" name="get_id">

										<br>
										<!-- button -->
										<button name="save" value ="<?php echo $action_form;?>"  class="btn btn-outline-primary btn-rounded btn-sm">Add New User</button>

									</form>

								</div>
								<!-- END - ADD/EDIT USER SECTION -->
			            		<!-- END Contents -->



			            		<br>


			            		<!-- Manage User Department -->
			            		<div class="bg-light rounded shadow">

			            			<div class="manage_user_dept">

										<!-- User Department Table -->
										<h3 class="px-1">Manage/Set User Department</h3>
										<button type="button" class="btn btn-outline-primary btn-sm mb-2" id="toggle_hide_btn_userDeptTbl" onclick="toggleHide_userDept_tbl()"><i class="fa-solid fa-eye-slash"></i> Hide Table</button>
										<button type="button" class="btn btn-outline-primary btn-sm mb-2" id="toggle_show_btn_userDeptTbl" onclick="toggleShow_userDept_tbl()"><i class="fa-solid fa-eye"></i> Show Table</button>
										
										<div id="user_dept_tbl">
											<table class="table table-hover tbl_border_td">
												<thead class="user_dept_tbl thead-dark">
													<tr>
														<th>Users</th>
														<th>Department</th>
													</tr>
												</thead>
												<tbody>
													<?php  
														$sql_tbl_dept = "SELECT user_id, id_no, dept_assign, user_role, status, locked FROM users WHERE user_role = '3' AND status = '0' AND locked = '0' ORDER BY user_id DESC";
														$res_tbl_dept = mysqli_query($db_connect, $sql_tbl_dept);

														if (mysqli_num_rows($res_tbl_dept) > 0) {
															while($row_tbl_dept = mysqli_fetch_assoc($res_tbl_dept)) {
																$users_id_edit = $row_tbl_dept['user_id'];
																$user_id_no = $row_tbl_dept['id_no'];
																$user_department = $row_tbl_dept['dept_assign'];
													?>
													<tr>
														<td><?php echo "$user_id_no"; ?></td>
														<td>
															<form action="user_management.php" method="POST">
																<?php echo "$user_department"; ?>
																<!-- Name of Department -->
																<input type="text" name="del_dept_userIdNum" value="<?php echo $user_id_no; ?>" style="display: none;">
																<input type="text" name="user_id" value="<?php echo $users_id_edit; ?>" style="display: none;">

																<?php if(!empty($user_department)){ ?>
																	<button type="button" name="del_dept_submit_confirm" class="text-danger" title="Remove Department to this User" style="background: transparent; border: none; cursor: pointer;" data-toggle="modal" data-target="#del_exampleModal_<?php echo $users_id_edit; ?>"><i class="fa-solid fa-trash"></i> Del</button>
																<?php } ?>
																<button type="button" id="toggle_edit_btn" name="edit_dept_submit" class="text-primary" title="Edit / Add Department to this User" style="background: transparent; border: none; cursor: pointer;" data-toggle="modal" data-target="#exampleModal_<?php echo $users_id_edit; ?>"><i class="fa-solid fa-pen-to-square"></i> Edit</button>
															</form>
														</td>
													</tr>
													<!-- MODAL Delete -->
													<div class="modal fade" id="del_exampleModal_<?php echo $users_id_edit; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header text-danger">
																		<h5 class="modal-title" id="exampleModalLabel"><i class="fa-solid fa-circle-exclamation"></i> Delete</h5>
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																	<div class="modal-body" style="font-size: 17px;">
																		Are you sure want to delete <b>'<?php echo $user_department; ?>'</b>?
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
																		<form action="user_management.php" method="POST">
																			<input type="text" name="del_dept_userIdNum" value="<?php echo $user_id_no; ?>" style="display: none;">
																			<input type="text" name="del_department_name" value="<?php echo $user_department; ?>" style="display: none;">

																			<button type="submit" name="del_dept_submit_confirm" class="btn btn-danger">Delete</button>
																		</form>
																	</div>
																</div>
														</div>
													</div>
													<!-- END MODAL Delete -->
													

													<!-- MODAL Edit -->
													<?php include "modal_user_management.php"; ?>
													
													<?php
															}
														}
													?>
												</tbody>
											</table>
										</div>

			            			</div>
			            		</div>


			            		<br>



								<!-- USER LIST -->
								<!-- user_list_container -->
								<div class="user_list_container container bg-light rounded shadow">
									
									<h3 class="header-title">USER LIST</h3>

									<div class="border-2">
										<a href="#" id="add_new" class="btn btn-primary" style="margin-right: 10px;"><i class="fas fa-plus"></i> Add</a>
										<a href="#" id="delete_sel_btn" class="btn btn-danger"><i class="fas fa-trash"></i> Delete</a>
									</div>
									<br>

									<!-- TABLE DATABASE RECORDS -->
					                <div class="userlist_tbl" id="example-table"></div>

					                <br>
					                <!-- Save / Download Table -->
					                <div>
					                	<button id="download-csv" class="btn btn-outline-dark btn-sm">Download CSV</button>
					                    <button id="download-json" class="btn btn-outline-dark btn-sm">Download JSON</button>
					                    <button id="download-xlsx" class="btn btn-outline-dark btn-sm">Download XLSX</button>
					                    <button id="print-table" class="btn btn-outline-dark btn-sm">Print</button>
					                </div>
								</div>
								<!-- END USER LIST -->
					            <!-- END Container -->

								


	            				
	            			</div>
	            		</div>
	            	</div>
	            </div>

	
            </div> <!-- END PAGE CONTAINER -->

    	</div>
    </div>









	<?php if(isset($_GET['confirm_del'])) { ?>

	<?php } ?>









    <!-- all the js files -->
    <!-- bundle -->
<?php  include FOOTER_PATH; ?>
</body>
<!-- js bundles -->
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>

<script>
(function(){
var total_record =0;
var global_id = 0;
var global_action ="save";
var collection_select = [];

function user_role(cell,formatterParams,onRendered){
        if(cell.getValue() == 1){
             return "Admin"
        }

        if(cell.getValue() == 2){
             return "Manager"
        }

        if(cell.getValue() == 3){
        	return "Department";
        }
    }
	
function record_details(values, data, calcParams) { 
	if (values && values.length) {
       
	
      return values.length + ' of '+total_record;
	}
 }
var table = new Tabulator("#example-table", {
    ajaxSorting:true,  
    ajaxFiltering:true,
    height:"500px",
    tooltips:true,
    printAsHtml:true,
    headerFilterPlaceholder:"",
     layout:"fitDataFill",
    placeholder:"No Data Found",
    movableColumns:true,
    selectable:true, 
    ajaxURL:"<?php echo BASE_URL;?>app/admin_user_table.php", 
    ajaxProgressiveLoad:"scroll",
    ajaxProgressiveLoadScrollMargin:1,
    printConfig:{
        columnGroups:false, 
        rowGroups:false,
    },
    ajaxLoader: true,
    ajaxLoaderLoading: 'Fetching data from Database..',
    selectableRollingSelection:false,
    paginationSize:<?php echo QUERY_LIMIT; ?>, 

    columns:[
        {formatter:"rowSelection",width:50, hozAlign:"center", headerSort:false,download:false,print:false, cellClick:function(e, cell){
            cell.getRow().toggleSelect();
        }},

        {title:"Name", field:"name",formatter:"textarea",bottomCalc:record_details, titlePrint:"Name", sorter:"string",headerFilter:"input",headerFilterLiveFilter: false},
        {title:"Username", field:"username", titlePrint:"ID Number", sorter:"string",headerFilter:"input",headerFilterLiveFilter: false}, 
        {title:"User Type", field:"user_role", titlePrint:"User Type", sorter:"string",headerFilter:"select",headerFilterParams:{0:"",1:"Admin",2:"Manager",3:"Department"},formatter:user_role}, 
		{title:"Email Address", field:"email_address", titlePrint:"Email Address", sorter:"string",headerFilter:"input",headerFilterLiveFilter: false},
         {formatter:buttonFormatter, width:100, headerSort: false,headerFilter: false,download:false,print:false,hozAlign:"center",cellClick:function(e, cell){
             cell.getRow().toggleSelect();
        }},
		{formatter:buttonReset, width:200, headerSort: false,headerFilter: false,download:false,print:false,hozAlign:"center",cellClick:function(e, cell){
			cell.getRow().toggleSelect();
        }}, 
    ],ajaxResponse:function(url, params, response){ 
		if(response.total_record){
			total_record = response.total_record;
		}	
        return response; 
    },renderComplete:function(){
        var table =this;
        this.selectRow(collection_select);  
    },
    rowSelected:function(row){
        if(collection_select.indexOf(row.getData().id) === -1){
			collection_select.push(row.getData().id);
		}
    },
    rowDeselected:function(row){
        if(collection_select.indexOf(row.getData().id) !== -1){
            collection_select.splice(collection_select.indexOf(row.getData().id), 1);
        }
    },
	ajaxRequesting: function (url, params) {
		if(typeof this.modules.ajax.showLoader() != "undefined" ){
			this.modules.ajax.showLoader();
		}
	},
});

var add_new  = document.getElementById('add_new');
addListener(add_new,"click", function(){
var username = document.querySelector('input[name=id_no]');
	var firstname = document.querySelector('input[name=firstname]');
	var lastname = document.querySelector('input[name=lastname]');
	var user_role = document.querySelector('select[name=user_role]');
	var email = document.querySelector('input[name=email]');
	var get_id = document.querySelector('#get_id');
	if(username){
		username.value ="";
	}
	if(user_role){
		user_role.value = "";
	}
	if(firstname){
		firstname.value = "";
	}
	if(lastname){
		lastname.value = "";
	}
	if(email){
		email.value= "";
	}
	if(get_id){
		get_id.value = "";
		global_id = 0;
	}
	var title = document.querySelector('.header-title');
	if(title){
		title.innerHTML = "ADD USER";
	}
	var save = document.querySelector('button[name=save]');
	if(save){
		save.value = "save";
		save.innerHTML ="Add New User";
		global_action ="save";
	}
});


function buttonReset(cell,formatterParams){
    var cellEl = cell.getElement(); //get cell DOM element
	var linkBut = document.createElement("span");
	var id = cell.getData().id; 
	linkBut.innerHTML = "<a href='#' class='btn btn-outline-dark btn-rounded btn-sm ml-1' >RESET PASSWORD</a>";
	addListener(linkBut,"click", function(){
		Swal.fire({
		  title: 'Are you sure to Reset Password?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, reset it!'
		}).then((result) => {
		  if (result.isConfirmed) {
			$.post("<?php echo BASE_URL;?>app/ajax_reset_password.php", { action : 'RESET_PASSWORD',user_id: cell.getData().id,type:"ADMINS"}, 
				function(returnedData){
					var obj = returnedData;// JSON.parse(returnedData);
					if(obj.result == "success"){
						Swal.fire({
						  title: '<strong>New Password</strong>',
						  padding: '3em',
						   icon: 'info',
						  html:'<b>'+obj.msg+'</b>',
						  showCancelButton: false,
						  allowOutsideClick: false,
						  allowEscapeKey: false,
						  confirmButtonText:'<i class="fas fa-clipboard"></i> Copy',
						  preConfirm: (login) => {
							copyToClipboard(obj.msg);
							success_notif('Copy to Clipboard');
							return false;
						  },
						  allowOutsideClick: () => !Swal.isLoading()
						})
					}else{
						warning_notif("Error: "+obj.errors);                    
					}
			}).fail(function(){
				  warning_notif("Error Encounter");
			});	
		  }
		})
	});
	
	return cellEl.appendChild(linkBut);
}

function copyToClipboard(value) {
  const str = value;
  const el = document.createElement('textarea')
  el.value = str
  el.setAttribute('readonly', '')
  el.style.position = 'absolute'
  el.style.left = '-9999px'
  document.body.appendChild(el)
  el.select()
  document.execCommand('copy')
  document.body.removeChild(el)
}


function buttonFormatter(cell,formatterParams){
    var cellEl = cell.getElement(); //get cell DOM element
	var linkBut = document.createElement("span");
	var id = cell.getData().id; 
	linkBut.innerHTML = "<a href='#' class='btn btn-outline-dark btn-rounded btn-sm ml-1' ><i class='fas fa-pencil-alt' title='update'></i> EDIT</a>";
	addListener(linkBut,"click", function(){
		var username = document.querySelector('input[name=id_no]');
		var firstname = document.querySelector('input[name=firstname]');
		var lastname = document.querySelector('input[name=lastname]');
		var user_role = document.querySelector('select[name=user_role]');
		var email = document.querySelector('input[name=email]');
		var get_id = document.querySelector('#get_id');
		if(username){
			username.value = cell.getData().username;
		}
		if(user_role){
			user_role.value = cell.getData().user_role;
		}
		if(firstname){
			firstname.value = cell.getData().firstname;
		}
		if(lastname){
			lastname.value = cell.getData().lastname;
		}
		if(email){
			email.value=cell.getData().email_address;
		}
		if(get_id){
			get_id.value = cell.getData().id;
			global_id = cell.getData().id;
		}
		var title = document.querySelector('.header-title');
		if(title){
			title.innerHTML = "EDIT USER INFO";
		}
		var save = document.querySelector('button[name=save]');
		if(save){
			save.value = "update";
			save.innerHTML ="Update";
			global_action ="update";
		}

	});
	return cellEl.appendChild(linkBut);
}


var form =  document.getElementById('form_submit');
addListener(form, "submit", function(e) {
	var username = document.querySelector('input[name=id_no]');
	var firstname = document.querySelector('input[name=firstname]');
	var lastname = document.querySelector('input[name=lastname]');
	var user_role = document.querySelector('select[name=user_role]');
	var email = document.querySelector('input[name=email]');
	var get_id = document.querySelector('#get_id');
	var save = document.querySelector('button[name=save]');
	var error=false;
	if(!(username && firstname && lastname && user_role && email && get_id && save)){
		error =true;
	}
	if(error){
		try {
			warning_notif('Error: Data was Altered!');
			e.preventDefault(); 
		} catch(ex) {
			console.log('An error occurred in submitting form');
		}
	}

	if(username.value.trim()==""){ error= 'ID Number is required!'; username.focus();}
	else if(firstname.value.trim()==""){ error= 'First Name is required!'; firstname.focus();}
	else if(lastname.value.trim()==""){ error= 'Last Name is required!'; lastname.focus();}
	else if(ValidateEmail(email.value.trim())==false){ error= 'Email must be valid!'; email.focus();}
	else if(isNaN(user_role.value) || user_role.value.trim()==""){ error= 'Select Role is required!';  } else{ error = false; };
	

	if(global_action == "save"){
		global_id =0;
	}else if(global_id != 0 && global_action == "update"){
		//none
	}else{
		try {
			warning_notif('Error:Data was Altered!')
			e.preventDefault(); 
		} catch(ex) {
			console.log('An error occurred in submitting form');
		}
	}
	
	if(error !=false){
		if(error==true){
			warning_notif('Error: Data was Altered!');
		}else{
			warning_notif('Error: '+ error);
		}
		try {
			e.preventDefault(); 
		} catch(ex) {
			console.log('An error occurred in submitting form');
		}
		
	}else if(get_id && save){
		get_id.value = global_id;
		save.value = global_action;
	}
});



addListener(document.getElementById('delete_sel_btn'), "click", function() {
	if(collection_select.length == 0){
		warning_notif('Please select Item in the table!');
	}else{
		Swal.fire({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
		}).then((result) => {
		  if (result.isConfirmed) {
				
				var json_id = JSON.stringify(collection_select);
				$.post("<?php echo BASE_URL;?>app/ajax_delete_user.php", { action : 'DELETE_USER',user_ids:json_id}, 
					function(returnedData){
						var obj = returnedData;// JSON.parse(returnedData);
						if(obj.result == "success"){
								table.deleteRow(collection_select);
								var len = collection_select.length;
								total_record = total_record - len;
								collection_select=[];
								table.recalc();
								Swal.fire(
								  'Deleted!',
								  'Data has been deleted.',
								  'success'
								);
						}else{
							warning_notif("Error: "+obj.errors);                    
						}
				}).fail(function(){
					  warning_notif("Error Encounter");
				});
		  }
		})
	}
});

addListener(document.getElementById('download-csv'), "click", function() {
        table.download("csv", "users_"+getFormattedTime()+".csv");
});
addListener(document.getElementById('download-json'), "click", function() {
        table.download("json", "users_"+getFormattedTime()+".json");
});
addListener(document.getElementById('download-xlsx'), "click", function() {
        table.download("xlsx", "users_"+getFormattedTime()+".xlsx");
});
addListener(document.getElementById('print-table'), "click", function() {
         table.print(false, true);

});



function add_overlay(){
	var body = document.querySelector('body');	
	var overlay = document.querySelector('.overlay');	
	if(overlay){
	}else{
		var div = document.createElement('div');
		div.className = "overlay";
		body.appendChild(div);
	}
}
add_overlay();
$(document).on({
	ajaxStart: function(){
		addClass(document.querySelector('body'),'loading');
		isPaused = true;
	},
	ajaxStop: function(){ 
		removeClass(document.querySelector('body'),"loading");
		isPaused = false;
	}    
});

})();






toggle_show_btn_userDeptTbl.style.display = "none"; // hide the show_btn
// Toggle Hide User Department Table
function toggleHide_userDept_tbl() {
	
	toggle_hide_btn_userDeptTbl.style.display = "none"; // hide own btn
	toggle_show_btn_userDeptTbl.style.display = "block"; // show other btn

	// hide table
	user_dept_tbl.style.display = "none";
}

// Toggle Show User Department Table
function toggleShow_userDept_tbl() {

	toggle_show_btn_userDeptTbl.style.display = "none"; // hide own btn
	toggle_hide_btn_userDeptTbl.style.display = "block"; // show other btn

	// show table
	user_dept_tbl.style.display = "block";
}







// Notification msg
<?php 
    $msg = $session_class->getValue('success');
    if(isset($msg) AND $msg !=""){
          echo "success_notif('".$msg."');";
          $session_class->dropValue('success');
    }
    $msg = $session_class->getValue('error');
    if(isset($msg) AND $msg !=""){
          echo "warning_notif('".$msg."');";
          $session_class->dropValue('error');
    }

?>
</script>
</html>

