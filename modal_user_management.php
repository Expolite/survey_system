<style>
    /* Button - enter new dept */
    #user_dept_actions_1_<?php echo $users_id_edit; ?> {
        border: 1px solid #007bff;
        padding-top: 5px;
        padding-bottom: 5px;
        padding-left: 10px;
        padding-right: 5px;
        border-radius: 7px 0 0 7px;
        color: #007bff;
        cursor: pointer;
	}

    /* Button - select dept */
	#user_dept_actions_2_<?php echo $users_id_edit; ?> {
		border: 1px solid #007bff;
		padding-top: 5px;
		padding-bottom: 5px;
		padding-left: 5px;
		padding-right: 10px;
		border-radius: 0 7px 7px 0;
		color: #007bff;
		cursor: pointer;
	}
</style>


<!-- MODAL Edit -->
<div class="modal fade" id="exampleModal_<?php echo $users_id_edit; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa-solid fa-pen-to-square"></i> Edit / Manage Department</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                    <form action="user_management.php" method="POST">

	                    <!-- Department Name -->
	                    <label for=""><b>Department</b></label>
	                    <input type="text" name="sel_user_inDept" value="<?php echo $user_department; ?>" class="form-control mb-3" readonly>

	                    <!-- EDIT Department -->
	                    <div class="input-group">
	                        <div id="user_dept_actions_1_<?php echo $users_id_edit; ?>" onclick="new_dept_func_<?php echo $users_id_edit; ?>()"><span>Add New Department</span></div>
	                        <div id="user_dept_actions_2_<?php echo $users_id_edit; ?>" onclick="select_dept_func_<?php echo $users_id_edit; ?>()"><span>Select Department</span></div>
	                    </div>

	                    <!-- Enter New Department -->
	                    <input type="text" name="added_new_dept" id="new_dept_txtbox_<?php echo $users_id_edit; ?>" value="" class="form-control mt-2 <?php if(isset($_GET['new_deptAlert'])){echo'border-danger';} ?>" placeholder="Enter New Department">
	                    <!-- Select Department hide -->
	                    <select name="selected_dept" class="form-control mt-2 <?php if(isset($_GET['new_deptAlert'])){echo'border-danger';} ?>" id="sel_dept_selection_<?php echo $users_id_edit; ?>">
	                        <option value="">-Select Department-</option>
	                        <?php 
	                            // Display All Department List
	                            $sql_departments = "SELECT dept_name FROM tbl_survey_dept ORDER BY dept_name ASC";
	                            $res_departments = mysqli_query($db_connect, $sql_departments);

	                            if (mysqli_num_rows($res_departments) > 0) {
	                                while($row_departments = mysqli_fetch_assoc($res_departments)) {
	                                    $departments = $row_departments['dept_name'];
	                        ?>
	                        <option value="<?php echo $departments; ?>"><?php echo $departments; ?></option>
	                        <?php
	                                }
	                            }
	                        ?>
	                    </select>




						<!-- Error Msg -->
						<?php if(isset($_GET['new_deptAlert'])) { ?>
						<div class="text-danger">
							<i class="fa-solid fa-circle-exclamation"></i>
							This field is Required
						</div>
						<?php } ?>

						<!-- Department Already Exist msg error -->
						<?php if(isset($_GET['deptAlreadyExist'])) { ?>
						<div class="text-danger">
							<i class="fa-solid fa-circle-exclamation"></i>
							Department Already Exist
						</div>

						<?php } ?>




	        			<!-- Submit Button -->
	        			<div class="mt-3" style="width: 100%;">
	        				<div align="right">
	        					<div class="input-group" style="width: fit-content;">
		        					<div>
		        						<button type="button" class="btn btn-secondary btn-sm" style="margin-right: 10px;" data-dismiss="modal">Close</button>
		        					</div>
		        					<div>
			        					<button type="submit" name="submit_add_user_manage_dept" id="submitBtn_addNewDept_<?php echo $users_id_edit; ?>" class="btn btn-outline-success btn-sm" style="padding-left: 20px; padding-right: 20px;"><i class="fa-solid fa-floppy-disk"></i> Add & Save</button>
										<button type="submit" name="submit_select_user_manage_dept" id="submitBtn_selectDept_<?php echo $users_id_edit; ?>" class="btn btn-outline-primary btn-sm" style="padding-left: 20px; padding-right: 20px;"><i class="fa-solid fa-floppy-disk"></i> Save</button>
		        					</div>
	        					</div>
	        				</div>
	        			</div>

                    </form>
                
                </div>
            </div>
    </div>
