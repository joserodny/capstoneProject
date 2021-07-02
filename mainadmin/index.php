<!DOCTYPE html>

<?php

session_start();



if (!isset($_SESSION['username'])) {

    header("Location: ../login.php");

}

if (!isset($_SESSION['username']) && $_SESSION['role'] == 1) {



    header("Location: ../login.php");

} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 2) {



    echo "<script>window.open('../403.html','_self')</script>";

} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 3) {



    echo "<script>window.open('../403.html','_self')</script>";

} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 4) {



    echo "<script>window.open('../403.html','_self')</script>";

}







include('function/function.php');

include('connection.php');







//##########################################################################

// ITEXMO SEND SMS API - PHP - CURL METHOD

// Visit www.itexmo.com/developers.php for more info about this API

//##########################################################################

function itexmo($number, $message, $apicode)

{

    $ch = curl_init();

    $itexmo = array('1' => $number, '2' => $message, '3' => $apicode);

    curl_setopt($ch, CURLOPT_URL, "https://www.itexmo.com/php_api/api.php");

    curl_setopt($ch, CURLOPT_POST, 1);

    curl_setopt(

        $ch,

        CURLOPT_POSTFIELDS,

        http_build_query($itexmo)

    );

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    return curl_exec($ch);

    curl_close($ch);

}

//##########################################################################

global $con;

$result = mysqli_query($con,"SELECT

  r.region_name as region,

  (select count(NULLIF(ev.evacuees_id,0)) ) as individual

  from evacuations eva

  LEFT JOIN evacuees ev on ev.eva_id=eva.eva_id

  LEFT JOIN region r on r.r_id=eva.r_id

  LEFT JOIN constituents con on con.cons_id=ev.cons_id

  where ev.stat_id !=1

  GROUP BY r.r_id ORDER BY individual ASC");



?>

<html lang="en">



<head>





    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">

    <link rel="icon" type="image/png" sizes="16x16" href="img/logo.png">

    <title>Evacuation Monitoring</title>

    <!-- Bootstrap Core CSS -->



    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="../plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

    <link href="css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />

    <!-- Menu CSS -->

    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">

    <!-- animation CSS -->

    <link href="css/animate.css" rel="stylesheet">

    <!-- Custom CSS -->

    <link href="css/style.css" rel="stylesheet">

    <!-- color CSS -->

    <link href="css/colors/default.css" id="theme" rel="stylesheet">

    <!-- toast CSS -->

    <link href="../plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">

    <!-- morris CSS -->

    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- chartist CSS -->

    <link href="../plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">

    <link href="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">

    <!-- Calendar CSS -->

    <link href="../plugins/bower_components/calendar/dist/fullcalendar.css" rel="stylesheet" />

    <!--alerts CSS -->

    <link href="../plugins/bower_components/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">

    <!-- Footable CSS -->

    <link href="../plugins/bower_components/footable/css/footable.core.css" rel="stylesheet">

    <link href="../plugins/bower_components/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />

    <link href="../plugins/bower_components/morrisjs/morris.css" rel="stylesheet">

 <link rel="stylesheet" href="../plugins/bower_components/dropify/dist/css/dropify.min.css">

    <script type="text/javascript" src="js/loaders.js"></script>

    <script src="js/jquery.min.js"></script>

	<script src="js/jquery-ui.js"></script>

      <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">





           <script type="text/javascript">

      google.charts.load('current', {'packages':['bar']});

      google.charts.setOnLoadCallback(drawChart);



      function drawChart() {

        var data = google.visualization.arrayToDataTable([

          ['', 'Individual'],

          <?php

		   if(mysqli_num_rows($result)>0)

		   {

			   while($row = mysqli_fetch_assoc($result))

			   {

				   echo "['".$row['region']."', '".$row['individual']."'],";

			   }

		   }

		 ?>

        ]);



        var options = {

          chart: {

            title: '',

            subtitle: '',

          }

        };



        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));



        chart.draw(data, google.charts.Bar.convertOptions(options));

      }

    </script>













    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>

    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

<![endif]-->

</head>



<body class="fix-header">

