
<style type="text/css">
  #sidebar_container {
    transition: all .3s ease;
    width: 300px; 
    margin: 0;
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
    border: 2px solid white; 
    border-left-style: none; 
    border-right-style: none; 
    border-bottom-style: none;
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
    #icon_sidebar_2 {
      display: block;
    }
    #titles_name_sidebar {
      display: none;
    }
    #titles_name_sidebar_2 {
      display: none;
    }
    #icon_sidebar_2 {
      display: block;
    }
    #titles_name_sidebar_3 {
      display: none;
    }
    #icon_sidebar_3 {
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

<div id="sidebar_container" class="border-0 bg-primary bg-gradient">

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
  <img src="<?php echo BASE_URL;?>images/placeholder.png" id="profile_img_sidebar" class="mx-auto d-block">
  <div id="user_display_name" class="text-light text-center"><?php echo $g_first_name." ".$g_last_name; ?></div>

<!-- SURVEY INFORMATION -->
  <!-- SELECTION -->
  <div class="selection_sidebar" onclick="window.location.href = 'main.php';">
    <div id="titles_name_sidebar"><i class="fa-solid fa-square-poll-vertical"></i> Survey Information</div>
    <!-- icon -->
    <div><i class="fa-solid fa-square-poll-vertical" id="icon_sidebar"></i></div>
  </div>

<!-- USER MANAGEMENT -->
  <div class="selection_sidebar" onclick="window.location.href = 'user_management.php';">
    <div id="titles_name_sidebar_2"><i class="fa-solid fa-users-gear"></i> User Management</div>
    <!-- icon -->
    <div><i class="fa-solid fa-users-gear" id="icon_sidebar_2"></i></div>
  </div>

<!-- SURVEY TEMPLATE -->
  <div class="selection_sidebar" onclick="window.location.href = 'eval_template.php';">
    <div id="titles_name_sidebar_3"><i class="fa-solid fa-pen-ruler"></i> Survey Templates</div>
    <!-- icon -->
    <div><i class="fa-solid fa-pen-ruler" id="icon_sidebar_3"></i></div>
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


<!-- END SIDEBAR -->








<script type="text/javascript">

  // MINIMIZE SIDE BAR
  function minimize_side_bar() {
    sidebar_container.style.width = "100px"; // sidebar
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
    icon_sidebar_3.style.display = "block"; // display icons
    icon_sidebar_4.style.display = "block"; // display icons
    icon_sidebar_4_1.style.display = "block"; // display icons
    icon_sidebar_4_1.style.fontSize = "20px"; // resize icons

    titles_name_sidebar.style.display = "none"; // hide title names
    titles_name_sidebar_2.style.display = "none"; // hide title names
    titles_name_sidebar_3.style.display = "none"; // hide title names
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
    icon_sidebar_3.style.display = "none"; // hide icons
    icon_sidebar_4.style.display = "none"; // hide icons
    icon_sidebar_4_1.style.display = "none"; // hide icons

    titles_name_sidebar.style.display = "block"; // display title names
    titles_name_sidebar_2.style.display = "block"; // display title names
    titles_name_sidebar_3.style.display = "block"; // display title names
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


</script>