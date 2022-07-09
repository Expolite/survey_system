<?php  
// templ_add_q.php


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
</style>


<!-- Sweet Alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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




			<!-- PAGE CONTAINER -->
			<div id="survey_info_container" class="border-0 shadow">
				
				<!-- HEADER TITLE -->
                <div class="container bg-light pt-1 pb-1 mb-3 shadow border rounded">
                    <h3>Manage Survey Template Questions</h3>
                </div>

                <!-- CONTENTS -->
                <div class="py-4 bg-light rounded border shadow mb-3">
                	<div class="container">
                		<div class="row">
                			<div class="col-md-12">
                				
                				<!-- Add Questions -->
                				<!-- Dynamic Fields -->
								<!-- Enter question -->
								<label style="font-size: 20px; font-weight: bold;">Add more questions</label>
								<div id="survey_options">
									<!-- <input type="text" class="form-control mb-2" name="add_question[]" placeholder="Enter question"> -->
								</div>
						
								<!-- Add button -->
								<button type="button" class="btn btn-primary mt-2" id="add_more_fields" style="margin-right: 5px;"><i class="fa-solid fa-plus"></i> Add</button>
								<button type="button" class="btn btn-danger mt-2" id="remove_fields"><i class="fa-solid fa-minus" style="font-size: 10px;"></i> Remove</button>
                				<!-- END Add Questions -->


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




<!-- all the js files -->
<!-- bundle -->

<!-- all linked js -->
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>






<!-- DYNAMIC FIELD -->
<script type="text/javascript">
  var survey_options = document.getElementById('survey_options'); // id container
  var add_more_fields = document.getElementById('add_more_fields'); // add btn
  var remove_fields = document.getElementById('remove_fields'); // remove btn

  // Add field
  add_more_fields.onclick = function(){
    var newField = document.createElement('input');
    newField.setAttribute('type','text');
    newField.setAttribute('name','add_question[]'); // name input field
    newField.setAttribute('class','form-control mb-2');
    newField.setAttribute('style','width: 80%;');
    newField.setAttribute('placeholder','Another Field');
    survey_options.appendChild(newField);
  }

  // Remove field
  remove_fields.onclick = function(){
    var input_tags = survey_options.getElementsByTagName('input'); 
    if(input_tags.length > 0) {
      survey_options.removeChild(input_tags[(input_tags.length) - 1]);
    }
  }
</script>
<!-- END DYNAMIC FIELD -->






<!-- Notif -->
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

	
</body>
</html>