<style> select {text-transform:uppercase} </style>





    <!-- ============================================================== -->

    <!-- Preloader -->

    <!-- ============================================================== -->

    <div class="preloader">

        <svg class="circular" viewBox="25 25 50 50">

            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />

        </svg>

    </div>

    <!-- ============================================================== -->

    <!-- Wrapper -->

    <!-- ============================================================== -->

    <div id="wrapper">

        <!-- ============================================================== -->

        <!-- Topbar header - style you can find in pages.scss -->

        <!-- ============================================================== -->

        <nav class="navbar navbar-default navbar-static-top m-b-0">

            <div class="navbar-header">

                <div class="top-left-part">

                    <!-- Logo -->

                    <a class="logo" href="index.php">

                        <!-- Logo icon image, you can use font-icon also --><b>

                            <!--This is dark logo icon--><img src="img/logo.png" alt="home" class="dark-logo" />

                            <!--This is light logo icon--><img src="img/logo.png" alt="home" class="light-logo" />

                        </b>

                        <!-- Logo text image you can use text also --><span class="hidden-xs">

                            <!--This is dark logo text--><img src="img/logotext.png" alt="home" class="dark-logo" />

                            <!--This is light logo text--><img src="img/newlog.png" alt="home" class="light-logo" />

                        </span> </a>

                </div>

                <!-- /Logo -->

                <!-- Search input and Toggle icon -->

                <ul class="nav navbar-top-links navbar-left">

                    <li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>



                </ul>













                <ul class="nav navbar-top-links navbar-right pull-right">





                    <li class="dropdown">

                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="true"><b class="hidden-xs"><?php echo $_SESSION['username']; ?></b><span class="caret"></span> </a>

                        <ul class="dropdown-menu dropdown-user animated flipInY">









                            <li><a href="#" data-toggle="modal" data-target="#accsetting"><i class="ti-settings"></i> Account Setting</a></li>

                            <li role="separator" class="divider"></li>



                            <?php



                            if (!isset($_SESSION['username'])) { } else {

                                echo "

					 <li><a href='../logout.php'><i class='fa fa-power-off'></i> Logout</a></li>

					";

                            }



                            ?>

                        </ul>

                        <!-- /.dropdown-user -->

                    </li>



                    <li class="dropdown">

















                        <!-- /.dropdown-user -->

                    </li>





                    <!-- /.dropdown -->

                </ul>

            </div>

            <!-- /.navbar-header -->

            <!-- /.navbar-top-links -->

            <!-- /.navbar-static-side -->

        </nav>

        <!-- End Top Navigation -->

        <!-- ============================================================== -->

        <!-- Left Sidebar - style you can find in sidebar.scss  -->

        <!-- ============================================================== -->

        <div class="navbar-default sidebar" role="navigation">

            <div class="sidebar-nav slimscrollsidebar">

                <div class="sidebar-head">

                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>

                </div>

                <div class="user-profile">



                </div>

                <ul class="nav" id="side-menu">

                    <li> <a href="index.php" class="waves-effect"><i class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard </span></a>



                    </li>



                    <li class="devider"></li>



                    <li> <a href="#" class="waves-effect"><i class="mdi mdi-bookmark-plus fa-fw"></i> <span class="hide-menu">Add area<span class="fa arrow"></span></span></a>

                        <ul class="nav nav-second-level">

                            <li><a href="#" data-toggle="modal" data-target="#Region"><i data-icon="&#xe026;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Region</span></a>

                        </li>

                            <li><a href="#" data-toggle="modal" data-target="#province"><i data-icon="&#xe025;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Province</span></a></li>

                            <li><a href="#" data-toggle="modal" data-target="#mcity"><i class="ti-layout-menu fa-fw"></i> <span class="hide-menu">City/Municipalities</span></a></li>



                        </ul>

                    </li>

                    <li class="devider"></li>

                    <li> <a href="#" class="waves-effect"><i class="wi wi-thunderstorm fa-fw"></i> <span class="hide-menu">Add Disaster<span class="fa arrow"></span></span></a>

                        <ul class="nav nav-second-level">

                            <li><a href="#" data-toggle="modal" data-target="#disaster"><i data-icon="&#xe026;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Disaster</span></a></li>

                            <li><a href="#" data-toggle="modal" data-target="#typhoon"><i data-icon="&#xe026;" class="wi wi-sleet fa-fw"></i> <span class="hide-menu">Typhoon name</span></a></li>

                        </ul>

                    <li class="devider"></li>
					                    <li> <a href="typhoons.php" class="waves-effect"><i class="ti-lock fa-fw"></i> <span class="hide-menu">Disable typhoon name</span></a>
   <li class="devider"></li>


                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#cityadmin"><i class="mdi mdi-account-multiple-plus fa-fw"></i> <span class="hide-menu">Add City admin</span></a>



                    </li>





                    <li class="devider"></li>

                    <li> <a href="users.php" class="waves-effect"><i class="ti-settings fa-fw"></i> <span class="hide-menu">Manage Account</span></a>





                    </li>

                    <li class="devider"></li>

        <li> <a href="javascript:void(0)" class="waves-effect" data-toggle="modal" data-target="#backres"><i class="ti-settings fa-fw"></i> <span class="hide-menu">Backup and restore</span></a></li>

                    <li class="devider"></li>



                </ul>

            </div>

        </div>

        <!-- ============================================================== -->

        <!-- End Left Sidebar -->

        <!-- ============================================================== -->

        <!-- ============================================================== -->

        <!-- Page Content -->

        <!-- ============================================================== -->

        <div id="page-wrapper">

            <div class="container-fluid">

                <div class="row bg-title">

                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">

                        <h4 class="page-title">DASHBOARD</h4>

                    </div>



                    <!-- /.col-lg-12 -->

                </div>





                <div class="row">

                    <div class="col-md-12 col-lg-4">

                        <div class="white-box analytics-info">

                            <div class="row">

                                <h3 class="box-title">Total Evacuees</h3>

                                <ul class="list-inline two-part">



                                    <li>

                                        <div id="sparklinedash">

                                            <a href="index.php" class="btn btn-primary btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-id-badge"></i></span>View</a></div>

                                    </li>

                                    <li class="text-right">

                                        <span class="counter text-primary">

                                            <?php

                                            global $con;

                                            $sql = "SELECT * from evacuees where stat_id !=1";

                                            if ($result = mysqli_query($con, $sql)) { // Return the number of rows in result set

                                                $rowcount = mysqli_num_rows($result);

                                                echo $rowcount;

                                                // Free result set

                                                mysqli_free_result($result);

                                            }

                                            ?>

                                        </span>

                                    </li>

                                </ul>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-12 col-lg-4">

                        <div class="white-box analytics-info">

                            <div class="row">

                                <h3 class="box-title">missing</h3>

                                <ul class="list-inline two-part">



                                    <li>

                                        <div id="sparklinedash">

                                            <a href="missing.php" class="btn btn-danger btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-help-alt"></i></span>View</a></div>

                                    </li>

                                    <li class="text-right">

                                        <span class="counter text-danger">

                                            <?php

                                            global $con;

                                            $sql = "SELECT * from missing where statusid=1";

                                            if ($result = mysqli_query($con, $sql)) { // Return the number of rows in result set

                                                $rowcount = mysqli_num_rows($result);

                                                echo $rowcount;

                                                // Free result set

                                                mysqli_free_result($result);

                                            }

                                            ?>

                                        </span>

                                    </li>



                                </ul>

                            </div>

                        </div>

                    </div>

                    <div class="col-md-12 col-lg-4">

                        <div class="white-box analytics-info">

                            <div class="row">

                                <h3 class="box-title">rescued</h3>

                                <ul class="list-inline two-part">



                                    <li>

                                        <div id="sparklinedash">

                                            <a href="rescued.php" class="btn btn-info btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-map-alt"></i></span>View</a></div>

                                    </li>

                                    <li class="text-right">

                                        <span class="counter text-info">

                                            <?php

                                            global $con;

                                            $sql = "SELECT * from rescued where statusid=1";

                                            if ($result = mysqli_query($con, $sql)) { // Return the number of rows in result set

                                                $rowcount = mysqli_num_rows($result);

                                                echo $rowcount;

                                                // Free result set

                                                mysqli_free_result($result);

                                            }

                                            ?>

                                        </span>

                                    </li>



                                </ul>

                            </div>

                        </div>

                    </div>

                </div>



                <script type="text/javascript">

                    function get_username() {

                        var name = $("#name").val();



                        if (name != "") {

                            $.ajax({

                                type: 'post',

                                url: 'do_signup.php',

                                data: {

                                    get_username: name



                                },

                                success: function(response) {

                                    $("#username").css({

                                        "display": "block"

                                    });

                                    $("#username").html("Username : " + response);

                                    $("#username_value").val(response);

                                }

                            });

                        }

                    }

                </script>









                <form method="post" action="do_signup.php">





                </form>











                    <div class="col-md-12">

                        <div class="white-box">

                        <h3 class="box-title">Total evacuees per region</h3>



