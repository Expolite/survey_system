<?php
require 'config/config.php';
require CONNECT_PATH;
require CL_SESSION_PATH;
require GLOBAL_FUNC;
require ISLOGIN;
define('PAGE_TITLE', 'EVALUATION');

if(!($g_user_role[0] == "ADMIN")){  
	include HTTP_404;
	exit();
}

$csrf = new CSRF($session_class); // generate ng bagong csrf token
$fingerprint = $session_class->getValue('browser_fingerprint');
$uform = array();
$uform['header_code']=  "";
$uform['body_code']= "";
$uform['evaluated_code']= "Evaluatees:";
$uform['criteria']= '[]';
$uform['question']= '[]';

$text_action =  "add_eval";
$update = '';

$error = false;
$school_year_id = 0;
$query_fy = "SELECT school_year_id,flag_used FROM school_year WHERE flag_used = '1' LIMIT 1";
if($result = call_mysql_query($query_fy)){
	$num = call_mysql_num_rows($result);
	if($num !=0){
		$data = mysqli_fetch_assoc($result);
		$school_year_id = $data['school_year_id'];
	}
}

$list_data = array();
$validate_list = array();
$query_fy = "SELECT teacher_class_id,tc.subject_id,subj.subject_code FROM teacher_class as tc LEFT JOIN (SELECT subject_id,subject_code FROM subject) as subj ON tc.subject_id = subj.subject_id WHERE tc.schoolyear_id = '".$school_year_id."'";
if($result = call_mysql_query($query_fy)){
	$num = call_mysql_num_rows($result);
	if($num !=0){
		while($data = mysqli_fetch_assoc($result)){
			$temp_array =array();
			$temp_array['id'] = $data['teacher_class_id'];
			$temp_array['user'] = "cl_".$data['teacher_class_id']; 
			$temp_array['text'] = $data['subject_code']." & Class Reference: ".str_pad($data['teacher_class_id'], 5, "0", STR_PAD_LEFT); 
			$validate_list[] = $temp_array['user'];
			array_push($list_data,$temp_array);
		}
		
	}
}

$query_fy = "SELECT course_id,course_short FROM program WHERE status = '0'";
if($result = call_mysql_query($query_fy)){
	$num = call_mysql_num_rows($result);
	if($num !=0){
		while($data = mysqli_fetch_assoc($result)){
			$temp_array =array();
			$temp_array['id'] = $data['course_id'];
			$temp_array['user'] = "course_".$data['course_id']; 
			$temp_array['text'] = $data['course_short'];
			$validate_list[] = $temp_array['user'];
			array_push($list_data,$temp_array);
		}
		
	}
}



