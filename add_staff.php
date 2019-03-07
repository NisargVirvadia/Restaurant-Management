<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "DBMS";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
            


            		 if(isset($_POST["submit"])){
                             $sid1=$_GET["id"];	
                         $Delicacy=$_POST["Delicacy"];
                         $sq3="INSERT into chef (Staff_Id,Delicacy) values('".$sid1."','".$Delicacy."')";
                            if($result1=mysqli_query($conn,$sq3))
                            {
                                echo "<script>location.href='manage_details.php'</script>";

                            }
                            else{
                                echo "error:".mysqli_error($conn);
                            }

                    }

                    elseif(isset($_POST["submit1"])){
                         $tno=$_POST["tno"];
                         $sid=$_GET["id"];
                         $sq2="INSERT into waiter (Staff_Id,Table_No) values('".$sid."','".$tno."')";
                            if($result=mysqli_query($conn,$sq2))
                            {
                                echo "<script>location.href='manage_details.php'</script>";

                            }
                            else{
                                echo "error:".mysqli_error($conn);
                            }

                    }
                    elseif(isset($_POST["cash"])){
                         $st=$_POST["shift_time"];
                         $sid2=$_GET["id"];
                         $sq3="INSERT into cashier (Staff_Id,shift_time) values('".$sid2."','".$st."')";
                            if($result=mysqli_query($conn,$sq3))
                            {
                                echo "<script>location.href='manage_details.php'</script>";

                            }
                            else{
                                echo "error:".mysqli_error($conn);
                            }

                    }
                  
                           
?>