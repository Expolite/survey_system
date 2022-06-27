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


// DISPLAY NUMBER OF SURVEYS
// $sql_display_num_surveys = "SELECT * FROM tbl_surveys_records WHERE date_log = ''";
// $res_display_num_surveys = mysqli_query($conn, $sql_display_num_surveys);

// if (mysqli_num_rows($res_display_num_surveys) > 0) {
//   // output data of each row
//   while($row = mysqli_fetch_assoc($res_display_num_surveys)) {
//     echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
//   }
// } else {
//   echo "0 results";
// }
// $org_date_time = date("Y-m-d h:i:s");
// $num = strtotime($org_date_time);
// $tepp = date('Y-m-d', $num);



// DISPLAY SURVEY RECORDS OF THIS YEAR AND MONTH

// Year
$sql_survey_records_byYr = "SELECT DATE_FORMAT(date_log, '%Y') FROM tbl_surveys_records WHERE DATE_FORMAT(date_log, '%Y') = '".YEAR."'";

$result_survey_records_byYr = mysqli_query($db_connect, $sql_survey_records_byYr);

if($result_survey_records_byYr) {
	$row_survey_records_byYr = mysqli_num_rows($result_survey_records_byYr);
}

// Month
$sql_survey_records_byMon = "SELECT DATE_FORMAT(date_log, '%m') FROM tbl_surveys_records WHERE DATE_FORMAT(date_log, '%m') = '".MONTH."'";

$result_survey_records_byMon = mysqli_query($db_connect, $sql_survey_records_byMon);

if($result_survey_records_byMon) {
    $row_survey_records_byMon = mysqli_num_rows($result_survey_records_byMon);
}
// END of Getting this year



?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";

    // BAR CHART
    $dataPoints = array( 
        array("y" => 3373.64, "label" => "Dept 1" ),
        array("y" => 2435.94, "label" => "Dept 2" ),
        array("y" => 1842.55, "label" => "Dept 3" ),
        array("y" => 1828.55, "label" => "Dept 4" ),
        array("y" => 1039.99, "label" => "Dept 5" ),
        array("y" => 765.215, "label" => "Dept 6" ),
        array("y" => 612.453, "label" => "Dept 7" )
    );

    // BAR CHART_2
    $dataPoints_2 = array( 
        array("y" => 3373.64, "label" => "Dept 1" ),
        array("y" => 2435.94, "label" => "Dept 2" ),
        array("y" => 1842.55, "label" => "Dept 3" ),
        array("y" => 1828.55, "label" => "Dept 4" ),
        array("y" => 1039.99, "label" => "Dept 5" ),
        array("y" => 765.215, "label" => "Dept 6" ),
        array("y" => 612.453, "label" => "Dept 7" )
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
    /* END Bar Chart Arrows */
</style>

</head>

<body style="padding: 0;">
    <!-- HEADER -->
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

                            <!-- BOX START 1 -->
                            <div class="col-md-6">
                                <div class="card mb-4 shadow border">

                                    <!-- body -->
                                    <div class="card-body">
                                        <!-- Header -->
                                        <h2 class="text-center"><?php echo $row_survey_records_byYr; ?></h2>
                                        
                                        <h4 class="card-text text-center">
                                            Number of Survey on this <?php echo YEAR; ?>
                                        </h4>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
                                                <!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                            </div>
                                            <!-- <small class="text-muted">Last Update</small> -->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- END BOX -->

                            <!-- BOX START 2 -->
                            <div class="col-md-6">
                                <div class="card mb-4 shadow border">

                                    <!-- body -->
                                    <div class="card-body">
                                        <!-- Header -->
                                        <h2 class="text-center"><?php echo $row_survey_records_byMon; ?></h2>
                                        
                                        <h4 class="card-text text-center">
                                            Number of Survey on this <?php echo MONTH_v2; ?>
                                        </h4>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <!-- <button type="button" class="btn btn-sm btn-outline-secondary">View</button> -->
                                                <!-- <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button> -->
                                            </div>
                                            <!-- <small class="text-muted">Last Update</small> -->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- END BOX -->

                        </div>

<!-- BAR CHART -->
                        <!-- BARCHART - 1 -->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- GRAPH - START -->
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
                                <!-- GRAPH - END -->
                            </div>
                        </div>

                        <!-- BARCHART - 2 -->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- GRAPH - START -->
                                <div class="container bg-light d-flex justify-content-center position-relative barChart_1">

                                    <!-- BAR CHART -->
                                    <div id="chartContainer_2" style="height: 370px; width: 100%;"></div>

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
                                <!-- GRAPH - END -->
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <!-- END CONTENT -->

        </div>
    </div>

<!-- FOOTER -->
<?php  include FOOTER_PATH; ?>
<!-- END FOOTER -->






<!-- CANVAS OF BAR CHART JS -->
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>






</body>

<!-- all the js files -->
<!-- bundle -->

<!-- all linked js -->
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>



<script>
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







// BAR CHART
window.onload = function() {
 
 var chart = new CanvasJS.Chart("chartContainer", {
     animationEnabled: true,
     theme: "light2",
     title:{
         text: "Survey Chart"
     },
     axisY: {
         title: "Number of Surveys"
     },
     data: [{
         type: "column",
         yValueFormatString: "#,##0.## tonnes",
         dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
     }]
 });
 chart.render();




 // BAR CHART 2
 var chart = new CanvasJS.Chart("chartContainer_2", {
     animationEnabled: true,
     theme: "light2",
     title:{
         text: "Survey Chart_2"
     },
     axisY: {
         title: "Number of Surveys_2"
     },
     data: [{
         type: "column",
         yValueFormatString: "#,##0.## tonnes",
         dataPoints: <?php echo json_encode($dataPoints_2, JSON_NUMERIC_CHECK); ?>
     }]
 });
 chart.render();
  
 }
</script>
</html>