if(isset($_POST['action']) AND ($_POST['action'] =='add_eval' OR $_POST['action'] =='edit_eval') ){
	
	$token_1 = $csrf->validate('add_eval_form',$_POST['token']);
	
	if($token_1) {
		
	}else{
		$error=true;
		$session_class->setValue('error','Invalid Auth-Token!');
	}	
	
		
	$table_criteria = isset($_POST['table_criteria']) ? trim($_POST['table_criteria']) : '[]';
	$to_whom =   isset($_POST['modal_class_select']) ? $_POST['modal_class_select'] : array();
	$to_evaluated =   isset($_POST['modal_class_evaluatee']) ? $_POST['modal_class_evaluatee'] : array();
	$table_comment =  isset($_POST['table_comment']) ? $_POST['table_comment']: '[]';
	$page_title =  isset($_POST['page_title']) ? trim($_POST['page_title']): '';
	$header_code =  isset($_POST['header_code']) ? trim($_POST['header_code']): '';
	$body_code =  isset($_POST['body_code']) ? trim($_POST['body_code']): '';
	$evaluated_code =  isset($_POST['evaluated_code']) ? trim($_POST['evaluated_code']): '';
	$date_from = isset($_POST['start_date']) ? $_POST['start_date'] :'';
	$date_to = isset($_POST['end_date']) ? $_POST['end_date'] :'';
	
	
	
	$evaluator_list =array();
	$user_array = array_merge(array("Instructor","Student"),$validate_list);

	foreach($to_whom as $val){
		if(in_array($val,$user_array)){
			$evaluator_list[] = $val;
		}else{
			$error=true;
			$session_class->setValue('error','Invalid Evaluator User!');
			break;
		}
	}
	
 	if(empty($evaluator_list)){
		$error=true;
		$session_class->setValue('error','Evaluator User not Found!');
	}
	$evaluator_list_array = $evaluator_list;
	$evaluator_list = json_encode($evaluator_list);
		
	$evaluated_list = array();
	$invalid_select = false;
	foreach($to_evaluated as $val){
		if(in_array("Instructor",$evaluator_list_array) AND $val == "Subject") {$invalid_select = true; continue;}
		$evaluated_list[] = $val;
	}

	
 	if(empty($evaluated_list)){
		$error=true;
		$session_class->setValue('error','Input Evaluatee List');
	}
	
	if($invalid_select){
		$error=true;
		$session_class->setValue('error','Invalid Evaluatee: Faculty Evaluation cannot be set for Instructor!');
	}
	
	$evaluated_list = json_encode($evaluated_list);
	
	
	if(strip_tags($header_code) == "" AND $error == false){
		$error=true;
		$session_class->setValue('error','Header is required!');
	}
	
	if(strip_tags($body_code) == "" AND $error == false){
		$error=true;
		$session_class->setValue('error','Body is required!');
	}

	if(strip_tags($evaluated_code) == "" AND $error == false){
		$error=true;
		$session_class->setValue('error','Evaluated title is required!');
	}
	
	if($date_from =="" OR $date_to =="" AND $error == false){
		$error=true;
		$session_class->setValue('error','Evaluation Dates is required!');
	}
	
	
	if( (!validateDate($date_from)) OR (!validateDate($date_to))){
		$error=true;
		$session_class->setValue('error','Invalid Evaluation Dates!');
	}
		
	if($date_from > $date_to AND $error == false){
		$error=true;
		$session_class->setValue('error','Invalid Evaluation Date Range!');
	}
		
	if($error == false){
		$table_criteria_json = json_decode($table_criteria,true);
		if ($table_criteria_json === null && json_last_error() !== JSON_ERROR_NONE) {
			$error=true;
			$session_class->setValue('error','Invalid Criteria Table data!');
		}
	}
	if($error == false){
		if(count($table_criteria_json) <= 0){
			$error=true;
			$session_class->setValue('error','Criteria Table is required!');
		}
	}
	$error_table = false;
	if($error == false){
		foreach($table_criteria_json as $index => &$value){
			if($value['options'] == "" OR $value['criteria'] == "" ) {
					$error_table = true;
					break;
			}
			$value = js_clean_array($value);	
		}
	}
	
	if($error_table){
		$error=true;
		$session_class->setValue('error','Fill up missing data in Criteria Table!');
	}

	$table_comment_json = array();
	if($error == false){	
		$table_criteria_json = json_encode($table_criteria_json,true);
		
		$table_comment_json = json_decode($table_comment,true);
		if ($table_comment_json === null && json_last_error() !== JSON_ERROR_NONE) {
			$error=true;
			$session_class->setValue('error','Invalid Comment Table data!');
		}
	}
	

	if(count($table_comment_json)){
		$error_table = false;
		foreach($table_comment_json as &$value){
			if($value['question'] == "") {
					$error_table = true;
					break;
			}
			$value = js_clean_array($value);	
		}
		
		if($error_table){
			$error=true;
			$session_class->setValue('error','Fill up missing data in Comment Table!');
		}
	
	}	
	
	$table_comment_json = json_encode($table_comment_json);
}