<div id="columnchart_material" style="width: 100%; height: 500px;" ></div>

                        </div>

                    </div>









                <div class="row">

                    <div class="col-md-12 col-lg-4">


                    <a href="history.php" class=""> <input type="button"  value="History" class="btn btn-info" /></a>
                    <h5></h5>

                    </div>

                </div>



                <div class="sttabs tabs-style-bar">

                     <nav>

                        <ul>

                            <li class="tab-current"><a href="#section-bar-1" id="clear1" class="icon-location-pin"><span>&nbsp;Region reports</span></a></li>

                            <li class=""><a href="#section-bar-2" id="clear2" class="icon-location-pin"><span>&nbsp;Province reports</span></a></li>

                            <li><a href="#section-bar-3" id="clear3" class="icon-location-pin"><span>&nbsp;Cities reports</span></a></li>

                            <li><a href="#section-bar-4" id="clear4" class="icon-location-pin"><span>&nbsp;Barangay reports</span></a></li>

                        </ul>

                    </nav>

                    <div class="content-wrap">

                        <section id="section-bar-1" class="content-current">

                        <div class="col-xs-2">

                     <input type="text" name="from_date" id="from_date" class="form-control" placeholder="From Date" autocomplete="off"/>

                </div>

                <div class="col-xs-2">

                     <input type="text" name="to_date" id="to_date" class="form-control" placeholder="To Date" autocomplete="off"/>



                </div>




                                <div class="col-xs-2"  id="disasters" >

                                <select class="form-control" name="typname" id="saster"  required>

                                <option value="">- Select disaster -</option>

                                <?php disasters() ?>

                                </select>

                                <select class="form-control" name="typname" id="mySelect"  required>

                                <option value="">- Select Typhoon name -</option>

                                <?php activetyphoon() ?>

                                </select>

                                </div>













                <div class="col-md-5">

                     <input type="button" name="filter" id="filter" value="Search" class="btn btn-info" />

                </div>

                <div style="clear:both"></div>

                <br />

                            <div class="table-responsive">	 <div id="order_table" disable>

                                <table id="myTable1" class="table table-striped ">





                                    <thead>

                                        <tr></tr>

                                            <th>Region</th>

                                            <th>Total Individual</th>

                                            <th>Total Families</th>

                                            <th>Male</th>

                                            <th>Female</th>

											<th>Infant</th>

                                            <th>Child</th>

                                            <th>Adult</th>

                                            <th>Senior Citizen</th>



                                        </tr>

                                    </thead>

                                    <tbody>



                                        <?php



                                        global $con;

                                        $result = mysqli_query($con, "SELECT

									r.region_name as region,



									(select count(NULLIF(ev.evacuees_id,0)) ) as individual,

									(select count(distinct NULLIF(ev.cons_fid,0)) ) as family,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Male' THEN 1 END) Male,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Female' THEN 1 END) Female,

									SUM(IF(con.cons_age BETWEEN 0 and 2,1,0)) as infant,

									SUM(IF(con.cons_age BETWEEN 3 and 12,1,0)) as child,

									SUM(IF(con.cons_age BETWEEN 13 and 59,1,0)) as adult,

									SUM(IF(con.cons_age BETWEEN 60 and 99,1,0)) as senior



									from evacuations eva



									LEFT JOIN evacuees ev on ev.eva_id=eva.eva_id

									LEFT JOIN brgy br on br.b_id=eva.b_id

									LEFT JOIN city ct on ct.c_id=eva.c_id

									LEFT JOIN province p on p.p_id=eva.p_id

									LEFT JOIN region r on r.r_id=eva.r_id

									LEFT JOIN constituents con on con.cons_id=ev.cons_id

                                    where ev.stat_id !=1

									GROUP BY r.r_id");



                                        while ($row = mysqli_fetch_assoc($result)) :



                                            ?>

                                            <tr>

                                                <td style="text-transform:uppercase"><?php echo $row['region']; ?></td>

                                                <td><?php echo $row['individual']; ?></td>

                                                <td><?php echo $row['family']; ?></td>

                                                <td><?php echo $row['Male']; ?></td>

                                                <td><?php echo $row['Female']; ?></td>

												<td><?php echo $row['infant']; ?></td>

                                                <td><?php echo $row['child']; ?></td>

                                                <td><?php echo $row['adult']; ?></td>

                                                <td><?php echo $row['senior']; ?></td>



                                            </tr>

                                        <?php endwhile; ?>

                                    </tbody>

                                </table>  </div>

                            </div>

                        </section>







                        <section id="section-bar-2" class="">

                            <div class="col-xs-2">

                     <input type="text" name="from_date1" id="from_date1" class="form-control" placeholder="From Date" autocomplete="off"/>

                </div>

                <div class="col-xs-2">

                     <input type="text" name="to_date1" id="to_date1" class="form-control" placeholder="To Date" autocomplete="off"/>



                </div>



                                <div class="col-xs-2"  id="disasters1" >

                                <select class="form-control" name="typname1" id="saster1"  required>

                                <option value="">- Select disaster -</option>

                                <?php disasters() ?>

                                </select>

                                <select class="form-control" name="typname2" id="mySelect1"  required>

                                <option value="">- Select Typhoon name -</option>

                                <?php activetyphoon() ?>

                                </select>

                                </div>













                <div class="col-md-5">

                     <input type="button" name="filter1" id="filter1" value="Search" class="btn btn-info" />

                </div>

                <div style="clear:both"></div>

                <br />



                            <div class="table-responsive"> <div id="province1">

                                <table id="myTable2" class="table table-striped ">

                                    <thead>

                                        <tr>

                                            <th>Region</th>

                                            <th>Province</th>

                                            <th>Total Individual</th>

                                            <th>Total Families</th>

                                            <th>Male</th>

                                            <th>Female</th>

                                            <th>Infant</th>

										    <th>Child</th>

                                            <th>Adult</th>

                                            <th>Senior Citizen</th>





                                        </tr>

                                    </thead>

                                    <tbody>



                                        <?php



                                        global $con;

                                        $result = mysqli_query($con, "SELECT

									r.region_name as region,

									p.province_name as province,

									(select count(NULLIF(ev.evacuees_id,0)) ) as individual,

									(select count(distinct NULLIF(ev.cons_fid,0)) ) as family,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Male' THEN 1 END) Male,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Female' THEN 1 END) Female,

									SUM(IF(con.cons_age BETWEEN 0 and 2,1,0)) as infant,

									SUM(IF(con.cons_age BETWEEN 3 and 12,1,0)) as child,

									SUM(IF(con.cons_age BETWEEN 13 and 59,1,0)) as adult,

									SUM(IF(con.cons_age BETWEEN 60 and 99,1,0)) as senior



									from evacuations eva



									LEFT JOIN evacuees ev on ev.eva_id=eva.eva_id

									LEFT JOIN brgy br on br.b_id=eva.b_id

									LEFT JOIN city ct on ct.c_id=eva.c_id

									LEFT JOIN province p on p.p_id=eva.p_id

									LEFT JOIN region r on r.r_id=eva.r_id

									LEFT JOIN constituents con on con.cons_id=ev.cons_id

                                    where ev.stat_id !=1

									GROUP BY p.p_id");



                                        while ($row = mysqli_fetch_assoc($result)) :



                                            ?>

                                            <tr>

                                                <td style="text-transform:uppercase"><?php echo $row['region']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['province']; ?></td>

                                                <td><?php echo $row['individual']; ?></td>

                                                <td><?php echo $row['family']; ?></td>

                                                <td><?php echo $row['Male']; ?></td>

                                                <td><?php echo $row['Female']; ?></td>

												<td><?php echo $row['infant']; ?></td>

												<td><?php echo $row['child']; ?></td>

                                                <td><?php echo $row['adult']; ?></td>

                                                <td><?php echo $row['senior']; ?></td>



                                            </tr>

                                        <?php endwhile; ?>

                                    </tbody>

                                </table>   </div>

                            </div>







                        </section>





                        <section id="section-bar-3">

                        <div class="col-xs-2">

                     <input type="text" name="from_date2" id="from_date2" class="form-control" placeholder="From Date" autocomplete="off"/>

                </div>

                <div class="col-xs-2">

                     <input type="text" name="to_date2" id="to_date2" class="form-control" placeholder="To Date" autocomplete="off"/>



                </div>



                                <div class="col-xs-2" >

                                <select class="form-control" name="typname2" id="saster2"  required>

                                <option value="">- Select disaster -</option>

                                <?php disasters() ?>

                                </select>

                                <select class="form-control" name="typname2" id="mySelect2"  required>

                                <option value="">- Select Typhoon name -</option>

                                <?php activetyphoon() ?>

                                </select>

                                </div>













                <div class="col-md-5">

                     <input type="button" name="filter2" id="filter2" value="Search" class="btn btn-info" />

                </div>

                <div style="clear:both"></div>

                <br />





                            <div class="table-responsive"><div id="city1">

                                <table id="myTable3" class="table table-striped">

                                    <thead>

                                        <tr>

                                            <th>Region</th>

                                            <th>Province</th>

                                            <th>City</th>

                                            <th>Total Individual</th>

                                            <th>Total Families</th>

                                            <th>Male</th>

                                            <th>Female</th>

                                            <th>Infant</th>

											<th>Child</th>

                                            <th>Adult</th>

                                            <th>Senior Citizen</th>




                                        </tr>

                                    </thead>

                                    <tbody>



                                        <?php



                                        global $con;

                                        $result = mysqli_query($con, "SELECT

									r.region_name as region,

									p.province_name as province,

									ct.cities as city,



									(select count(NULLIF(ev.evacuees_id,0)) ) as individual,

									(select count(distinct NULLIF(ev.cons_fid,0)) ) as family,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Male' THEN 1 END) Male,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Female' THEN 1 END) Female,

									SUM(IF(con.cons_age BETWEEN 0 and 2,1,0)) as infant,

									SUM(IF(con.cons_age BETWEEN 3 and 12,1,0)) as child,

									SUM(IF(con.cons_age BETWEEN 13 and 59,1,0)) as adult,

									SUM(IF(con.cons_age BETWEEN 60 and 99,1,0)) as senior


									from evacuations eva



									LEFT JOIN evacuees ev on ev.eva_id=eva.eva_id

									LEFT JOIN brgy br on br.b_id=eva.b_id

									LEFT JOIN city ct on ct.c_id=eva.c_id

									LEFT JOIN province p on p.p_id=eva.p_id

									LEFT JOIN region r on r.r_id=eva.r_id

									LEFT JOIN constituents con on con.cons_id=ev.cons_id

                                    where ev.stat_id !=1

									GROUP BY ct.c_id");



                                        while ($row = mysqli_fetch_assoc($result)) :



                                            ?>

                                            <tr>

                                                <td style="text-transform:uppercase"><?php echo $row['region']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['province']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['city']; ?></td>

                                                <td><?php echo $row['individual']; ?></td>

                                                <td><?php echo $row['family']; ?></td>

                                                <td><?php echo $row['Male']; ?></td>

                                                <td><?php echo $row['Female']; ?></td>

                                                <td><?php echo $row['infant']; ?></td>

												<td><?php echo $row['child']; ?></td>

                                                <td><?php echo $row['adult']; ?></td>

                                                <td><?php echo $row['senior']; ?></td>


                                            </tr>

                                        <?php endwhile; ?>

                                    </tbody>

                                </table> </div>

                            </div>





                        </section>







                        <section id="section-bar-4" class="">

                        <div class="col-xs-2">

                     <input type="text" name="from_date3" id="from_date3" class="form-control" placeholder="From Date" autocomplete="off"/>

                </div>

                <div class="col-xs-2">

                     <input type="text" name="to_date3" id="to_date3" class="form-control" placeholder="To Date" autocomplete="off"/>



                </div>



                                <div class="col-xs-2" >

                                <select class="form-control" name="typname3" id="saster3"  required>

                                <option value="">- Select disaster -</option>

                                <?php disasters() ?>

                                </select>

                                <select class="form-control" name="typname3" id="mySelect3"  required>

                                <option value="">- Select Typhoon name -</option>

                                <?php activetyphoon() ?>

                                </select>

                                </div>













                <div class="col-md-5">

                     <input type="button" name="filter3" id="filter3" value="Search" class="btn btn-info" />

                </div>

                <div style="clear:both"></div>

                <br />

                            <div class="table-responsive"><div id="brgy1">

                                <table id="myTable4" class="table table-striped">

                                    <thead>

                                        <tr>

                                            <th>Region</th>

                                            <th>Province</th>

                                            <th>City</th>

                                            <th>Barangay</th>

                                            <th>Evacuation Center</th>

                                            <th>Total Individual</th>

                                            <th>Total Families</th>

                                            <th>Male</th>

                                            <th>Female</th>

                                            <th>Child</th>

                                            <th>Adult</th>

                                            <th>Senior Citizen</th>



                                        </tr>

                                    </thead>

                                    <tbody>



                                        <?php



                                        global $con;

                                        $result = mysqli_query($con, "SELECT

									r.region_name as region,

									p.province_name as province,

									ct.cities as city,

									br.barangay as brgy,

									eva.evacuation_name as center,

									(select count(NULLIF(ev.evacuees_id,0)) ) as individual,

									(select count(distinct NULLIF(ev.cons_fid,0)) ) as family,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Male' THEN 1 END) Male,

									COUNT(CASE WHEN UPPER(con.cons_gender) = 'Female' THEN 1 END) Female,

									SUM(IF(con.cons_age < 12,1,0)) as child,

									SUM(IF(con.cons_age BETWEEN 13 and 59,1,0)) as adult,

									SUM(IF(con.cons_age BETWEEN 60 and 99,1,0)) as senior

									from evacuations eva

									LEFT JOIN evacuees ev on ev.eva_id=eva.eva_id

									LEFT JOIN brgy br on br.b_id=eva.b_id

									LEFT JOIN city ct on ct.c_id=eva.c_id

									LEFT JOIN province p on p.p_id=eva.p_id

									LEFT JOIN region r on r.r_id=eva.r_id

									LEFT JOIN constituents con on con.cons_id=ev.cons_id

                                    where ev.stat_id !=1

									GROUP BY eva.eva_id");



                                        while ($row = mysqli_fetch_assoc($result)) :



                                            ?>

                                            <tr>

                                                <td style="text-transform:uppercase"><?php echo $row['region']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['province']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['city']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['brgy']; ?></td>

                                                <td style="text-transform:uppercase"><?php echo $row['center']; ?></td>

                                                <td><?php echo $row['individual']; ?></td>

                                                <td><?php echo $row['family']; ?></td>

                                                <td><?php echo $row['Male']; ?></td>

                                                <td><?php echo $row['Female']; ?></td>

                                                <td><?php echo $row['child']; ?></td>

                                                <td><?php echo $row['adult']; ?></td>

                                                <td><?php echo $row['senior']; ?></td>



                                            </tr>

                                        <?php endwhile; ?>

                                    </tbody>

                                </table> </div>

                            </div>







                        </section>





                    </div>

                    <!-- /content -->

                </div>





























            </div>



            <div class="panel panel-default">







            </div>





            <!-- modal -->



            <!-- /.modal -->

            <!-- /.row -->



        </div>

        <!-- /.container-fluid -->

        <footer class="footer text-center">&copy; Evacuation Monitoring </footer>

    </div>



    <!-- /#page-wrapper -->





    <?php include('modaladd.php'); ?>



    <!-- /#wrapper -->

    <!-- jQuery -->



    <!-- Bootstrap Core JavaScript -->

    <script src="bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Menu Plugin JavaScript -->

    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

    <!--slimscroll JavaScript -->

    <script src="js/jquery.slimscroll.js"></script>

    <!--Wave Effects -->

    <script src="js/waves.js"></script>

    <!-- Custom Theme JavaScript -->

    <script src="js/custom.min.js"></script>

    <script src="../plugins/bower_components/datatables/jquery.dataTables.min.js"></script>

    <!-- start - This is for export functionality only -->



    <!--Counter js -->

    <script src="../plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>

    <script src="../plugins/bower_components/counterup/jquery.counterup.min.js"></script>

    <!-- chartist chart -->

    <script src="../plugins/bower_components/chartist-js/dist/chartist.min.js"></script>

    <script src="../plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>

    <!-- Sparkline chart JavaScript -->

    <script src="../plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>

    <!--Style Switcher -->

    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

    <script src="js/cbpFWTabs.js"></script>

    <script type="text/javascript">

        (function() {

            [].slice.call(document.querySelectorAll('.sttabs')).forEach(function(el) {

                new CBPFWTabs(el);

            });

        })();

    </script>







    <!--Style Switcher -->

    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

    <!-- Sweet-Alert  -->

    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>

    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>

    <!-- Footable -->

    <script src="../plugins/bower_components/footable/js/footable.all.min.js"></script>

    <script src="../plugins/bower_components/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>

    <!--FooTable init-->

    <script src="js/footable-init.js"></script>

    <script src="js/dataTables.buttons.min.js"></script>

    <script src="js/buttons.flash.min.js"></script>

    <script src="js/jszip.min.js"></script>

    <script src="js/pdfmake.min.js"></script>

    <script src="js/vfs_fonts.js"></script>

    <script src="js/buttons.html5.min.js"></script>

    <script src="js/buttons.print.min.js"></script>





 <script src="../plugins/bower_components/dropify/dist/js/dropify.min.js"></script>

    <script>

    $(document).ready(function() {

        // Basic

        $('.dropify').dropify();

        // Translated

        $('.dropify-fr').dropify({

            messages: {

                default: 'Glissez-déposez un fichier ici ou cliquez',

                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',

                remove: 'Supprimer',

                error: 'Désolé, le fichier trop volumineux'

            }

        });

        // Used events

        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {

            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");

        });

        drEvent.on('dropify.afterClear', function(event, element) {

            alert('File deleted');

        });

        drEvent.on('dropify.errors', function(event, element) {

            console.log('Has Errors');

        });

        var drDestroy = $('#input-file-to-destroy').dropify();

        drDestroy = drDestroy.data('dropify')

        $('#toggleDropify').on('click', function(e) {

            e.preventDefault();

            if (drDestroy.isDropified()) {

                drDestroy.destroy();

            } else {

                drDestroy.init();

            }

        })

    });

    </script>



    <script>

        $(document).ready(function() {

            $('#country').on('change', function() {

                var countryID = $(this).val();

                if (countryID) {

                    $.ajax({

                        type: 'POST',

                        url: 'ajaxData.php',

                        data: 'country_id=' + countryID,

                        success: function(html) {

                            $('#state').html(html);

                            $('#city').html('<option value="">Select province first</option>');

                        }

                    });

                } else {

                    $('#state').html('<option value="">Select region first</option>');

                    $('#city').html('<option value="">Select province first</option>');

                }

            });



            $('#state').on('change', function() {

                var stateID = $(this).val();

                if (stateID) {

                    $.ajax({

                        type: 'POST',

                        url: 'ajaxData.php',

                        data: 'state_id=' + stateID,

                        success: function(html) {

                            $('#city').html(html);

                        }

                    });

                } else {

                    $('#city').html('<option value="">Select province first</option>');

                }

            });

        });

    </script>



    <script type="text/javascript">

        function change_region() {

            var xmlhttp = new XMLHttpRequest();

            xmlhttp.open("GET", "city.php?region=" + document.getElementById("idregion").value, false);

            xmlhttp.send(null);

            document.getElementById("idprov").innerHTML = xmlhttp.responseText;



        }

    </script>



    <script>

        $(document).ready(function() {

            $('#myTable1').DataTable();

            $('#myTable2').DataTable();

            $('#myTable3').DataTable();

            $('#myTable4').DataTable();

            $(document).ready(function() {

                var table = $('#example').DataTable({

                    "columnDefs": [{

                        "visible": false,

                        "targets": 2

                    }],

                    "order": [

                        [2, 'asc']

                    ],

                    "displayLength": 25,

                    "drawCallback": function(settings) {

                        var api = this.api();

                        var rows = api.rows({

                            page: 'current'

                        }).nodes();

                        var last = null;

                        api.column(2, {

                            page: 'current'

                        }).data().each(function(group, i) {

                            if (last !== group) {

                                $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');

                                last = group;

                            }

                        });

                    }

                });

                // Order by the grouping

                $('#example tbody').on('click', 'tr.group', function() {

                    var currentOrder = table.order()[0];

                    if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {

                        table.order([2, 'desc']).draw();

                    } else {

                        table.order([2, 'asc']).draw();

                    }

                });

            });

        });

        $('#myTable1').DataTable({

            dom: 'Bfrtip',

            buttons: [

                'excel', 'print'

            ]

        });

        $('#myTable2').DataTable({

            dom: 'Bfrtip',

            buttons: [

                'excel', 'print'

            ]

        });

        $('#myTable3').DataTable({

            dom: 'Bfrtip',

            buttons: [

                'excel', 'print'

            ]

        });

        $('#myTable4').DataTable({

            dom: 'Bfrtip',

            buttons: [

                'excel', 'print'

            ]

        });

    </script>



