
<style type="text/css">
  #sidebar_container {
    transition: all .3s ease;
    /*width: 300px; */
    width: 20%;
    margin-left: 10px;
    margin-right: 0;
    margin-top: 5px;
    margin-bottom: 0;
    border-radius: 7px 7px 0 0;
  }
  #arrow_right_sidebar {
    display: none; 
    color: white; 
    padding: 8px; 
    width: fit-content; 
    position: absolute; 
    top: 0; 
    right: 0; 
    font-size: 18px; 
    cursor: pointer; 
    text-shadow: 2px 2px 5px black;
  }

  #profile_img_sidebar {
    transition: all .5s ease;
    border-radius: 150px;
    height: 150px;
    width: 150px;
    margin: 20px;
  }

  #user_display_name {
    font-size: 18px;
  }

  .selection_sidebar {
    /* border: 2px solid white; 
    border-left-style: none; 
    border-right-style: none; 
    border-bottom-style: none; */
    padding: 10px; 
    color: white;
    cursor: pointer;
    font-size: 18px;
    text-decoration: none;
    position: relative;
  }
  .selection_sidebar:hover {
    background: white;
    color: #007bff;
  }

  /* CONTENT */
  .selection_sidebar_content {
    border: 2px solid white; 
    border-left-style: none; 
    border-right-style: none; 
    border-bottom-style: none;
    padding: 10px; 
    cursor: pointer;
    font-size: 18px;
    text-decoration: none;
    position: relative;
    background: white;
    color: #007bff;
  }
/*  .selection_sidebar_content:hover {
    background: white;
    color: #007bff;
  }*/

/* SIDEBAR SELECTION */


/* SURVEY INFORMATION */
  /* icons */
  #icon_sidebar {
    font-size: 30px;
    display: none;
    text-align: center;
  }

  /* title names */
  #titles_name_sidebar {
    position: relative;
    display: block;
  }

/* USER MANAGEMENT */
  /* icons */
  #icon_sidebar_2 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

  /* title names */
  #titles_name_sidebar_2 {
    position: relative;
    display: block;
  }

  /* SURVEY MANAGEMENT */
  #titles_name_sidebar_2_1 {
    position: relative;
    display: block;
  }
  #icon_sidebar_2_1 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

/* SURVEY TEMPLATES */
  /* icons */
  #icon_sidebar_3 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

  /* title names */
  #titles_name_sidebar_3 {
    position: relative;
    display: block;
  }

/* TEMPLATES LIST */
  /* icons */
  #icon_sidebar_3_1 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

  /* title names */
  #titles_name_sidebar_3_1 {
    position: relative;
    display: block;
  }

  /* QUESTIONS CRITEIA */
  #titles_name_sidebar_3_2 {
    position: relative;
    display: block;
  }
  #icon_sidebar_3_2 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

/* ACTIVITY LOG */
  /* icons */
  #icon_sidebar_4 {
    font-size: 30px;
    display: none;
    text-align: center;
    transition: all .3s ease;
  }

  /* title names */
  #titles_name_sidebar_4 {
    position: relative;
    display: block;
  }

  /* Activity Log Arrow rotation */
  #activity_log_arrow {
    transition: all .3s ease;
  }

