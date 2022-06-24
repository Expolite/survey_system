<?php
define ('LOGIN_AUTH',true);
/**
 * Create, or retrieve, the session variable.
 */

 // User ID
$s_user_id = $session_class->getValue('user_id');
if (!isset($s_user_id)) { // hindi naka login
	header("Location: ".BASE_URL."index.php");
	exit();
}

$url = page_url();
if (empty($session_class->getValue('page_path'))) {
    $session_class->setValue('page_path',$url);
}

$g_user_role = $session_class->getValue('role_id');
if (!isset($g_user_role) OR empty($g_user_role)) {
	$session_class->end();
	include HTTP_401;
	exit();
}


// User Profile Picture
$global_profile_pic = $session_class->getValue('photo');
if (!isset($global_profile_pic) OR empty($global_profile_pic)) { /* is the location is empty */
	$table_pic = "";
	$tb_id="";
	if($g_user_role[0] == "ADMIN" OR $g_user_role[0] == "REGISTRAR"){ /* if the role are not exist */
		$table_pic = "users"; // this is table name from db
		$tb_id="user_id"; // column name from table name db
	}
	$get_path = get_profile_pic($s_user_id,$tb_id,$table_pic);
	//echo $get_path."SS";
	if(empty(trim($get_path))){ // if the location is empty; if the user don't have picture yet -> use default picture
		$get_path = BASE_URL."images/placeholder.png";
	}

	// if the user picture is empty


	$session_class->setValue('photo',$get_path);
    $global_profile_pic = $get_path;
}

// GET IMG LOCATION

$sql_sidebar_profile_info = "SELECT location FROM users WHERE user_id = '$s_user_id'";
$res_sidebar_profile_info = mysqli_query($db_connect, $sql_sidebar_profile_info);

if (mysqli_num_rows($res_sidebar_profile_info) > 0) {
while($row_sidebar_profile_info = mysqli_fetch_assoc($res_sidebar_profile_info)) {
	$g_logo_sidebar = $row_sidebar_profile_info['location'];
}
}


$global_fy = array();
$global_my_class = array();
$g_user_id = $session_class->getValue('user_id'); // user fullname
$g_user_name = $session_class->getValue('name'); // user fullname
$g_first_name = $session_class->getValue('fname'); // user first name
$g_middle_name = $session_class->getValue('mname'); // user middle name
$g_last_name = $session_class->getValue('lname'); // user last name

?>