
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
	 $sql = "SELECT * from C_table WHERE Is_Paid='1' ORDER by Customer_Id DESC";
                $result = $conn->query($sql);
	 if ($result->num_rows > 0) {
	 echo  "<h1>ORDER DETAILS</h1>

                        <table>
                        <tr>
                            <th>Order No</th>
                            <th>Item name</th>
                            <th>Quantity</th>
                            
                        </tr>";
                        while($row= $result->fetch_assoc()){
                        $prev='';
                        
                                             
                     	$curr=$row["Customer_Id"];

                       $s="SELECT * FROM orders WHERE CustomerId= '".$row['Customer_Id']."' ORDER by CustomerId DESC";
                       $re=$conn->query($s);
                        while($r = $re->fetch_assoc()){

                       if($curr!=$prev) 
                       	{echo"<td>".$r["CustomerId"]."</td>";}
                       	else{
                       		echo "<td> </td>";
                       	}	

                        echo  "<td>" . $r["ItemName"]. " </td><td>" . $r["Quantity"]. "</td></tr>";
                        $prev=$curr;
                    }
                }
                    echo "</table>";
                    }
                     else {
                    echo "0 results";
                    }

?> 
<html>
	<style>

table, th, td {
    background-color: #606365;
    width: 1300px;
    margin-top:-100px;
    border-bottom: 1px solid white; 

    
}
th{
    padding:6px;
    font-style: italic;
    font-family: monospace;
    text-align: center;
    font-size: 30px;
    }
td{
    padding:4px;
    text-align: center;
    font-size: 20px;
    font-family: sans-serif;
    color: white;
    }
        
table{
    margin-top:30px;
    margin-left: 100px;
    width: 1200px;
    
    }
  h1   {
      color:white ;
      text-align:center;
      margin-top: 70px;
      
    }
            body {
    background-image: url("back.jpg");
    background-repeat: no-repeat;
    height: 100%;
    background-size: cover;
}

		ul {
    list-style-type: none;
    position: fixed;
    top:0;
    left:0;
    width: 100%;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    margin-left: 100px;
    padding: 18px 50px;
    text-decoration: none;
    
}

li a:hover  {
    color: green;
}


.active {
    background-color: #4CAF30;
}
li a:active  {
    background-color: #4CAF10;
}
</style>
	<body >

        <nav>           
        <ul>
        <li><a  href="Manage.php">PLACE ORDER</a></li>
        <li><a   href="pending_order.php">PENDING ORDERS</a></li>
        <li><a  class="active" href="completed_orders.php">COMPLETED ORDERS</a></li>
         <li><a   href="Main.php">HOME</a></li><br><br><br>
        </ul>
        </nav>
</body>
</html>
