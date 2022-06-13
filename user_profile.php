<?php 

require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;// check kung nakalogin

?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";
?>
</head>
<body>

    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/topbar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->




    <!-- CONTENTS... -->
    <div style="border: 1px solid black;">
        <form action="#">
            <img src="<?php echo $global_profile_pic;?>" 
                alt="profile pic" 
                width="200px">
            
            <input type="file">

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- END CONTENTS -->



    
    <!-- FOOTER -->
    <?php  include FOOTER_PATH; ?>
    <!-- END FOOTER -->

    <!-- all linked js -->
    <?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>

<script>
addClass(document.getElementById('student_link'),'active');
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
    
</body>
</html>