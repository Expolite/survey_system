<?php
require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;// check kung nakalogin
require VALIDATOR_PATH;
require PASSWORD_HELPER;

$page_title ="Profile Settings";
$error_encounter = false;


// if(!($g_user_role[0] == "ADMIN")){ 
// 	header("Location: ".BASE_URL); 
// 	exit();
// }


include DOMAIN_PATH."/app/update_password.php";
// $g_fy = get_school_year();

if(isset($_POST['submit_profile']) AND $_POST['submit_profile'] =="update_profile" AND is_digit($s_user_id)){ // update 
  
  // trim(); all
  foreach ($_POST as $key => $value) {
        $_POST[$key] = trim($value);
    }

    // EMAIL
    $email = isset($_POST['email_add']) ? $_POST['email_add'] :'' ;
	$email_query="";
	if ($email !== ""){	
		$email_query = "email_address='".escape($db_connect,$email)."'";
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error_encounter=true;
			$message['msg'] = '';
			$message['errors'] = 'Invalid Email!';
			$message['result']= 'error'; 
		}

        // looking for duplication
		// $where = " email_address = '".escape($db_connect,$email)."' AND user_id != '".$s_user_id."'";
		// if(isduplicate_where('users','email_address',$where)){  
		// 	$error_encounter=true;
		// 	$message['msg'] = '';
		// 	$message['errors'] = 'Email Already Exist!';
		// 	$message['result']= 'error';
		// }

        // Check if there's a duplication
        // SELECT email_address FROM users WHERE email_address = 'kanna@yahoo.com';
        $sql_email_duplication = "SELECT email_address FROM users WHERE email_address = '$email'";
        $res_email_duplication = mysqli_query($db_connect, $sql_email_duplication);

        if (mysqli_num_rows($res_email_duplication) > 0) {
            header("location: test.php");
            exit();
        }
	}

    // First Name
    $fname = isset($_POST['fname']) ? $_POST['fname'] :'' ;
    $fname_query="";
    if ($fname !== ""){ 
        $fname_query = "firstname='".escape($db_connect,$fname)."'";

    //     // Looking for duplication
    //     // $fname_where = "firstname = '".escape($db_connect,$fname)."' AND user_id != '".$s_user_id."'";
    //     // if(isduplicate_where('users','firstname',$fname_where)){  
    //     //     $error_encounter=true;
    //     //     $message['msg'] = '';
    //     //     $message['errors'] = 'First Name Already Exist!';
    //     //     $message['result']= 'error';
    //     // }
    }

    // Last Name
    $lname = isset($_POST['lname']) ? $_POST['lname'] :'' ;
    $lname_query="";
    if ($lname !== ""){ 
        $lname_query = "lastname='".escape($db_connect,$lname)."'";

    //     // Looking for duplication
    //     $lname_where = "lastname = '".escape($db_connect,$lname)."' AND user_id != '".$s_user_id."'";
    //     if(isduplicate_where('users','lastname',$lname_where)){  
    //         $error_encounter=true;
    //         $message['msg'] = '';
    //         $message['errors'] = 'Last Name Already Exist!';
    //         $message['result']= 'error';
    //     }
    }

    $target_file='';
	$acceptable = array(
        'image/jpeg',
        'image/jpg',
        'image/gif',
        'image/png'
    );

    // if not empty
    // if(empty($_FILES['user_image']))

    if(!empty($_FILES['user_image']['tmp_name'])){
        $target_dir = DOMAIN_PATH.DIRECTORY_SEPARATOR."upload";
        $target_name= "user_image_".uniqid().$s_user_id.".tmp";
        $target_file = $target_dir.DIRECTORY_SEPARATOR.$target_name;
		$old_file = $target_dir.DIRECTORY_SEPARATOR."".basename($global_profile_pic);
		
		
		if(!in_array($_FILES['user_image']['type'], $acceptable) && (!empty($_FILES["user_image"]["type"]))) {
			$error_encounter=true;
			$message['msg'] = '';
			$message['errors'] = 'Invalid file type. Only , JPG, GIF and PNG types are accepted.';
			$message['result']= 'error'; 
		}
    }
	
	


    if($error_encounter==false){
			$upload_query="";
            if(!empty($old_file)){
                if (file_exists($old_file)) {
                       unlink($old_file);
                }
                if (move_uploaded_file($_FILES["user_image"]["tmp_name"], $target_file)) {
                    $target_file = 'upload'.DIRECTORY_SEPARATOR.$target_name;
					$upload_query = "location='".escape($db_connect,$target_file)."'";
                } else {
                    $error_encounter=true;
                    $message['msg'] = '';
                    $message['errors'] = 'Unable to Upload Image';
                    $message['result'] = 'error'; 
                }
            }

            // // Select location
            // $sql_get_location = "SELECT location FROM users WHERE user_id = '".$s_user_id."'";
            // $result_get_location = mysqli_query($db_connect, $sql_get_location);

            // if (mysqli_num_rows($result_get_location) > 0) {
            //   // output data of each row
            //   while($row_get_location = mysqli_fetch_assoc($result_get_location)) {

            //     $get_location = $row_get_location["location"];
            //   }
            // }

            // if all fields are empty
            if(empty($email_query) AND empty($fname_query) AND empty($lname_query) AND empty($upload_query)) {
                $message['msg'] = '';
                $message['errors'] = 'All fields are empty!';
                $message['result']= 'error'; 

                $session_class->setValue('error','All fields are empty!');
                $session_class->setValue('photo',BASE_URL.$target_file);

                header("Location: manage_profile.php");	
                exit();
            }

            // UPDATE data
            if($error_encounter ==  false){


                // check if the value is empty or not
                $email_query .= ($email_query!="" AND $fname_query!="") ? ",":'';
                $fname_query .= ($fname_query!="" AND $lname_query!="") ? ",":'';
                $lname_query .= ($lname_query!="" AND $upload_query!="") ? ",":'';


                $update = "UPDATE users SET ".$email_query." ".$fname_query." ".$lname_query." ".$upload_query." WHERE user_id = '".$s_user_id."'";
				
                 if(mysqli_query($db_connect, $update)){
                        $message['msg']="";
                        $message['result'] ="success";
                        $message['errors'] ="";

                        $session_class->setValue('success','Successfully Saved!');
                        $session_class->setValue('photo',BASE_URL.$target_file);
						
				
					header("Location: manage_profile.php");		
                    exit();

              
                }else{
                    // $message['msg']="";
                    // $message['result'] ="error";
                    // $message['errors'] .="Unable to save!\n\r";
                    //echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);

                    // default error msg
                    $error_encounter=true;
                    $message['msg'] = '';
                    $message['errors'] = 'Invalid po!';
                    $message['result']= 'error'; 
                }


            }
        

    }

}