if(isset($_POST['action']) AND $_POST['action'] =='add_eval'){	
	
	
	if($error){
		//pass
	}else{
		
		$header_code = js_clean($header_code);
		$body_code = js_clean($body_code);
		$evaluated_code = js_clean($evaluated_code);
		$date_format = 'Y-m-d H:i:s';
		$date_from = formatDate($date_from,$date_format);
		$date_to = formatDate($date_to,$date_format);
		
		$save_query = "INSERT INTO eval (title,page_title, body_content, evaluator_title,evaluator_list,evaluatee_list,question_list,comment_list,visible_from,visible_to,created_by,created_date) VALUES ('".escape($db_connect,$header_code)."','".escape($db_connect,$page_title)."','".escape($db_connect,$body_code)."','".escape($db_connect,$evaluated_code)."','".escape($db_connect,$evaluator_list)."','".escape($db_connect,$evaluated_list)."','".escape($db_connect,$table_criteria_json)."','".escape($db_connect,$table_comment_json)."','".escape($db_connect,$date_from)."','".escape($db_connect,$date_to)."','".$s_user_id."','".DATE_NOW.' '.TIME_NOW."')";
		
		if(mysqli_query($db_connect,$save_query)){
			$id = mysqli_insert_id($db_connect);
			$plain_text = strip_tags($body_code);
			$header_text = strip_tags($header_code);
			$log .= json_encode(array('EVAL_ID'=>$id,'PAGE_TITLE'=>$page_title,'HEADER TITLE'=>$header_text,'CONTENT'=>$plain_text,'EVALUATOR'=>$evaluator_list,'EVALUATEE'=>$evaluated_list,'DATE_FROM'=>$date_from,'DATE_TO'=>$date_to,'CREATED_BY'=>$s_user_id,'CREATED BY USER'=>$g_user_name))."\r\n";	
			activity_log_new("Add Evaluation Template  - Details::".$log);
						
			$session_class->setValue('success','Successfully saved.');
			// header("Location: eval_list.php");
			header("Location: eval_template.php");
			exit();
		}
		
		$error=true;
		$session_class->setValue('error','Unable to save!');
		
		
	}
}else if(isset($_POST['action']) AND $_POST['action'] =='edit_eval' AND isset($_GET['edit']) AND is_digit($_GET['edit'])){
	
	if($error){
		//pass
	}else{
		$header_code = js_clean($header_code);
		$body_code = js_clean($body_code);
		$evaluated_code = js_clean($evaluated_code);
		$date_format = 'Y-m-d H:i:s';
		$date_from = formatDate($date_from,$date_format);
		$date_to = formatDate($date_to,$date_format);
		
		$save_query = "UPDATE eval SET page_title='".escape($db_connect,$page_title)."', evaluator_list ='".escape($db_connect,$evaluator_list)."', evaluatee_list='".escape($db_connect,$evaluated_list)."', title = '".escape($db_connect,$header_code)."', body_content = '".escape($db_connect,$body_code)."', evaluator_title = '".escape($db_connect,$evaluated_code)."', question_list ='".escape($db_connect,$table_criteria_json)."', comment_list = '".escape($db_connect,$table_comment_json)."',visible_from = '".escape($db_connect,$date_from)."', visible_to ='".escape($db_connect,$date_to)."' WHERE eval_id = '".$_GET['edit']."'";
	
		if(mysqli_query($db_connect,$save_query)){
			
			$id = $_GET['edit'];
			$plain_text = strip_tags($body_code);
			$header_text = strip_tags($header_code);
			$log .= json_encode(array('EVAL_ID'=>$id,'PAGE_TITLE'=>$page_title,'HEADER TITLE'=>$header_text,'CONTENT'=>$plain_text,'EVALUATOR'=>$evaluator_list,'EVALUATEE'=>$evaluated_list,'DATE_FROM'=>$date_from,'DATE_TO'=>$date_to,'CREATED_BY'=>$s_user_id,'CREATED BY USER'=>$g_user_name))."\r\n";	
			activity_log_new("Update Evaluation Template  - Details::".$log);			
			
			$session_class->setValue('success','Successfully Updated.');
			header("Location: eval_list.php");
			exit();
		}
		
		$error=true;
		$session_class->setValue('error','Unable to save!');
		
	}
}


