<?php 
// delete_question_tmpl.php
require 'config/config.php';
require CONNECT_PATH;

// GET DATA
$id = $_POST['q_id'];


$sql_del_q = "DELETE FROM tbl_tmpl_body2 WHERE id = '$id'";

if (mysqli_query($db_connect, $sql_del_q)) {
	//success
}

?>