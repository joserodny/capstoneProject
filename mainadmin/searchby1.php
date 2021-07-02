<?php

 //filter.php

 if(empty($_POST["saster"]))

 {





if(isset($_POST["from_date"], $_POST["to_date"]))

 {

      $connect = mysqli_connect("localhost", "u712261449_evacuati", "rodny123", "u712261449_evacuationcent");

      $output = '';

      $query = "

          SELECT

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





           WHERE ev.stat_id !=1 and ev.eva_date BETWEEN '".$_POST["from_date"]."' AND '".$_POST["to_date"]."'

      GROUP BY r.r_id ";

      $result = mysqli_query($connect, $query);

      $output .= '    <table id="filter1" class="table table-striped ">

           <thead>

                                        <tr>

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

      ';

      if(mysqli_num_rows($result) > 0)

      {

           while($row = mysqli_fetch_array($result))

           {

                $output .= '    <tbody>

                     <tr>

							<td>'. $row["region"] .'</td>

                            <td>'. $row["individual"] .'</td>

                            <td>'. $row["family"] .'</td>

                            <td>'. $row["Male"] .'</td>

                            <td>'. $row["Female"] .'</td>

							<td>'. $row["infant"] .'</td>

							<td>'. $row["child"] .'</td>

							<td>'. $row["adult"] .'</td>

                            <td>'. $row["senior"] .'</td>

                         

					  </tr>

					</tbody>

                ';

           }

      }

      else

      {

           $output .= '

                <tr>

                     <td colspan="5">No Order Found</td>

                </tr>

           ';

      }

       $output .= ' </table>';



	   $output .= '<script>

			$(document).ready(function() {

        $("#filter1").DataTable();



    });
	
	  $("#filter1").DataTable({

            dom: "Bfrtip",

            buttons: [

                "excel", "print"

            ]

        });

		</script>';

      echo $output;

     }





 }



 elseif(!empty($_POST["saster"]))

 {

      if(!empty($_POST["mySelect"]))

      {

          if(isset($_POST["from_date"], $_POST["to_date"], $_POST["saster"], $_POST["mySelect"]))

           {

         $connect = mysqli_connect("localhost", "u712261449_evacuati", "rodny123", "u712261449_evacuationcent");

          $output = '';

          $query = "

              SELECT

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





               WHERE ev.stat_id !=1 and ev.typhoon_id='".$_POST["mySelect"]."' and ev.disas_id='".$_POST["saster"]."'  and ev.eva_date BETWEEN '".$_POST["from_date"]."' AND '".$_POST["to_date"]."'

          GROUP BY r.r_id ";

          $result = mysqli_query($connect, $query);

          $output .= '    <table id="filter1" class="table table-striped ">

               <thead>

                                            <tr>

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

          ';

          if(mysqli_num_rows($result) > 0)

          {

               while($row = mysqli_fetch_array($result))

               {

                    $output .= '    <tbody>

                         <tr>

                                       <td>'. $row["region"] .'</td>

                                <td>'. $row["individual"] .'</td>

                                <td>'. $row["family"] .'</td>

                                <td>'. $row["Male"] .'</td>

                                <td>'. $row["Female"] .'</td>

								  <td>'. $row["infant"] .'</td>

                                       <td>'. $row["child"] .'</td>

                                       <td>'. $row["adult"] .'</td>

                                <td>'. $row["senior"] .'</td>

                              
                               </tr>

                             </tbody> ';

               }

          }

          else

          {

               $output .= '

                    <tr>

                         <td colspan="5">No Order Found</td>

                    </tr>

               ';

          }

           $output .= ' </table>';



            $output .= '<script>

                   $(document).ready(function() {

            $("#filter1").DataTable();



        });
		
		  $("#filter1").DataTable({

            dom: "Bfrtip",

            buttons: [

                "excel", "print"

            ]

        });

              </script>';

          echo $output;

         }

      }else

      {

          if(isset($_POST["from_date"], $_POST["to_date"], $_POST["saster"]))

          {

         $connect = mysqli_connect("localhost", "u712261449_evacuati", "rodny123", "u712261449_evacuationcent");

         $output = '';

         $query = "

             SELECT

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





              WHERE ev.stat_id !=1 and ev.disas_id='".$_POST["saster"]."'  and ev.eva_date BETWEEN '".$_POST["from_date"]."' AND '".$_POST["to_date"]."'

         GROUP BY r.r_id ";

         $result = mysqli_query($connect, $query);

         $output .= '    <table id="filter1" class="table table-striped ">

              <thead>

                                           <tr>

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

         ';

         if(mysqli_num_rows($result) > 0)

         {

              while($row = mysqli_fetch_array($result))

              {

                   $output .= '    <tbody>

                        <tr>

                                      <td>'. $row["region"] .'</td>

                               <td>'. $row["individual"] .'</td>

                               <td>'. $row["family"] .'</td>

                               <td>'. $row["Male"] .'</td>

                               <td>'. $row["Female"] .'</td>

							    <td>'. $row["infant"] .'</td>

                                      <td>'. $row["child"] .'</td>

                                      <td>'. $row["adult"] .'</td>

                               <td>'. $row["senior"] .'</td>

                            

                              </tr>

                            </tbody> ';

              }

         }

         else

         {

              $output .= '

                   <tr>

                        <td colspan="5">No Order Found</td>

                   </tr>

              ';

         }

          $output .= ' </table>';



           $output .= '<script>

                  $(document).ready(function() {

           $("#filter1").DataTable();



       });
	   
	     $("#filter1").DataTable({

            dom: "Bfrtip",

            buttons: [

                "excel", "print"

            ]

        });

             </script>';

         echo $output;

        }

      }



 }







 ?>