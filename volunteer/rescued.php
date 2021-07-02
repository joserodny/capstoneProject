<!DOCTYPE html>
<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: ../login.php");
}

if (!isset($_SESSION['username']) && $_SESSION['role'] == 4) {

    header("Location: ../login.php");
} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 3) {

    echo "<script>window.open('../403.html','_self')</script>";
} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 2) {

    echo "<script>window.open('../403.html','_self')</script>";
} elseif (isset($_SESSION['username']) && $_SESSION['role'] == 1) {

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
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
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
    <link rel="stylesheet" href="../plugins/bower_components/dropify/dist/css/dropify.min.css">




    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header"><style> select {text-transform:uppercase} </style>
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
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation
                        </span></h3>
                </div>
                <div class="user-profile">

                </div>
                <ul class="nav" id="side-menu">
                    <li> <a href="index.php" class="waves-effect"><i class="mdi mdi-av-timer fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard </span></a>

                    </li>

                    <li class="devider"></li>
                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#missing"><i class="mdi mdi-account-multiple-plus fa-fw"></i><span class="hide-menu">Add Missing</span></a>
                    <li class="devider"></li>

                    <li> <a href="#" class="waves-effect" data-toggle="modal" data-target="#rescued"><i class="mdi mdi-account-multiple-plus fa-fw"></i><span class="hide-menu">Add Rescued</span></a>

                    </li>

                    <li class="devider"></li>

			 <li> <a href="editcons.php" class="waves-effect"><i class="icon-settings fa-fw"></i><span class="hide-menu">Manage Constituents</span></a></li>
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
                                            <a href="evacuees.php" class="btn btn-primary btn-outline btn-rounded waves-effect waves-light" type="button"><span class="btn-label"><i class="ti-id-badge"></i></span>View</a></div>
                                    </li>
                                    <li class="text-right">
                                        <span class="counter text-primary">
                                            <?php
                                            global $con;
                                            $sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


                                            $query = $con->query($sql);
                                            while ($row = $query->fetch_assoc()) {
                                                $vid = $row['eva_id'];


                                                $sql = "SELECT * from evacuees WHERE eva_id='$vid' and stat_id !=1";
                                            }
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
                                            $sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


                                            $query = $con->query($sql);
                                            while ($row = $query->fetch_assoc()) {

                                                $bid = $row['b_id'];
                                                $sql = "SELECT * from missing where b_id='$bid' and statusid=1";
                                            }
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
                                            $sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


                                            $query = $con->query($sql);
                                            while ($row = $query->fetch_assoc()) {

                                                $bid = $row['b_id'];
                                                $sql = "SELECT * from rescued where b_id='$bid' and statusid=1";
                                            }
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



                <div class="sttabs tabs-style-bar">
                    <nav>
                        <ul>
                            <li class="tab-current"><a class="ti-map-alt"><span>&nbsp;Rescued</span></a></li>

                        </ul>
                    </nav>
                    <div class="content-wrap">
                        <section id="" class="content-current">

                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped display">
                                    <thead>
                                        <tr align="center">
                                            <th>Image</th>
                                            <th>Full Name</th>

                                            <th>Age</th>
                                            <th>Gender</th>

                                            <th>View</th>
                                        </tr>

                                    </thead>
                                    <tbody>



                                        <?php
                                        function _decrypt($message, $hmac = FALSE)
                                        {
                                            date_default_timezone_set('UTC');
                                            $secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';
                                            $encryptionMethod = 'AES-256-CBC';
                                            $iv = base64_decode(substr($message, 0, 24));
                                            return openssl_decrypt(substr($message, 24), $encryptionMethod, $secret, 0, $iv);
                                        }
                                        $secret = '474MaXCKBtASxDT6hgyU067THgqmnB==';

                                        global $con;
                                        $sql = "SELECT * FROM users where username = '" . $_SESSION['username'] . "'";


                                        $query = $con->query($sql);
                                        while ($row = $query->fetch_assoc()) {
                                            $bid = $row['b_id'];


                                            $result = mysqli_query($con, "select * from rescued where b_id = '$bid' and statusid =1");
                                        }
                                        while ($row = mysqli_fetch_assoc($result)) :


                                            ?>




                                            <tr>

                                                <td><?php echo "<img src='../missingrescuedimage/" . $row['image'] . "' width='60' height='60'>" ?></td>

                                                <td> <?php echo _decrypt($row['name'], $secret); ?>&nbsp<?php echo _decrypt($row['lastname'], $secret); ?> </td>



                                                <td><?php echo $row['age']; ?></td>
                                                <td><?php echo $row['gender']; ?></td>


                                                <td>
                                                    <?php echo "<a href='#view_" . $row['rescued_id'] . "' class='btn btn-info btn-sm' data-toggle='modal'><span class='glyphicon glyphicon-edit'></span> View</a>"; ?>

                                                </td>
                                            </tr>
                                        <?php
                                            include('view.php');
                                        endwhile; ?>




                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                    <!-- /content -->
                </div>

                <!-- /row -->






                <!-- /.container-fluid -->
                <footer class="footer text-center">&copy; Evacuation Monitoring </footer>
            </div>
        </div>
        <!-- /#page-wrapper -->
    </div>

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
    <!-- start - This is for export functionality only -->
    <script src="js/dataTables.buttons.min.js"></script>
    <script src="js/buttons.flash.min.js"></script>
    <script src="js/jszip.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script src="js/vfs_fonts.js"></script>
    <script src="js/buttons.html5.min.js"></script>
    <script src="js/buttons.print.min.js"></script>
    <!-- end - This is for export functionality only -->





    <!-- end - This is for export functionality only -->
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable();

        });
    </script>



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



    <script src="js/jasny-bootstrap.js"></script>
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
    <script src="../plugins/bower_components/dropify/dist/js/dropify.min.js"></script>
    <?php include('modaladd.php'); ?>
</body>

</html>