</body>



</html>





<script>

      $(document).ready(function(){

           $.datepicker.setDefaults({

                dateFormat: 'yy-mm-dd'

           });

           $(function(){

                $("#from_date").datepicker();

                $("#to_date").datepicker();



           });

           $('#filter').click(function(){

                var from_date = $('#from_date').val();

                var to_date = $('#to_date').val();

				var saster = $('#saster').val();



				var mySelect = $('#mySelect').val();

                if(from_date != '' && to_date != '')

                {

                     $.ajax({

                          url:"searchby1.php",

                          method:"POST",

                          data:{from_date:from_date, to_date:to_date, saster:saster, mySelect:mySelect},

                          success:function(data)

                          {

                               $('#order_table').html(data);

                          }

                     });

                }

                else

                {

                     alert("Please Filter all input box");

                }

           });

      });

 </script>



<script>

      $(document).ready(function(){

           $.datepicker.setDefaults({

                dateFormat: 'yy-mm-dd'

           });

           $(function(){

                $("#from_date1").datepicker();

                $("#to_date1").datepicker();



           });

           $('#filter1').click(function(){

                var from_date = $('#from_date1').val();

                var to_date = $('#to_date1').val();

				var saster = $('#saster1').val();



				var mySelect = $('#mySelect1').val();

                if(from_date != '' && to_date != '')

                {

                     $.ajax({

                          url:"searchby2.php",

                          method:"POST",

                          data:{from_date:from_date, to_date:to_date, saster:saster, mySelect:mySelect},

                          success:function(data)

                          {

                               $('#province1').html(data);

                          }

                     });

                }

                else

                {

                     alert("Please Filter all input box");

                }

           });

      });

 </script>





