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
            
            

            
                    if(isset($_POST["submit2"])){
                         $tno=$_POST["tno"];
                         $sq2="INSERT into waiter (Table_No) values('".$tno."')";
                            if($result=mysqli_query($conn,$sq2))
                            {
                                echo "<h2 style='color:red'>Waiter Details Added Successfully!<h2>";

                            }
                            else{
                                echo "error:".mysqli_error($conn);
                            }

                    }
                  ?>