 <!-- Topbar Start -->
<?php
$badge_count = '';
?> 

<style type="text/css">
    .option_topbar:hover {
        background: #007bff;
    }
    .option_link:hover {
        background: #0d6efd;
    }
</style>


<div class="navbar-custom topnav-navbar topnav-navbar-dark bg-primary">
    <div class="container-fluid">

        <!-- LOGO -->
        <a href="<?php echo BASE_URL; ?>" class="topnav-logo" style="min-width: unset;">
            <span class="topnav-logo-lg">
                <img src="<?php echo BASE_URL;?>images/logo-light.png" alt="logo" height="50">
                <span class="navbar_title">Survey Management System</span>
            </span>
            <span class="topnav-logo-sm">
                <img src="<?php echo BASE_URL;?>images/logo-light-sm.png" alt="logo" height="50">
            </span>
        </a>

        <ul class="list-unstyled topbar-right-menu float-right mb-0">

    <li class="dropdown notification-list" style="padding: 0; padding-top: 20px; padding-bottom: 10px;">

        <a class="nav-link dropdown-toggle arrow-none m-1 text-center bg-primary option_link" data-toggle="dropdown" id="topbar-userdrop" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="width: fit-content; padding: 0;">
            <!-- <span class="account-user-avatar">
                <img src="<?php //echo $global_profile_pic;?>" alt="user-image" class="rounded-circle">
    			<?php //echo '<span class="badge badge-notify-name">'.$badge_count.'</span>'; ?>
            </span> -->

            <!-- <span style="color: #fff;">
                <span class="account-user-name"><?php  //echo $g_user_name; ?></span>
                <span class="account-position"><?php //echo $g_user_role[0]; ?></span>
            </span> -->

            <div align="right" class="option_topbar" style="color: #fff;">
                <span style="font-size: 18px;">
                    <i class="fa-solid fa-gear"></i> Options
                </span>
            </div>
        </a>

        <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated topbar-dropdown-menu profile-dropdown shadow" aria-labelledby="topbar-userdrop" style="border: 1px solid #5c757d; border-radius: 0 0 5px 5px;">
        
        <!-- item-->
        <div class=" dropdown-header noti-title" style="display:none;">
            <h6 class="text-overflow m-0"></h6>
        </div>

        <!-- Account -->

		<a href="user_profile.php" class="dropdown-item notify-item">
            <i class="fa-solid fa-circle-user"></i> <span>My Profile</span>
        </a>

        <!-- Notification -->
		<!-- <a href="notif.php" class="dropdown-item notify-item">
            <span>Notification</span>
    		<span class="badge badge-notify"></span> <-- notif -->
            <!-- Logout-->
		<!-- </a> -->

		<a href="<?php echo BASE_URL;?>logout.php" class="dropdown-item notify-item">
            <i class="fa-solid fa-power-off"></i> <span>Logout</span>
        </a>

        </div>
    </li>


</ul>
<!-- <a class="button-menu-mobile disable-btn">
    <div class="lines">
        <span></span>
        <span></span>
        <span></span>
    </div>
</a> -->
<div class="visit_website">
	<!--
    <h4 style="color: #fff; float: left;font-family:inkfree;"> <span>e-GURO (Learning Management System)</span></h4>
	 <h6 style="font-family: Arial, sans-serif;color: #fff; float: right;"><span id="clock"><?php //echo date('D | F j, Y h:i:s A') ?></span></h6>
	-->
</div>


</div>
</div>
<!-- end Topbar -->