<script>

      $(document).ready(function(){

           $.datepicker.setDefaults({

                dateFormat: 'yy-mm-dd'

           });

           $(function(){

                $("#from_date2").datepicker();

                $("#to_date2").datepicker();



           });

           $('#filter2').click(function(){

                var from_date = $('#from_date2').val();

                var to_date = $('#to_date2').val();

				var saster = $('#saster2').val();



				var mySelect = $('#mySelect2').val();

                if(from_date != '' && to_date != '')

                {

                     $.ajax({

                          url:"searchby3.php",

                          method:"POST",

                          data:{from_date:from_date, to_date:to_date, saster:saster, mySelect:mySelect},

                          success:function(data)

                          {

                               $('#city1').html(data);

                          }

                     });

                }

                else

                {

                     alert("Please Filter all input box");

                }

           });

      });

 </script>





<script>

      $(document).ready(function(){

           $.datepicker.setDefaults({

                dateFormat: 'yy-mm-dd'

           });

           $(function(){

                $("#from_date3").datepicker();

                $("#to_date3").datepicker();



           });

           $('#filter3').click(function(){

                var from_date = $('#from_date3').val();

                var to_date = $('#to_date3').val();

				var saster = $('#saster3').val();



				var mySelect = $('#mySelect3').val();

                if(from_date != '' && to_date != '')

                {

                     $.ajax({

                          url:"searchby4.php",

                          method:"POST",

                          data:{from_date:from_date, to_date:to_date, saster:saster, mySelect:mySelect},

                          success:function(data)

                          {

                               $('#brgy1').html(data);

                          }

                     });

                }

                else

                {

                     alert("Please Filter all input box");

                }

           });

      });

 </script>