if(isset($_POST['submit_password']) AND $_POST['submit_password'] =="update_password"  AND is_digit($s_user_id)){ // update 
    $message_password=array();
    foreach ($_POST as $key => $value) {
        $_POST[$key] = trim($value);
    }
	
    $uform['cpass']= trim($_POST['current_password']);
    $uform['npass']= trim($_POST['new_password']);
    $uform['cmpass']= trim($_POST['confirm_password']);


    $validator = new FormValidator(); 
    $validator->set_field_names($update_password_form_labels); 
    $validated = $validator->validate($_POST, $update_password_form_rules);

    $password =  get_user_data($s_user_id,'users','password','user_id');
    $input_password =  set_password($uform['cpass']);
	$new_password =  set_password($uform['cmpass']);
	/*
	$collect_password = password_history($s_user_id,'ADMIN');
	
	if(in_array($new_password,$collect_password)){
		$error_encounter=true;
		$message_password['msg'] = '';
		$message_password['errors'] .= '**Please choose a password that you haven\'t used before<br>';
		$message_password['result'] = 'error';
	}
	*/
	if(strlen($uform['npass']) < 8 ){
		$error_encounter=true;
		$message_password['msg'] = '';
		$message_password['errors'] .= '**Your password at least 8 characters long <br>';
		$message_password['result'] = 'error';
	}
    if($password != $input_password ){
            $error_encounter=true;
            $message_password['msg'] = '';
            $message_password['errors'] .= '**Current password not match<br>';
            $message_password['result'] = 'error';
    }

    if($uform['npass'] != $uform['cmpass'] ){
            $error_encounter=true;
            $message_password['msg'] = '';
            $message_password['errors'] .= "**New Password and Confirm Password not match<br>";
            $message_password['result'] = 'error';
    }


    if($error_encounter!=TRUE){
        if($validated === TRUE){// kung true validate 

                $update = "UPDATE users SET password = '".escape($db_connect,$new_password)."' WHERE user_id = '".$s_user_id."' ";

                 if(mysqli_query($db_connect, $update)){
						//insert_password_history($new_password,$s_user_id,'ADMIN');
                        $message_password['msg']="";
                        $message_password['result'] ="success";
                        $message_password['errors'] ="";

                        $session_class->setValue('success','Successfully Updated');
                        header("Location: manage_profile.php");
                        exit();

              
                } else{
                    $message_password['msg']="";
                    $message_password['result'] ="error";
                    $message_password['errors'] .="Unable to save!\n\r";
                    //echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
                }

        }

    }





}

