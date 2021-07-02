<?php
session_start();




include('connection.php')

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Evacuation Monitoring</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link rel="icon" type="image/png" sizes="16x16" href="img/logo.png">

  <!-- Bootstrap css -->
  <!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/modal-video/css/modal-video.min.css" rel="stylesheet">
  <!-- Main Stylesheet File -->
  <link href="css/styles.css" rel="stylesheet">
   <link href="css/style.css" rel="stylesheet">

  <!-- Tables -->
  <link rel="stylesheet" type="text/css" href="tables/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" type="text/css" href="tables/table.css">

</head>

<body>

  <header id="header" class="header header-hide">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#hero" class="scrollto"><span>E</span>vacuation Monitoring</a></h1>

      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">

          <li><a href="#get-started">Preparation for disasters</a></li>
		  <li><a href="#missing">Missing</a></li>
          <li><a href="#hotlines">Emergency hotlines</a></li>

          <li>

		  <?php





					if(isset($_SESSION['username']) && $_SESSION['role'] == 1)
					{

						echo "<li class='menu-active'><a href='mainadmin/index.php'>Home</a></li>";
					}
					elseif(isset($_SESSION['username']) && $_SESSION['role'] == 2)
					{

							echo "<li class='menu-active'><a href='cityadmin/index.php' class='menu-active'>Home</a></li>";

					}
					elseif(isset($_SESSION['username']) && $_SESSION['role'] == 3)
					{

							echo "<li class='menu-active'><a href='brgyadmin/index.php' class='menu-active'>Home</a></li>";

					}
					elseif(isset($_SESSION['username']) && $_SESSION['role'] == 4)
					{

							echo "<li class='menu-active'><a href='volunteer/index.php' class='menu-active'>Home</a></li>";

					}
						else
					{
						echo "<a href='login.php'>login</a>";
					}




				?>

		  </li>

        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
     Section
  ============================-->
  <?php include('modal.php'); ?>
  <section id="hero" class="wow fadeIn">
    <div class="hero-container">
      <h1>Welcome to Evacuation Monitoring</h1>

      <img src="img/mainlog.png" alt="Hero Imgs">
      <a href="#get-started" class="btn-get-started scrollto">Get Started</a>

    </div>

  </section>

  <!--==========================
   Section
  ============================-->

  <section id="get-started" class="padd-section text-center wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">

    <div class="container">
      <div class="section-title text-center">

        <h2>Preparation for Disasters</h2>
        <p class="separator">A natural disaster can occur at any time.
		Some disasters give a warning, such as a storm preceding a flood.
		Others, such as earthquakes, give little or no warning.
		Once a disaster happens, the time to prepare is gone.</p>

      </div>
    </div>

    <div class="container">
      <div class="row">

        <div class="col-md-6 col-lg-4">
          <div class="feature-block">

            <img src="img/logos/disaster_cyclone_100px.png" alt="img" class="img-fluid">
            <h4>Cyclones</h4>
            <a href="#"  data-toggle="modal" data-target="#Cyclones">read more</a>

          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="feature-block">

             <img src="img/logos/disaster_volcano_100px.png" alt="img" class="img-fluid">
            <h4>Volcanoes</h4>

            <a href="#" data-toggle="modal" data-target="#Volcanoes">read more</a>

          </div>
        </div>

		 <div class="col-md-6 col-lg-4">
          <div class="feature-block">

             <img src="img/logos/disaster_tsunami_100px.png" alt="img" class="img-fluid">
            <h4>Tsunamis</h4>

            <a href="#" data-toggle="modal" data-target="#Tsunamis">read more</a>

          </div>
        </div>
		</div>
		<br>
		<br>
		<div class="row">
		<div class="col-md-6 col-lg-4">
          <div class="feature-block">

             <img src="img/logos/disaster_earthquake_100px.png" alt="img" class="img-fluid">
            <h4>Earthquakes</h4>

            <a href="#" data-toggle="modal" data-target="#Earthquakes">read more</a>

          </div>
        </div>

		<div class="col-md-6 col-lg-4">
          <div class="feature-block">

             <img src="img/logos/disaster_flood_100px.png" alt="img" class="img-fluid">
            <h4>Floods</h4>

            <a href="#" data-toggle="modal" data-target="#Floods">read more</a>

          </div>
        </div>

		<div class="col-md-6 col-lg-4">
          <div class="feature-block">

             <img src="img/logos/disaster_landslide_100px.png" alt="img" class="img-fluid">
            <h4>Landslides</h4>

            <a href="#" data-toggle="modal" data-target="#Landslides">read more</a>

          </div>
        </div>


      </div>
    </div>

  </section>



  <!--==========================
    missing Section
  ============================-->

		<section id="missing" class="padd-section text-center wow fadeInUp">

    <div class="container">
      <div class="section-title ">

        <h2>Missing</h2>
        <p class="separator">Search for a missing person.</p>

      </div>



                                    <div class="panel-body">
                           <div class="table-responsive">
                                <table id="myTable" class="table table-striped display">
                                    <thead>
                                       <tr align="center">
									<th>Image</th>
									<th>Full Name</th>
									<th>Age</th>
									<th>Gender</th>
									<th>City</th>
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

									$result = mysqli_query($con, "select
									ms.missing_id as misid,
									ms.image as img,
									ms.name as fname,
									ms.midname as midname,
									ms.lastname as lname,
									ms.age as ages,
									ms.gender as genders,
									ms.description as descript,
									ct.cities as citys,
									us.contact as citynum
									from missing ms
									LEFT JOIN users us on us.c_id=ms.c_id
                  LEFT JOIN city ct on ct.c_id=ms.c_id
                  where statusid=1 group by ms.missing_id");

									while ($row = mysqli_fetch_assoc($result)):

									?>




									<tr >

									<td><?php echo "<img src='missingrescuedimage/".$row['img']."' width='60' height='60'>" ?></td>

									<td> <?php echo _decrypt($row['fname'],$secret);?>&nbsp;<?php echo _decrypt($row['midname'],$secret);?>&nbsp;<?php echo _decrypt($row['lname'],$secret);?> </td>
                                    <td><?php echo $row['ages'];?></td>
									<td><?php echo $row['genders'];?></td>
									<td><?php echo $row['citys'];?></td>

									<td>
										<?php echo "<a href='#edit_".$row['misid']."' class='btn btn-info btn-sm' data-toggle='modal'><span class='glyphicon glyphicon-edit'></span> View</a>"; ?>

									</td>
									</tr>
									<?php
									include('view.php');
									endwhile; ?>




                                    </tbody>
                                </table>
										</div>
									  </div>



    </div>


   </section>


  <!--==========================
    Emergency hotlines Section
  ============================-->

  <section id="hotlines" class="padd-section text-center wow fadeInUp">

    <div class="container">
      <div class="section-title text-center">
        <h2>Emergency hotlines</h2>
        <p class="separator">NATIONAL EMERGENCY HOTLINE <br><b>911</b></p>
      </div>
    </div>

    <div class="container">
      <div class="row">

        <div class="col-md-6 col-lg-3">
          <div class="feature-block">

            <h4>NATIONAL DISASTER AND RISK REDUCTION AND MANAGEMENT COUNCIL (NDRRMC) HOTLINES</h4>
            <p>Trunklines: 911-5061 to 65 <br>
				Operations Center: (02)911-1406, (02)912-2665, (02)912-5668,<br> (02) 911-1873</p>
          </div>
        </div>

        <div class="col-md-6 col-lg-3">
          <div class="feature-block">

            <h4>RED CROSS</h4>
            <p>Hotline: 143, (02) 527-0000, (02) 527-8385 to 95<br>Disaster Management Office: 134 (Staff), 132 (Manager), 133 (Radio Room)<br>Telefax: 527-0864</p>
          </div>
        </div>

        <div class="col-md-6 col-lg-3">
          <div class="feature-block">

            <h4>Philippine National Police (PNP) hotline patrol</h4>
            <p>Hotline: 117<br>722-0650<br>Text hotline: 0917-847-5757</p>
          </div>
        </div>

        <div class="col-md-6 col-lg-3">
          <div class="feature-block">

            <h4>Bureau of Fire Protection (NCR)</h4>
            <p>Direct line: (02) 426-0219, (02) 426-3812, (02)426-0246</p>
          </div>
        </div>

      </div>
    </div>
  </section>








  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/modal-video/js/modal-video.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <!-- Contact Form JavaScript File -->


  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
  <!-- Tables -->




<script src="tables/js/jquery.min.js"></script>
<script src="tables/js/bootstrap.bundle.min.js"></script>
<script src="tables/js/jquery.easing.min.js"></script>
<script src="tables/js/sb-admin.min.js"></script>
<script src="tables/js/datatables-demo.js"></script>
<script src="tables/table.js"></script>

<script>
$(document).ready(function() {
    $('table.display').DataTable();
} );
</script>


  <script type="text/javascript">

$(document).ready( function () {
    $('#myTable').DataTable();
} );

</script>






</body>
</html>