</div>
<!-- END MODAL Edit -->



<script>


// User Department Management Function

<?php 
	if(isset($_GET['select_deptAlert'])) {
		echo '
			// active - Select Dept buttons
			user_dept_actions_2_'.$users_id_edit.'.style.background = "#007bff";
			user_dept_actions_2_'.$users_id_edit.'.style.color = "white";

			// disable - add new dept
			user_dept_actions_1_'.$users_id_edit.'.style.background = "white";
			user_dept_actions_1_'.$users_id_edit.'.style.color = "#007bff";

			// hide add_new_dept txtbox
			new_dept_txtbox_'.$users_id_edit.'.style.display = "none";

			// hide submit add new button
			submitBtn_addNewDept_'.$users_id_edit.'.style.display = "none";
			// show submit select btn
			submitBtn_selectDept_'.$users_id_edit.'.style.display = "block";
		';
	}else{

		echo '
			// default
			// active - Add New Dept
			user_dept_actions_1_'.$users_id_edit.'.style.background = "#007bff";
			user_dept_actions_1_'.$users_id_edit.'.style.color = "white";

			// hide Select input
			sel_dept_selection_'.$users_id_edit.'.style.display = "none";

			// hide submit select selectBtn
			submitBtn_selectDept_'.$users_id_edit.'.style.display = "none";

			// END default
		';
	}
?>





// Add New Department Button
function new_dept_func_<?php echo $users_id_edit; ?>() {
	// active this btn 1
	user_dept_actions_1_<?php echo $users_id_edit; ?>.style.background = "#007bff";
	user_dept_actions_1_<?php echo $users_id_edit; ?>.style.color = "white";

	// inactive this btn 2
	user_dept_actions_2_<?php echo $users_id_edit; ?>.style.background = "white";
	user_dept_actions_2_<?php echo $users_id_edit; ?>.style.color = "#007bff";

	// show txtbox -> add new department
	new_dept_txtbox_<?php echo $users_id_edit; ?>.style.display = "block";

	// select the first option in dropdow
	document.getElementById("sel_dept_selection_<?php echo $users_id_edit; ?>").selectedIndex = "0"; 

	// hide selection department
	sel_dept_selection_<?php echo $users_id_edit; ?>.style.display = "none";

	// Submit btn's
	submitBtn_selectDept_<?php echo $users_id_edit; ?>.style.display = "none"; // hide selectBtn
	submitBtn_addNewDept_<?php echo $users_id_edit; ?>.style.display = "block"; // show addBtn
}

// Select Department Button
function select_dept_func_<?php echo $users_id_edit; ?>() {
	// active this btn 2
	user_dept_actions_2_<?php echo $users_id_edit; ?>.style.background = "#007bff";
	user_dept_actions_2_<?php echo $users_id_edit; ?>.style.color = "white";

	// inactive this btn 1
	user_dept_actions_1_<?php echo $users_id_edit; ?>.style.background = "white";
	user_dept_actions_1_<?php echo $users_id_edit; ?>.style.color = "#007bff";

	// show txtbox -> add new department
	new_dept_txtbox_<?php echo $users_id_edit; ?>.style.display = "none";

	// clear value of added new dept field
	document.getElementById("new_dept_txtbox_<?php echo $users_id_edit; ?>").value = ""; 

	// show selection department
	sel_dept_selection_<?php echo $users_id_edit; ?>.style.display = "block";

	// Submit btn's
	submitBtn_selectDept_<?php echo $users_id_edit; ?>.style.display = "block"; // show selectBtn
	submitBtn_addNewDept_<?php echo $users_id_edit; ?>.style.display = "none"; // hide addBtn
}
</script>