$found_edit =false;
if(isset($_GET['edit']) AND is_digit($_GET['edit'])){
	
	$text_action =  "edit_eval";
    $update = '?edit='.$_GET['edit'];
	
	
	
	if(isset($_POST['action']) AND $_POST['action'] =='edit_eval' ){
		
		$uform['criteria'] = isset($_POST['table_criteria']) ? trim($_POST['table_criteria']) : '[]';
		$uform['page_title'] = isset($_POST['page_title']) ? trim($_POST['page_title']) : '';
		$uform['evaluator_list'] = isset($_POST['modal_class_select']) ? $_POST['modal_class_select'] : '[]';
		$uform['evaluatee_list'] = isset($_POST['modal_class_evaluatee']) ? $_POST['modal_class_evaluatee'] : '[]';
		$uform['question'] =  isset($_POST['table_comment']) ? $_POST['table_comment']: '[]';
		$uform['header_code'] =  isset($_POST['header_code']) ? trim($_POST['header_code']): '';
		$uform['body_code'] =  isset($_POST['body_code']) ? trim($_POST['body_code']): '';
		$uform['evaluated_code'] =  isset($_POST['evaluated_code']) ? trim($_POST['evaluated_code']): '';
		$uform['visible_from'] = isset($_POST['start_date']) ? $_POST['start_date'] :'';
		$uform['visible_to'] = isset($_POST['end_date']) ? $_POST['end_date'] :'';

		
		
	}else{
		$query = "SELECT * FROM eval WHERE eval_id = '".$_GET['edit']."' LIMIT 1";
		if($result = call_mysql_query($query)){
			$num = call_mysql_num_rows($result);
			if($num !=0){
				$data = call_mysql_fetch_array($result);
				$uform['header_code']=  $data['title'];
				$uform['page_title']=  $data['page_title'];
				$uform['evaluator_list'] =  json_decode($data['evaluator_list']);
				$uform['evaluatee_list']=   json_decode($data['evaluatee_list']);
				$uform['body_code']=  $data['body_content'];
				$uform['evaluated_code']= $data['evaluator_title'];
				$uform['visible_from']= $data['visible_from'];
				$uform['visible_to']= $data['visible_to'];
				$uform['criteria'] = json_decode($data['question_list'],true);
				$uform['question']=  json_decode($data['comment_list'],true);
				$found_edit = true;
				$uform['criteria'] = output($uform['criteria']);
				$uform['question']=  output($uform['question']);
			}

		}
	}
}

$object_js =  output($list_data);

?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php
    include DOMAIN_PATH."/app/global/meta_data.php";
    include DOMAIN_PATH."/app/global/include_top.php";

?>
</head>
<style>
.swal2-title{
	color: #130a0a;
}
.editable{
	border: 1px solid red;
}

.note-editor .note-editing-area p {
	margin-bottom: 0rem!important;
}

</style>

