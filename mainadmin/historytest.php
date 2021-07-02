<!DOCTYPE html>
<?php
session_start();

			if(!isset($_SESSION['username']))
				{
						header("Location: ../login.php");
				}
				if(!isset($_SESSION['username']) && $_SESSION['role'] == 1)
			{

				header("Location: ../login.php");
			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 2)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}
			elseif(isset($_SESSION['username']) && $_SESSION['role'] == 3)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}elseif(isset($_SESSION['username']) && $_SESSION['role'] == 4)
			{

				echo "<script>window.open('../403.html','_self')</script>";

			}



include('function/function.php');
include('connection.php');




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




    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header">



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
                        <!--This is dark logo icon--><img src="img/logo.png" alt="home" class="dark-logo" /><!--This is light logo icon--><img src="img/logo.png" alt="home" class="light-logo" />
                     </b>
                        <!-- Logo text image you can use text also --><span class="hidden-xs">
                        <!--This is dark logo text-->
                        <img src="img/logotext.png" alt="home" class="dark-logo" /><!--This is light logo text-->
                        <img src="img/newlog.png" alt="home" class="light-logo" />
                     </span> </a>
                </div>
                <!-- /Logo -->
                <!-- Search input and Toggle icon -->
                <ul class="nav navbar-top-links navbar-left">
                    <li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a></li>

                 </ul>






                <ul class="nav navbar-top-links navbar-right pull-right">


				<li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="true"><b class="hidden-xs"><?php echo $_SESSION['username'];?></b><span class="caret"></span> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">




							<li><a href="#" data-toggle="modal" data-target="#accsetting"><i class="ti-settings"></i> Account Setting</a></li>
                            <li role="separator" class="divider"></li>

                          <?php

				if(!isset($_SESSION['username']))
				{

				}
				else
				{
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
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3> </div>
                <div class="user-profile">

                </div>
                <ul class="nav" id="side-menu">
                    <li> <a href="index.php" class="waves-effect"><i class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard  </span></a>

                    </li>

					  <li class="devider"></li>

                    <li> <a href="#" class="waves-effect"><i class="mdi mdi-bookmark-plus fa-fw"></i> <span class="hide-menu">Add area<span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="#" data-toggle="modal" data-target="#Region"><i data-icon="&#xe026;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Region</span></a></li>
                            <li><a href="#" data-toggle="modal" data-target="#province"><i data-icon="&#xe025;" class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">Province</span></a></li>
                            <li><a href="#" data-toggle="modal" data-target="#mcity"><i class="ti-layout-menu fa-fw"></i> <span class="hide-menu">City</span></a></li>

                        </ul>
                    </li>
					  <li class="devider"></li>
                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#cityadmin"><i class="mdi mdi-account-multiple-plus fa-fw"></i> <span class="hide-menu">Add City admin</span></a>

                    </li>


                    <li class="devider"></li>
                    <li> <a href="users.php" class="waves-effect" ><i class="ti-settings fa-fw"></i> <span class="hide-menu">Manage Account</span></a>


                    </li>
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
                        <h4 class="page-title">DASHBOARD</h4> </div>

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
								$sql="SELECT * from evacuees ";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
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
								$sql="SELECT * from missing where statusid=1";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
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
								$sql="SELECT * from rescued where statusid=1";
								if ($result=mysqli_query($con,$sql))
									{// Return the number of rows in result set
										$rowcount=mysqli_num_rows($result);
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






				  <div class="row">
				   <div class="col-md-12 col-lg-4">
                       &nbsp;
                    </div>
				  </div>




				<div class="sttabs tabs-style-bar">
                                    <nav>
                                        <ul>
                                            <li class="tab-current"><a href="#section-bar-1" class="mdi mdi-account-multiple-outline"><span>&nbsp;Cities Account</span></a></li>

											 <li class=""><a href="#section-bar-3" class="mdi mdi-account-multiple-outline"><span>&nbsp;Volunteers Account</span></a></li>


                                        </ul>
                                    </nav>
                                    <div class="content-wrap">

									  <!-- City -->
									  <!-- City -->
									  <!-- City -->
                                        <section id="section-bar-1" class="content-current">

										<div class="table-responsive">
                                <table id="myTable" class="table table-striped display">
                                    <thead>
                                        <tr >

                                            <th>Province</th>
                                            <th>City</th>
                                            <th>Name</th>
                                            <th>contact</th>
                                            <th>Status</th>
                                            <th colspan="">Action</th>

                                        </tr>

                                    </thead>
                                    <tbody>



							<?php
									global $con;
				$result = mysqli_query($con, "SELECT
                  us.user_id as id,
                  us.contact as num,
                  us.fname as f,
                  us.mname as m,
                  us.lname as l,
                  us.username as user,
                  us.stat_id as status,
                  us.password as passwords,
                  re.region_name as region,
                  pr.province_name as province,
                  ct.cities as city
                  from users us
                  LEFT JOIN region re on us.r_id = re.r_id
                  LEFT JOIN province pr on pr.p_id = us.p_id
                  INNER join city ct on ct.c_id = us.c_id
                  where role='2' order by status asc ");

									while ($row = mysqli_fetch_assoc($result)):

									?>


									<tr>

									<td><?php echo $row['province']; ?></td>
									<td><?php echo $row['city']; ?></td>
									<td><?php echo $row['f']; ?> &nbsp; <?php echo $row['m']; ?>&nbsp;<?php echo $row['l']; ?></td>
									<td><?php echo $row['num']; ?></td>
                                    <?php
									echo '<td>';
									if($row['status'] == 0)
									{
										echo '<span class="label label-success label-rouded" >Active</span>';
									}
									elseif($row['status'] == 1)
									{
										echo '<span class="label label-danger label-rouded" title="">Deactive</span>';
									}
									echo '</td>';
                                    ?>

                                    <?php
                                    echo '<td>';
                                    echo "<a href='#edit_".$row['id']."' class='btn btn-info btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-pencil-alt'></i></a>";
									if($row['status'] == 0)
									{
										echo "<a href='#dis_".$row['id']."' class='btn btn-danger btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-lock'></i></a>";
									}
									elseif($row['status'] == 1)
									{
										echo "<a href='#act_".$row['id']."' class='btn btn-success btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-unlock'></i></a>";
									}
									echo '</td>';
									?>


									</tr>

								<?php include('cityacc.php');
								endwhile; ?>
									 </tbody>
                                </table>
                            </div>
                                         </section>
										   <!-- City -->
										     <!-- City -->
											   <!-- City -->

 <!-- ================================================================================================= -->
												<!-- barangay -->
										     <!-- barangay -->
											   <!-- barangay -->



									  <!-- barangay -->
										     <!-- barangay -->
											   <!-- barangay -->

 <!-- ================================================================================================= -->

									  <!-- volunteer -->
									  <!-- volunteer -->
									  <!-- volunteer -->
                                        <section id="section-bar-3" class="">

										<div class="table-responsive">
                                <table id="myTable" class="table table-striped display">
                                    <thead>
                                        <tr align="center">

                                            <th>Province</th>
                                            <th>City</th>
                                            <th>Evacuation Center</th>
                                            <th>Name</th>
                                            <th>contact</th>
                                            <th>Status</th>
                                            <th>Action</th>

                                        </tr>

                                    </thead>
                                    <tbody>



							<?php
									global $con;
                                    $result = mysqli_query($con, "SELECT
                                    us.user_id as id,
                                    us.contact as num,
                                    us.fname as f,
                                    us.mname as m,
                                    us.lname as l,
                                    us.username as user,
                                    us.stat_id as status,
                                    pr.province_name as province,
                                    ct.cities as city,
                                    br.barangay as brgyname,
                                    eva.evacuation_name as center
                                    from users us
                                    LEFT JOIN province pr on pr.p_id = us.p_id
                                    LEFT JOIN city ct on ct.c_id = us.c_id
                                    LEFT JOIN brgy br on br.b_id = us.b_id
                                    LEFT JOIN evacuations eva on eva.eva_id=us.eva_id
                                    where role='4'  order by status asc");

									while ($row = mysqli_fetch_assoc($result)):

									?>


									<tr>

								    <td><?php echo $row['province']; ?></td>
									<td><?php echo $row['city']; ?></td>
								    <td><?php echo $row['center']; ?></td>
                                    <td><?php echo $row['f']; ?> &nbsp; <?php echo $row['m']; ?>&nbsp;<?php echo $row['l']; ?></td>
                                    <td><?php echo $row['num']; ?></td>

                                    <?php
									echo '<td>';
									if($row['status'] == 0)
									{
										echo '<span class="label label-success label-rouded" >Active</span>';
									}
									elseif($row['status'] == 1)
									{
										echo '<span class="label label-danger label-rouded" title="">Deactive</span>';
									}
									echo '</td>';
                                    ?>

                                    <?php
                                    echo '<td>';
                                    echo "<a href='#edit_".$row['id']."' class='btn btn-info btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-pencil-alt'></i></a>";
									if($row['status'] == 0)
									{
										echo "<a href='#dis_".$row['id']."' class='btn btn-danger btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-lock'></i></a>";
									}
									elseif($row['status'] == 1)
									{
										echo "<a href='#act_".$row['id']."' class='btn btn-success btn-outline btn-circle btn-lg m-r-5' data-toggle='modal'><i class='ti-unlock'></i></a>";
									}
									echo '</td>';
									?>


									</tr>

								<?php include('volunteeracc.php');
								endwhile; ?>
									 </tbody>
                                </table>
                            </div>
                                         </section>
										   <!-- volunteer -->
										     <!-- volunteer -->
											   <!-- volunteer -->
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
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
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
   <script src="../plugins/bower_components/bootstrap-treeview-master/dist/bootstrap-treeview.min.js"></script>
    <script src="../plugins/bower_components/bootstrap-treeview-master/dist/bootstrap-treeview-init.js"></script>
	 <script src="../plugins/bower_components/bootstrap-treeview-master/src/js/bootstrap-treeview.js"></script>





    <!-- end - This is for export functionality only -->
    <script>
    $(document).ready(function() {
        $('#myTable.display').DataTable();

    });

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




<script>
$(document).ready(function(){
    $('#country').on('change', function(){
        var countryID = $(this).val();
        if(countryID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'country_id='+countryID,
                success:function(html){
                    $('#state').html(html);
                    $('#city').html('<option value="">Select province first</option>');
                }
            });
        }else{
            $('#state').html('<option value="">Select region first</option>');
            $('#city').html('<option value="">Select province first</option>');
        }
    });

    $('#state').on('change', function(){
        var stateID = $(this).val();
        if(stateID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'state_id='+stateID,
                success:function(html){
                    $('#city').html(html);
                }
            });
        }else{
            $('#city').html('<option value="">Select province first</option>');
        }
    });
});
</script>

<script type="text/javascript">
function change_region()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET","city.php?region="+document.getElementById("idregion").value,false);
	xmlhttp.send(null);
	document.getElementById("idprov").innerHTML=xmlhttp.responseText;

}
</script>

</body>

</html>