/* ADMIN ACTIVITY LOG */
  /* icons */
  #icon_sidebar_4_1 {
    font-size: 30px;
    display: none;
    text-align: center;
  }

  /* title names */
  #titles_name_sidebar_4_1 {
    position: relative;
    display: block;
    transition: all .3s ease;

    position: relative;
    top: -35px;
  }
  #selection_sidebar_4_1 {
    display: none;
  }


  /* arrow rotation SURVEY MANAGEMENT*/
  #arr_right_sMng {
    transform: rotate(0deg);
    transition: all .5s ease;
  }

  /* CREATE TEMPLATE - Survey Management */
  #sect_createTemplate {
    position: relative;
    left: 0;
    top: -45px;
    display: none;
    transition: all .3s ease;
  }

  /* LIST OF SURVEY */
  #sect_list_survey {
    position: relative;
    left: 0;
    top: -45px;
    display: none;
    transition: all .3s ease;
  }





  /* RESPONSIVE */
  @media screen and (max-width: 780px){
    /* sidebar layout */
    /* minimize sidebar */
    #sidebar_container {
      /*width: 100px;*/
      width: 100px;
      /*position: absolute;*/
    }
    #survey_info_container { /* contents size */
      width: 100%;
    }
    #profile_img_sidebar { /* profile img size */
      width: 50px;
      height: 50px;
      margin-top: 30px;
    }
    /* ARROWS */
    #arrow_right_sidebar { /* display arrow right */
      display: block;
    }
    #arrow_left_sidebar { /* hide arrow left */
      display: none;
    }

    #user_display_name { /* hide user first name */
      display: none;
    }

    #icon_sidebar {
      display: block;
    }
    #titles_name_sidebar {
      display: none;
    }
    #titles_name_sidebar_2 {
      display: none;
    }
    #titles_name_sidebar_2_1 {
      display: none;
    }
    #icon_sidebar_2_1 {
      display: block;
    }
    #icon_sidebar_2 {
      display: block;
    }
    /* CREATE TEMPLATES */
    #titles_name_sidebar_3 {
      display: none;
    }
    #icon_sidebar_3 {
      display: block;
    }
    /* TEMPLATES lIST */
    #titles_name_sidebar_3_1 {
      display: none;
    }
    #icon_sidebar_3_1 {
      display: block;
    }

    /* QUESTIONS CRITERIA */
    #titles_name_sidebar_3_2 {
      display: none;
    }
    #icon_sidebar_3_2 {
      display: block;
    }

    #titles_name_sidebar_4 {
      display: none;
    }
    #icon_sidebar_4 {
      display: block;
    }

    #titles_name_sidebar_4_1 {
      display: none;
    }
    #icon_sidebar_4_1 {
      display: block;
      font-size: 20px;
    }
  }

</style>







<!-- SIDEBAR -->

<div id="sidebar_container" class="border border-primary bg-primary bg-gradient shadow">
  <div class="sticky-top pt-2">

    <!-- ARROW -->
    <div style="position: relative;">

      <!-- arrow-left-menu -->
      <div id="arrow_left_sidebar" onclick="minimize_side_bar()" class="arrow_left_slidebar" style="color: white; padding: 8px; width: fit-content; position: absolute; top: 0; right: 0; font-size: 18px; cursor: pointer; text-shadow: 2px 2px 5px black;">
        <i class="fa-solid fa-angles-left"></i> <!-- LEFT -->
      </div>

      <!-- arrow-right-menu -->
      <div id="arrow_right_sidebar" onclick="maximize_side_bar()" class="arrow_left_slidebar">
        <i class="fa-solid fa-angles-right"></i> <!-- RIGHT -->
      </div>

    </div>
      

    <!-- image & name -->
    <img src="<?php if(!empty($g_logo_sidebar)){echo $g_logo_sidebar;}else{echo BASE_URL."/images/placeholder.png";} ?>" id="profile_img_sidebar" class="mx-auto d-block">
    <div id="user_display_name" class="text-light text-center"><?php echo $g_first_name." ".$g_last_name; ?></div>

  <!-- SURVEY INFORMATION -->
    <!-- SELECTION -->
    <div class="selection_sidebar" onclick="window.location.href = 'main.php';">
      <div id="titles_name_sidebar"><i class="fa-solid fa-square-poll-vertical"></i> Dashboard</div>
      <!-- icon -->
      <div><i class="fa-solid fa-square-poll-vertical" id="icon_sidebar"></i></div>
    </div>

  <!-- USER MANAGEMENT -->
    <div class="selection_sidebar" onclick="window.location.href = 'user_management.php';">
      <div id="titles_name_sidebar_2"><i class="fa-solid fa-users-gear"></i> User Management</div>
      <!-- icon -->
      <div><i class="fa-solid fa-users-gear" id="icon_sidebar_2"></i></div>
    </div>

    <!-- SURVEY MANAGEMENT -->
    <div>

      <div class="selection_sidebar" id="toggle_focus_s_mng" onclick="document.getElementById('checkbox_s_management').click(); click_s_management()">
        <div id="titles_name_sidebar_2_1"><i class="fa-solid fa-list-check"></i> Survey Management <div class="float-right" id="arr_right_sMng"><i class="fa-solid fa-chevron-right"></i></div></div>
        <!-- icon -->
        <div><i class="fa-solid fa-pen-ruler" id="icon_sidebar_2_1"></i></div>

        <input type="checkbox" id="checkbox_s_management" style="display: none;">
      </div>

    <!-- CREATE TEMPLATE -->
      <div class="selection_sidebar" id="sect_createTemplate" onclick="window.location.href = 'create_template.php';">
        <div id="titles_name_sidebar_3">
          <!-- Vertical line -->
          <!-- <div class="float-left bg-light" style="border: 1px solid white; width: 5px; height: 47px; margin-top: -10px; margin-left: -10px;"></div> -->
          <i class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;
          Create Templates
        </div>
        <!-- icon -->
        <div><i class="fa-solid fa-pen-ruler" id="icon_sidebar_3"></i></div>
      </div>

    <!-- LIST OF SURVEY -->
    <div class="selection_sidebar" id="sect_list_survey" onclick="window.location.href = 'template_list.php';">
      <div id="titles_name_sidebar_3_1">
        <!-- Vertical line -->
        <!-- <div class="float-left bg-light" style="border: 1px solid white; width: 5px; height: 47px; margin-top: -10px; margin-left: -10px;"></div> -->
        <i class="fa-solid fa-angle-right"></i>&nbsp;&nbsp;
        List of Survey
      </div>
      <!-- icon -->
      <div><i class="fa-solid fa-clipboard-check" id="icon_sidebar_3_1"></i></div>
    </div>

    </div><!-- END SURVEY MANAGEMENT -->




    <!-- QUESTIONS CRITERIA -->
    <div class="selection_sidebar" onclick="window.location.href = 'manage_template.php';">
        <div id="titles_name_sidebar_3_2">
          <i class="fa-solid fa-file-lines"></i> Questions Criteria
        </div>
        <!-- icon -->
        <div><i class="fa-solid fa-list" id="icon_sidebar_3_2"></i></div>
    </div>





  <!-- ACTIVITY LOG -->
    <!-- Div 1 -->
    <div class="selection_sidebar" onclick="expand_act_log();">
        <div id="titles_name_sidebar_4">
          <i class="fa-solid fa-list"></i> Activity Log 
          <span style="position: absolute; right: 10px;" id="activity_log_arrow"><i class="fa-solid fa-angle-right"></i></span>
        </div>
        <!-- icon -->
        <div><i class="fa-solid fa-list" id="icon_sidebar_4"></i></div>
    </div>

    <!-- Acivity log - contents -->
    <div class="selection_sidebar_content" id="selection_sidebar_4_1" onclick="window.location.href = 'admin_activity_log.php';">
      <div id="titles_name_sidebar_4_1"><i class="fa-solid fa-arrow-right-long"></i> Admin-log</div>
      <!-- icon -->
      <div id="icon_sidebar_4_1"><i class="fa-solid fa-list"></i> <i class="fa-solid fa-1"></i></div>
    </div>
    <!-- END SELECTION -->
  
  </div>