<body class="" data-layout="detached">

    <!-- NAVBAR -->
    <?php include DOMAIN_PATH."/app/global/topbar.php"; ?>   <!--topbar -->
    <!-- END NAVBAR -->

    <!-- HEADER -->
    <div class="container-fluid active p-0">
        <div class="wrapper in p-0">
            <!-- BEGIN CONTENT -->
            <!-- SIDEBAR -->
            <!--END SIDEBAR-->
            <!-- PAGE CONTAINER-->
            <div class="content-page p-0">
                <div class="content p-0">
                    <!-- BEGIN PlACE PAGE CONTENT HERE -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card py-4 bg-light">
                                    <div class="card-body bg-white col-sm-12 col-lg-9 mx-lg-auto  mx-sm-0  border">
									<form id="eval_form" name="eval_form" action="eval_template.php<?php echo $update;?>" method="POST">
										<div class="row p-2 pl-4">
											<div  class="form-group  col-sm-12 col-lg-12 font-weight-bold">
												<label for="content_time">Title of Page:</label><br>
												<input type="text" class="form-control" name="page_title" id="page_title" value="<?php echo $uform['page_title'];?>"  required >
											</div>
										</div>                                       
									   <div class="row text-center p-1 pl-4 pr-4"> 
											<div class="col-sm-12 col-xl-12">
												<label class="font-weight-bold" for="">Header :</label>
												<div id="header_text" >
												<?php echo $uform['header_code']; ?>
												</div> 
											</div>
									   </div>
									   <hr/>
										<div class="row p-1 pl-4 pr-4 align-items-center">
											<div class="col-sm-12 col-xl-12">
											   <label class="font-weight-bold" for="">Body :</label>
												<div id="div_body" >
													<?php echo $uform['body_code']; ?>
												</div>
											</div>
										</div>
									   
																				
									   
										<div class="row p-1 pl-4">
											<div class="form-group  col-sm-12 col-lg-12 font-weight-bold ">
												<label  class="">Evalutator List</label>
													<select  class="form-control" style="width:100%;" name="modal_class_select[]" id="modal_class_select"  >
														<option value="">Select Users(Instructor/Student/Admin)/Course/Class Reference</option>
													</select>
																								
											</div>
										</div>
										<div class="row p-1 pl-4">
											<div class="form-group  col-sm-12 col-lg-12 font-weight-bold ">
												<label  class="editable"><div id="evaluated_title" >	<?php echo $uform['evaluated_code']; ?></div></label>
													<select  class="form-control" style="width:100%;" name="modal_class_evaluatee[]" id="modal_class_evaluatee"  >
														<option value="">Enter List of Evaluatee (Respective Subject or Person)</option>
													</select>
																								
											</div>
										</div>
											
											<div class="row p-2 pl-4">
												<div id="date_accessible" class="form-group  col-sm-12 col-lg-12 font-weight-bold">
													<label for="content_time">Evaluation Dates:</label><br>
													<input type="text" class="form-control" id="content_time"  required >
												</div>
											</div>
											<div class="row p-2 pl-4 pr-4">
												<div class="form-group  col-sm-12 col-lg-12 font-weight-bold">
												<label for="comment_text">Criteria :</label>
													<div class="row pl-4 pr-4">
														<div class="col-sm-12 col-xl-6">
															<div class="input-group mb-3">
															  <div class="input-group-prepend">
																<a href="download.php?attach=EVAL_CRITERIA" class="" ><span class="input-group-text">Download Template</span></a>
															  </div>
															  <div class="custom-file">
																<input type="file" class="custom-file-input" id="input_csv">
																<label class="custom-file-label" for="input_csv">Choose file CSV</label>
															  </div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="row pl-4 pr-4">
												<div class="col-sm-12 col-xl-12">
													<div id="table_list" class="table-bordered"></div>
												</div>
											</div>										
											
											
											<input type="hidden" name="action" id="action" value="<?php echo $text_action;?>">
											<div class="row p-2 pl-4 pr-4">
												<div class="form-group  col-sm-12 col-lg-12 font-weight-bold">
												<label for="comment_text">Comments :</label>
												
												
													<div class="row pl-4 pr-4">
														<div class="col-sm-12 col-xl-6">
															<div class="input-group mb-3">
															  <div class="input-group-prepend">
																	<a href="download.php?attach=EVAL_QUESTION" class="" ><span class="input-group-text">Download Template</span></a>
															  </div>
															  <div class="custom-file">
																<input type="file" class="custom-file-input" id="input_comment">
																<label class="custom-file-label" for="input_comment">Choose file CSV</label>
															  </div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- Token -->
											<?php echo $csrf->input('add_eval_form','token',3600,1); ?>

											<div class="row pl-4 pr-4">
												<div class="col-sm-12 col-xl-12">
													<div id="table_list_ques" class="table-bordered"></div>
												</div>
											</div>	

											<div class="row">
												<div class="col-sm-12 col-xl-12  p-3 pr-5" >
													<button class="btn btn-lg btn-primary float-right" id="btn_submit" type="submit"> SAVE </button>
												</div>
											</div>
												
										</form>
												

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
<?php include DOMAIN_PATH."/app/global/include_bottom.php"; ?>
<script type="text/javascript" src="<?php echo BASE_URL."js/csvtojson.js?v=".FILE_VERSION;?>"></script>
<script id="remove_js">
(function() {
var g_class_list = [];
var counter_eval = 0;
var add_list = <?php echo $object_js."\r\n"; ?>
var question_json = <?php echo $uform['criteria']."\r\n";?>;
var start_moment = moment().startOf('day');
var end_moment = start_moment.endOf('day');
var div_header = document.getElementById('header_text');
var div_body = document.getElementById('div_body');
var evaluated_title = document.getElementById('evaluated_title');
function autoNumFormatter(cell){
        var row = cell.getRow()
        var rowIndex = row.getPosition(false);
        return (rowIndex+1);
};
var temp= [{'id':'0','user':'Instructor','text':'Instructor'},{'id':'1','user':'Student','text':'Student'}];
var options = temp.concat(add_list);

var options_evaluatee = [{'id':'0','user':'Subject','text':'Faculty Evaluation'}];

var table_list = new Tabulator("#table_list", {
    height:"500px",
	data:question_json,
	tooltips:true,
	printAsHtml:true,
    headerFilterPlaceholder:"",
    layout:"fitColumns",
    placeholder:"No Data Found",
    movableColumns:true,
    printConfig:{
        columnGroups:false, 
        rowGroups:false,
		 formatCells:true
    },
	selectableRollingSelection:false,
        columns:[
        {title:"No.",hozAlign:"center", width:50, formatter:autoNumFormatter,headerSort:false, tooltip:false,},
        {title:"Criteria", field:"criteria",formatter:'textarea',editor:"textarea",minWidth:150,headerSort:false, tooltip:false, }, 
		{title:"Category", field:"category",formatter:'textarea',editor:"input",headerSort:false, tooltip:false, }, 
		{title:"Options", field:"options",formatter:'textarea',editor:"input",headerSort:false, tooltip:false, }, 
    ],
});
var modal_select_class ="";

modal_select_class=$('#modal_class_select').selectize({
	valueField: 'user',
	labelField: ['user','text'],
	searchField: ['user','text'],
	options:options,
	persist: true,
	maxItems: null,
	//dropdownParent: "body",
	render: {
		option: function(item, escape) {
			return '<div> <h5 class="title">' + escape(item.text)  +'</h5>' + '</div>';
	  
		},
		item: function(item, escape) {
			return '<div> <span class="title">' + escape(item.text)  +'</span>' + '</div>';
	  
		}
	},

});

// initialize the Selectize control
var $select = $('#modal_class_select').selectize(options);
var selectize = $select[0].selectize;
<?php if(!empty($uform['evaluator_list'])){ 
	foreach($uform['evaluator_list'] as $value){
		echo "selectize.addOption({ value: '".var_html($value)."', user: '".var_html($value)."'});\r\n";
		echo  "selectize.addItem('".var_html($value)."');\r\n";
	}
} ?>


var modal_class_evaluatee ="";

modal_class_evaluatee=$('#modal_class_evaluatee').selectize({
	valueField: 'user',
	labelField: ['user','text'],
	searchField: ['user','text'],
	options:options_evaluatee,
	persist: true,
	maxItems: null,
	//dropdownParent: "body",
	render: {
		option: function(item, escape) {
			
			return '<div> <h5 class="title">' + escape(item.text)  +'</h5>' + '</div>';
	  
		},
		item: function(item, escape) {
			return '<div> <span class="title">' + escape(item.text)  +'</span>' + '</div>';
	  
		}
	},
	create: function (input) {
		console.log();
		return {
			text: input,
			user:'add_'+ input.replace(/ /g, '_'),
		};
  },

});

// initialize the Selectize control
var $select = $('#modal_class_evaluatee').selectize(options);
var selectize = $select[0].selectize;
<?php if(!empty($uform['evaluatee_list'])){ 
	foreach($uform['evaluatee_list'] as $value){
		$var = 1;
		$text = ($value=="Subject") ? '' : ", text: '".str_replace("add_", "", $value, $var)."'";
		echo "selectize.addOption({ value: '".var_html($value)."', user: '".var_html($value)."'".$text."});\r\n";
		echo  "selectize.addItem('".var_html($value)."');\r\n";
	}
} ?>


$('#content_time').daterangepicker({
    timePicker: true,

	autoApply:true,
	showDropdowns: true,
<?php 
if($found_edit){	
	echo  "startDate: moment('".$uform["visible_from"]."'),\r\n";
	echo  "endDate: moment('".$uform["visible_to"]."'),\r\n";
}else{ ?>
	startDate: moment(),
	endDate: end_moment,	
<?php } ?>
    locale: {
      format: 'M/DD/YYYY hh:mm A'
    }
  });
  //$('#content_time').data("DateTimePicker").clear();


<?php if(!$found_edit){	?>
	$('#content_time').data('daterangepicker').setStartDate(moment());
	$('#content_time').data('daterangepicker').setEndDate(end_moment);
<?php } ?>


var questyion_survey =  <?php echo $uform['question']."\r\n";?>;
var table_list_ques = new Tabulator("#table_list_ques", {
    height:"300px",
	data:questyion_survey,
	tooltips:true,
	printAsHtml:true,
    headerFilterPlaceholder:"",
    layout:"fitColumns",
    placeholder:"No Data Found",
    movableColumns:true,
    printConfig:{
        columnGroups:false, 
        rowGroups:false,
		 formatCells:true
    },
	selectableRollingSelection:false,
        columns:[
        {title:"No.",hozAlign:"center", width:50, formatter:autoNumFormatter,headerSort:false, tooltip:false,},
        {title:"Questions", field:"question",editor:"input",formatter:'textarea',minWidth:150,headerSort:false, tooltip:false, }, 
    ],
});


var div_header_editor = $(div_header).summernote({
	height: 400,
	dialogsFade: true,
	prettifyHtml: true,
	width: '100%',	
	toolbar: [
// [groupName, [list of button]]
	['style', ['bold', 'italic', 'underline', 'clear']],
	['font', ['strikethrough', 'superscript', 'subscript']],
	['fontsize', ['fontsize']],
	['color', ['backcolor','forecolor']],
	['para', ['ul', 'ol', 'paragraph']],
	['insert',['picture','link','video','hr','math']],
	['table', ['table']],
	['view', [ 'undo','redo','help']],
	['height', ['height']]
	],		
	callbacks: {
		onChange: function(contents,$editable) {
			//textarea.innerHTML = contents;
		}
	}
  });	
  
 $(div_header).summernote('lineHeight', 1.25);

var div_body_editor = $(div_body).summernote({
	height: 400,
	dialogsFade: true,
	prettifyHtml: true,
	width: '100%',
	toolbar: [
// [groupName, [list of button]]
	['style', ['bold', 'italic', 'underline', 'clear']],
	['font', ['strikethrough', 'superscript', 'subscript']],
	['fontsize', ['fontsize']],
	['color', ['backcolor','forecolor']],
	['para', ['ul', 'ol', 'paragraph']],
	['insert',['picture','link','video','hr','math']],
	['table', ['table']],
	['view', [ 'undo','redo','help']],
	['height', ['height']]
	],		
	callbacks: {
		onChange: function(contents,$editable) {
			//textarea.innerHTML = contents;
		}
	}
  });	

// $(div_body_editor).summernote('lineHeight', 1.25);

function uploadImage(image,summer_editor) {
    var data = new FormData();
    data.append("image", image);
    $.ajax({
        url: '<?php echo BASE_URL.'/app/summernote_upload.php?action=UPLOAD_IMAGE'; ?>',
        cache: false,
        contentType: false,
        processData: false,
        data: data,
        type: "POST",
        success: function(url) {
			var result = JSON.parse(url);
			if(result.status == "error"){
				warning_notif(result.url);
			}else if(result.status=="success"){
				summer_editor.summernote("insertImage", result.url);
			}
        },
        error: function(data) {
            warning_notif(data);
        }
    });
}


function deleteFile(src){
    $.ajax({
        data: {src : src},
        type: "POST",
        url: '<?php echo BASE_URL.'/app/summernote_upload.php?action=DELETE_IMAGE'; ?>',
        cache: false,
        success: function(resp) {
        }
    });
}

var div_evaluated_editor = $(evaluated_title).summernote({
	airMode: true,
  });	

/* main upload function */
function upload(file,type='criteria') {
	if( file.type.match(/text\/csv/) || file.type.match(/vnd\.ms-excel/) ){
	//if(file.type.match(/text\/csv/)){
		oFReader = new FileReader();
		oFReader.onloadend = function() {
			
			var json = CSVJSON.csv2json(this.result);
			try{
				if(type == 'questions'){
					table_list_ques.setData(json);
				}else{
					table_list.setData(json);
				}
			}catch{
			
			}
			//var blob = new Blob([json], {type: 'application/json'});
			//var url = URL.createObjectURL(blob);
			//output.innerHTML = '<a href="'+url+'">JSON file</a>';
		};
		oFReader.readAsText(file);
	} else {
		warning_notif("This file does not seem to be a CSV.");
	}
}


$("#input_csv").change(function(e){
	var fileName = e.target.files[0].name;
	upload(e.target.files[0]);
});

$("#input_comment").change(function(e){
	var fileName = e.target.files[0].name;
	upload(e.target.files[0],'questions');
});

$("#eval_form").submit( function(eventObj) {
		
//$('#btn_submit').click(function(){
		
		
		try{
		var header_code = div_header_editor.summernote('code');
		var header_text = $("<p>" + header_code+ "</p>").text();
			
		var body_code = div_body_editor.summernote('code');
		var body_text = $("<p>" + body_code+ "</p>").text();
		
		var evaluated_code = div_evaluated_editor.summernote('code');		
		var evaluated_text = $("<p>" + evaluated_code+ "</p>").text();
		
		}catch (e){
			console.log("Internal error");
		}

		if(header_text.trim() == "") {
		  warning_notif('Header is required');
		  return false;
		}

		if(body_text.trim() == "") {
		  warning_notif('Body is required');
		   return false;
		}
		
	    var evalutor = $('#modal_class_select').val();
	
		if(evalutor == "") {
		  warning_notif('Evaluator List is required');
		  return false;
		}
				

	    var evalutee = $('#modal_class_evaluatee').val();
		if(evalutee == "") {
		  warning_notif('Evaluatee List is required');
		  return false;
		}
		
		
		
		if(evaluated_text.trim() == "") {
		  warning_notif('Evaluted Title is required!');
		  return false;
		}
		
		var i_startDate ="";
		var i_endDate ="";
		try{
			i_startDate = $('#content_time').data('daterangepicker').startDate._d;
			i_endDate = $('#content_time').data('daterangepicker').endDate._d;
		}catch (e){
			console.log("Internal error");
		}
		
		if(i_startDate =="" || i_endDate==""){
			warning_notif('Evaluation Date is required!');
			return false;
		}
		
		var startDate = "";
		var endDate = "";
		
		try{
			startDate= moment(i_startDate).format('YYYY-MM-DD HH:mm:ss'); 
			endDate= moment(i_endDate).format('YYYY-MM-DD HH:mm:ss'); 
		}catch (e){
			console.log("Internal error");
		}
		
		if(startDate > endDate){
			warning_notif('Invalid Evaluation Date range!');
			return false;
		}
		 
		var table_criteria = table_list.getData();
		var table_comment = table_list_ques.getData();
		
		if(!table_criteria.length){
			warning_notif('Criteria Table is required! Upload CSV file');
			return false;
		}
		
		var error_found = false;
		var table_criteria_json =[];
		for(var i =0 ; i < table_criteria.length; i++){
			if(table_criteria[i]['options'] == "" || table_criteria[i]['criteria'] == "" ) {
				error_found = true;
				break;
			}
			var temp = {};
			temp['id'] = i;
			temp['options'] = table_criteria[i]['options'];
			temp['criteria'] = table_criteria[i]['criteria'];
			temp['rating'] =  0;
			temp['category'] = (table_criteria[i]['category']) ?  table_criteria[i]['category'] : '';
			table_criteria_json.push(temp);
		}
		
		if(error_found){
			warning_notif('Fill up missing data in Criteria Table!');
			return false;
		}

		if(table_comment.length){
			var error_found = false;
			var table_comment_json =[];
			for(var i =0 ; i < table_comment.length; i++){
				if(table_comment[i]['question'] == "") {
					error_found = true;
					break;
				}
				var temp = {};
				temp['id'] = i;
				temp['question'] = table_comment[i]['question'];
				table_comment_json.push(temp);
			}
			
			if(error_found){
				warning_notif('Fill up missing data in Comment Table!');
				return false;
			}
		}
		

		$("<input />").attr("type", "hidden")
		  .attr("name", "end_date")
		  .attr("value",endDate)
		  .appendTo("#eval_form");	
		  
		$("<input />").attr("type", "hidden")
		  .attr("name", "start_date")
		  .attr("value",startDate)
		  .appendTo("#eval_form");	
		
		$("<textarea />").attr("type", "hidden")
		  .attr("name", "table_criteria")
		  .val(JSON.stringify(table_criteria_json))
		  .css("visibility", "hidden")
		  .appendTo("#eval_form");		
		
		$("<textarea />").attr("type", "hidden")
		  .attr("name", "table_comment")
		  .css("visibility", "hidden")
		  .val(JSON.stringify(table_comment))
		  .appendTo("#eval_form");		
				
		$("<textarea />").attr("type", "hidden")
		  .attr("name", "header_code")
		  .css("visibility", "hidden")
		  .val(header_code)
		  .appendTo("#eval_form");	

		$("<textarea />").attr("type", "hidden")
		  .attr("name", "body_code")
		  .css("visibility", "hidden")
		  .val(body_code)
		  .appendTo("#eval_form");	

		$("<textarea />").attr("type", "hidden")
		  .attr("name", "evaluated_code")
		  .css("visibility", "hidden")
		  .val(evaluated_code)
		  .appendTo("#eval_form");	
		
		return true;
		//$('#eval_form').submit();

	});



$('#eval_form').on('keyup keypress', function(e) {
  var keyCode = e.keyCode || e.which;
  if (keyCode === 13) { 
    e.preventDefault();
    return false;
  }
});
})();

</script>
<script>
	//document.getElementById('remove_js').innerHTML ="";
	<?php	
    	$msg_error =$session_class->getValue('error');
    	if(isset($msg_error) AND $msg_error !=""){
			echo "error_notif('".$msg_error."');";
			$session_class->dropValue('error');
    	}
	?>
</script>
</html>