<script>

    $(document).ready(function(){

        $("#saster").click(function(){

            $("#mySelect").val([""]);

        });





        $("#clear1").click(function(){

            $("#saster").val([""]);

            $("#mySelect").val([""]);

            $("#saster1").val([""]);

            $("#mySelect1").val([""]);

            $("#saster2").val([""]);

            $("#mySelect2").val([""]);

            $("#saster3").val([""]);

            $("#mySelect3").val([""]);



        });

    });



    $(document).ready(function(){

        $("#saster1").click(function(){

            $("#mySelect1").val([""]);

        });





        $("#clear2").click(function(){

            $("#saster").val([""]);

            $("#mySelect").val([""]);

            $("#saster1").val([""]);

            $("#mySelect1").val([""]);

            $("#saster2").val([""]);

            $("#mySelect2").val([""]);

            $("#saster3").val([""]);

            $("#mySelect3").val([""]);



        });





    });





    $(document).ready(function(){

        $("#saster2").click(function(){

            $("#mySelect2").val([""]);

        });





        $("#clear3").click(function(){

            $("#saster").val([""]);

            $("#mySelect").val([""]);

            $("#saster1").val([""]);

            $("#mySelect1").val([""]);

            $("#saster2").val([""]);

            $("#mySelect2").val([""]);

            $("#saster3").val([""]);

            $("#mySelect3").val([""]);



        });





    });





    $(document).ready(function(){

        $("#saster3").click(function(){

            $("#mySelect3").val([""]);

        });





        $("#clear4").click(function(){

            $("#saster").val([""]);

            $("#mySelect").val([""]);

            $("#saster1").val([""]);

            $("#mySelect1").val([""]);

            $("#saster2").val([""]);

            $("#mySelect2").val([""]);

            $("#saster3").val([""]);

            $("#mySelect3").val([""]);



        });





    });











</script>