</div>


<!-- END SIDEBAR -->








<script type="text/javascript">

  // MINIMIZE SIDE BAR
  function minimize_side_bar() {
    sidebar_container.style.width = "100px"; // sidebar
    // sidebar_container.style.width = "10%"; // sidebar
    survey_info_container.style.width = "100%"; // contents

    arrow_right_sidebar.style.display = "block"; // display arrow-right button
    arrow_left_sidebar.style.display = "none"; // hide arrow-left button

    profile_img_sidebar.style.width = "50px"; // resize img to smaller icon
    profile_img_sidebar.style.height = "50px";
    profile_img_sidebar.style.marginTop = "30px"; // margin top

    user_display_name.style.display = "none"; // do not display uer name


    // CHANGE ICON SIZE & DISPLAY - TEXT CENTER
    icon_sidebar.style.display = "block"; // display icons
    icon_sidebar_2.style.display = "block"; // display icons
    icon_sidebar_2_1.style.display = "block"; // display icons
    icon_sidebar_3.style.display = "block"; // display icons
    icon_sidebar_3_1.style.display = "block"; // display icons
    icon_sidebar_4.style.display = "block"; // display icons
    icon_sidebar_4_1.style.display = "block"; // display icons
    icon_sidebar_4_1.style.fontSize = "20px"; // resize icons

    titles_name_sidebar.style.display = "none"; // hide title names
    titles_name_sidebar_2.style.display = "none"; // hide title names
    titles_name_sidebar_2_1.style.display = "none"; // hide title names
    titles_name_sidebar_3.style.display = "none"; // hide title names
    titles_name_sidebar_3_1.style.display = "none"; // hide title names
    titles_name_sidebar_4.style.display = "none"; // hide title names
    titles_name_sidebar_4_1.style.display = "none"; // hide title names
  }

  // MAXIMIZE SIDE BAR
  function maximize_side_bar() {
    sidebar_container.style.width = "300px"; // sidebar
    // survey_info_container.style.width = "80%"; // contents

    arrow_right_sidebar.style.display = "none"; // hide arrow-right button
    arrow_left_sidebar.style.display = "block"; // display arrow-left button

    profile_img_sidebar.style.width = "150px"; // resize img to original size
    profile_img_sidebar.style.height = "150px";
    profile_img_sidebar.style.marginTop = "20px"; // margin top

    user_display_name.style.display = "block"; // display uer name


    // CHANGE ICON SIZE & DISPLAY - TEXT CENTER
    icon_sidebar.style.display = "none"; // hide icons
    icon_sidebar_2.style.display = "none"; // hide icons
    icon_sidebar_2_1.style.display = "none"; // hide icons
    icon_sidebar_3.style.display = "none"; // hide icons
    icon_sidebar_3_1.style.display = "none"; // hide icons
    icon_sidebar_4.style.display = "none"; // hide icons
    icon_sidebar_4_1.style.display = "none"; // hide icons

    titles_name_sidebar.style.display = "block"; // display title names
    titles_name_sidebar_2.style.display = "block"; // display title names
    titles_name_sidebar_2_1.style.display = "block"; // display title names
    titles_name_sidebar_3.style.display = "block"; // display title names
    titles_name_sidebar_3_1.style.display = "block"; // display title names
    titles_name_sidebar_4.style.display = "block"; // display title names
    titles_name_sidebar_4_1.style.display = "block"; // display title names
  }

  // ACTIVITY LOG
  function expand_act_log() {
    // Admin Log styles
    
    selection_sidebar_4_1.style.display = "block"; // display ACTIVITY Log content : admin log

    setTimeout(changeStyle_check, .500);

    function changeStyle_check() {
      titles_name_sidebar_4_1.style.top = "0px"; // bring down Admin Log
      activity_log_arrow.style.transform = "rotate(90deg)"; // rotate arrow from Activity log
    }
  }






  // SURVEY MANAGEMENT

  // if checkbox is clicked rotate the arrow,
  // if clicked again, rotate arrow to original
  function click_s_management(){
    // checkbox id: checkbox_s_management
    // arrow right id: arr_right_sMng
    var checkBox_s_mngnt = document.getElementById("checkbox_s_management");
    var txt_arrowRight = document.getElementById("arr_right_sMng"); // arrow right
    if (checkBox_s_mngnt.checked == true) {
      txt_arrowRight.style.transform = "rotate(90deg)"; // rotate txt
      // focus selection
      toggle_focus_s_mng.style.background = "white";
      toggle_focus_s_mng.style.color = "#007bff";

      // toggle down -> sect_createTemplate
      // show
      setTimeout(tggleShow_sectCreateTempl, 200); // .2 second
      function tggleShow_sectCreateTempl() {
        sect_createTemplate.style.display = "block"; // show CREATE TEMPLATE

        setTimeout(toggleShow_sectListSurvey, 200); // .2 second
        function toggleShow_sectListSurvey() {
          sect_list_survey.style.display = "block"; // show LIST OF SURVEY
        }

        // bring down
        setTimeout(tggleDown_sectCreateTempl, 200); // .2 second
        function tggleDown_sectCreateTempl() {
          sect_createTemplate.style.top = "0px"; // bring down CREATE TEMPLATE

          setTimeout(toggleDown_sectListSurvey, 200); // .2 second
          function toggleDown_sectListSurvey() {
            sect_list_survey.style.top = "0px"; // birng down LIST OF SURVEY
          }

        }
      }

      click();
    }else{
      txt_arrowRight.style.transform = "rotate(0deg)"; // rotate txt 0 degree
      // unfocus selection
      toggle_focus_s_mng.style.background = "#007bff";
      toggle_focus_s_mng.style.color = "white";

      // toggle down -> sect_createTemplate
      // bring up
      setTimeout(tggleUp_sectCreateTempl, 200); // .2 second
      function tggleUp_sectCreateTempl() {
        sect_list_survey.style.top = "-45px"; // bring up LIST OF SURVEY
        
        setTimeout(toggleUp_sectListSurvey, 200); // .2 second
        function toggleUp_sectListSurvey() {
          sect_createTemplate.style.top = "-45px"; // bring up CREATE TEMPLATE
        }

        // hide
        setTimeout(tggleHide_sectCreateTempl, 300); // .3 second
        function tggleHide_sectCreateTempl() {
          sect_list_survey.style.display = "none"; // hide LIST OF SURVEY
          
          setTimeout(toggleHide_sectListSurvey, 200); // .2 second
          function toggleHide_sectListSurvey() {
            sect_createTemplate.style.display = "none"; // hide CREATE TEMPLATE
          }
        }
      }
    }
  }



</script>