?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0"/>
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";

?>
<style>
    .da-thumbs  img{
        height: auto;
        max-width: 100%;
        vertical-align: middle;

    }
    .img-polaroid {
        padding: 4px;
        background-color: #fff;
        border: 1px solid #ccc;
        border: 1px solid rgba(0,0,0,0.2);
        -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.1);
        box-shadow: 0 1px 3px rgba(0,0,0,0.1);
    }
	
	.divider {
		padding: 0 5px;
		color: #ccc;
	}
</style>
</head>

<body data-layout="detached">
    <!-- HEADER -->
  <?php include DOMAIN_PATH."/app/global/topbar.php"; ?>     <!--topbar -->
    <div class="container-fluid active">
        <div class="wrapper in">
            <!-- BEGIN CONTENT -->
            <!-- SIDEBAR -->
            <?php
			// if($g_user_role[0] == "VPAA"){
			// 	include DOMAIN_PATH."/app/global/vpaa_sidebar.php";
			// }else{
			// 	include DOMAIN_PATH."/app/global/side_bar.php"; 
			// }?>
            <!--END SIDEBAR-->
            <!-- PAGE CONTAINER-->
            <div class="content-page">
                <div class="content">

                    <!-- BEGIN PlACE PAGE CONTENT HERE -->
                    <div class="row">
                        <div class="col-xl-12">

                            <!-- HEADER TITLE -->
                            <div class="container-fluid bg-light pt-1 pb-1 mb-3 shadow rounded">
                                <h3><?php echo $page_title; ?></h3>
                            </div>

                        </div><!-- end col-->
                    </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body shadow" style="padding: 10px;">
									
                                        <h4 class="mb-3 header-title"></h4>
                                        <div class="table-responsive-sm">
										
										
                                        <div class="row ">
                                            <div class="col-xl-7">
                                                <div class="card">
                                                    <div class="card-body" style="padding: 10px;">

                                                        <h4>Edit Profile Info</h4>

                                                        <div id="profile_form_msg" class="alert  <?php echo isset($message['errors'])  ? 'alert-warning' : '';?> alert-dismissable" style="display: block;"> <?php //<!-- id='add_instructor_form_msg' - id ng msg div - change_this --> ?>
                                                            <?php echo isset($message['errors']) ? $message['errors']:''; //kung may error sa saving?>
                                                        </div>
                                                            <form action="manage_profile.php" id="profile_form" class="form-horizontal form-groups-bordered validate" target="_top" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
															     
                                                               <!-- Change Profile -->
                                                                <div class="form-group">
                                                                    <label> Photo <small>(The image size should be any square image)</small> </label>
                                                                    <div class="d-flex mt-2">
                                                                        <div class="">
                                                                            <img class="rounded-circle img-thumbnail" src="<?php echo BASE_URL;?>images/placeholder.png" alt="" style="height: 50px; width: 50px;">
                                                                        </div>
                                                                        <div class="flex-grow-1 pl-2">
                                                                            <div class="input-group">
                                                                                <div class="custom-file">
                                                                                    <input type="file" class="custom-file-input" name="user_image" id="user_image" onchange="changeTitleOfImageUploader(this)" accept="image/*">
                                                                                    <label class="custom-file-label ellipsis" for="">Choose file</label>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <!-- Basic personal Info -->
                                                                <div class="form-group">
                                                                    <div>
                                                                        <label>First name</label>
                                                                        <input type="text" name="fname" id="fname" value="" class="form-control">
                                                                    </div>
                                                                    <div>
                                                                        <label>Last name</label>
                                                                        <input type="text" name="lname" id="lname" value="" class="form-control">
                                                                    </div>
                                                                </div>

                                                                <!-- Email Address -->
                                                                <div class="form-group">
                                                                    <label>Email (For Recovery):</label>
                                                                    <input type="email" class="form-control" name="email_add" id="email_add" value="">
                                                                </div>

                                                                <div class="row justify-content-center">
                                                                    <button type="submit" name="submit_profile" value="update_profile" class="btn btn-primary">Update profile</button>
                                                                </div>
                                                            </form>
                                                                
                                            </div> <!-- end card body-->
                                        </div> <!-- end card -->
                                        </div>
                                        <div class="col-xl-5">
                                            <div class="card">
                                                <div class="card-body">
                                                   <form action="manage_profile.php" name="update_password_form" id="update_password_form" class="form-horizontal form-groups-bordered validate" target="_top" method="POST" accept-charset="utf-8" onsubmit="return validator_password()">
                                                        
                                                        <div id="password_form_msg" class="alert <?php echo isset($message_password['errors']) ? 'alert-warning' : '';?> alert-dismissable" style="display: block;"> <?php //<!-- id='add_instructor_form_msg' - id ng msg div - change_this --> ?>
                                                            <?php echo isset($message_password['errors']) ? $message_password['errors']:''; //kung may error sa saving?>
                                                        </div>

                                                        <div class="form-group">
    														<label>Current password</label>
    													    <div class="input-group mb-3">
    															  <input type="password" class="form-control" name="current_password" id="current_password" value="" required="">
    															  <div class="input-group-append">
    																<span class="input-group-text" onclick="password_show_hide('current_password');">
    																  <i class="fas fa-eye" id="show_eye_current_password"></i>
    																  <i class="fas fa-eye-slash d-none" id="hide_eye_current_password"></i>
    																</span>
    															  </div>
    														</div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>New password</label>
    															<div class="input-group mb-3">
    															 <input type="password" class="form-control" name="new_password" id="new_password" value="" required="">
    															  <div class="input-group-append">
    																<span class="input-group-text" onclick="password_show_hide('new_password');">
    																  <i class="fas fa-eye" id="show_eye_new_password"></i>
    																  <i class="fas fa-eye-slash d-none" id="hide_eye_new_password"></i>
    																</span>
    															  </div>
    														</div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Confirm new password</label>
                                                        	<div class="input-group mb-3">
    															 <input type="password" class="form-control" name="confirm_password" id="confirm_password" value="" required="">
    															  <div class="input-group-append">
    																<span class="input-group-text" onclick="password_show_hide('confirm_password');">
    																  <i class="fas fa-eye" id="show_eye_confirm_password"></i>
    																  <i class="fas fa-eye-slash d-none" id="hide_eye_confirm_password"></i>
    																</span>
    															  </div>
    														</div>
    													</div>

                                                        <div class="row justify-content-center">
                                                            <button type="submit" name="submit_password" value="update_password" class="btn btn-info">Update password</button>
                                                        </div>

                                                    </form>
                                                </div>
                                        </div>
                                        </div>
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
    <!-- all the js files -->
    <!-- bundle -->
<?php  include FOOTER_PATH; ?>
</body>
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; 
include DOMAIN_PATH."/app/password_js_helper.php";
?>
<script >

$('#new_password').PassRequirements();


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
