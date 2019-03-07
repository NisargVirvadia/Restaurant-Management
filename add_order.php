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
$name=$_POST["name"];
$email=$_POST["email"];
$contact=$_POST["m_no"];

if(!empty($_POST["item"])){
	$sql="INSERT INTO C_table( name, email, contact) VALUES ('".$name."','".$email."','".$contact."')";
		if(mysqli_query($conn,$sql)){
			

}
else {
	echo "error:".mysqli_error($conn);
}

$j=0;

	foreach ($_POST['item'] as $ItemNo) {
#		echo "<p>".$ItemNo."</p>";
		$item_array[$j]=$ItemNo;
		$sq="SELECT item_name From item where item_no=$ItemNo";
		$j++;
		if(mysqli_query($conn,$sq)){

		}
		else{
#			echo "aa";
		}
		 $a=$conn->query($sq);
		$s = $a->fetch_assoc();
		$n=$s["item_name"];
#		echo $n;
		$sq1="SELECT Customer_Id From C_table where name='".$name."'";
		if(mysqli_query($conn,$sq1)){

		}
		else{
#			echo "aa";
		}
		 $a1=$conn->query($sq1);
		$s1 = $a1->fetch_assoc();
		$n1=$s1["Customer_Id"];
#		echo $n1;
		$ins="INSERT INTO orders(CustomerId, ItemNo,ItemName) VALUES ('".$n1."','".$ItemNo."','".$n."') ";
		if(mysqli_query($conn,$ins)){

		}
		else{
			echo "error:".mysqli_error($conn);
		}
		}
}
if(!empty($_POST["Quantity"])){
	$i=0;
	foreach ($_POST['Quantity'] as $Qty) {
		
		if($Qty!=""){
			

#			echo "<p>QTY".$Qty."</p>";
#			echo "ItemN0".$item_array[$i];
		$ins1="UPDATE orders SET Quantity='".$Qty."'  WHERE ItemNo='".$item_array[$i]."' ";
		if(mysqli_query($conn,$ins1)){

		}
		else{
		echo "error:".mysqli_error($conn);
		}
		$i++;
	}	
	
}	

}
else{
	echo "error2:".mysqli_error($conn);

}

echo "<script> location.href='pending_order.php'; </script>";



 	# echo "<script> location.href='pending_order.php'; </script>";








?>