<?php 

require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;// check kung nakalogin

// if the user is not logged yet
if(!($g_user_role[0] == "DEPARTMENT")){  
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

    // BAR CHART
    $dataPoints = array( 
		array("y" => 3373.64, "label" => "Germany" ),
		array("y" => 2435.94, "label" => "France" ),
		array("y" => 1842.55, "label" => "China" ),
		array("y" => 1828.55, "label" => "Russia" ),
		array("y" => 1039.99, "label" => "Switzerland" ),
		array("y" => 765.215, "label" => "Japan" ),
		array("y" => 612.453, "label" => "Netherlands" )
	);
?>



<style type="text/css">
    #survey_info_container {
        width: 80%; 
        padding: 10px;
        transition: all .3s ease;
    }

    /* BarChart - 1 */
    .barChart_1 {
        border: 1px solid black; 
        padding-left: 40px; 
        padding-right: 40px;
        padding-top: 10px;
    }

    /* Bar Chart Arrows */
    #barChart_arrow_right {
        border: 1px solid black; 
        opacity: .4; 
        background: black; 
        color: white; 
        font-size: 30px; 
        height: fit-content; 
        cursor: pointer; 
        padding-top: 5px;
        padding-left: 10px; 
        padding-right: 10px; 
        position: absolute; 
        right: 0; 
        top: 150px;
        transition: all .3s ease;
    }
    #barChart_arrow_right:hover {
        opacity: .8;
    }

    #barChart_arrow_left {
        border: 1px solid black; 
        opacity: .4; 
        background: black; 
        color: white; 
        font-size: 30px; 
        height: fit-content; 
        cursor: pointer; 
        padding-top: 5px;
        padding-left: 10px; 
        padding-right: 10px; 
        position: absolute; 
        left: 0; 
        top: 150px;
        transition: all .3s ease;
    }
    #barChart_arrow_left:hover {
        opacity: .8;
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
                    <h3>Survey Information</h3>
                </div>

                <!-- CONTENTS... -->
                <div class="py-5 bg-light rounded shadow">
                	<div class="container">
                		<div class="row">

                			<!-- Col - 12 -->
                			<div class="col-md-12">
                				<div class="container bg-light d-flex justify-content-center position-relative barChart_1">
                					
                					<!-- BAR CHART -->
                					<div id="chartContainer" style="height: 370px; width: 100%;"></div>

                                    <!-- Arrow -->

                                    <!-- RIGHT -->
                                    <div id="barChart_arrow_right">
                                        <i class="fa-solid fa-angle-right"></i>
                                    </div>

                                    <!-- LEFT -->
                                    <div id="barChart_arrow_left">
                                        <i class="fa-solid fa-angle-left"></i>
                                    </div>
                                    <!-- END Arrow -->

                				</div>
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









<!-- BAR CHART -->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<script>

	// BAR CHART
	window.onload = function() {
	 
	var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		theme: "light2",
		title:{
			text: "Gold Reserves"
		},
		axisY: {
			title: "Gold Reserves (in tonnes)"
		},
		data: [{
			type: "column",
			yValueFormatString: "#,##0.## tonnes",
			dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
		}]
	});
	chart.render();
	 
	}
	// END BAR CHART





// Alert
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