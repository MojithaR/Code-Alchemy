<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="styles/styles.css">

	<script src ="js/myScript.js"></script>
	
	
</head>
<body>
<img class="logo" src="images/cart.png" width="200" height="200" alt="Shopping Cart Image">
<center>
	<h1>Shopping cart</h1>
	<h3 id="header">The Online Shopping Store</h3>
<hr id="test"/>
</center>
<ul class="menu">
	<li class="menu"><a href="index.html">Home</a></li>
	<li class="menu"><a href="news.html">News</a></li>
	<li class="menu"><a href="register.html">Contact</a></li>
	<li class="menu"><a href="about.php">About Us</a></li>
</ul>

<center>
<div style="font-family: sans-serif;">
	<?php
		//Q1
		define ("Company", "the Online Shopping Store");
		
		//Q2
		echo "<h2> About ".Company."</h2>";
		
		//Q3
		echo "<h4>This page is mainly about ".Company." web site<h4>";
		
		//Q4
		$sold = 75;
		$total = 100;
		
		//Q5
		echo "The Shopping Cart<br><br>No of Sold Items - ".$sold."<br>";
		echo "No of Total Items - ".$total."<br>";
		
		//Q5 - inside a table
		echo "<h3>
				<table border = '1' width = '500px'>
					<tr>
						<td>No of Sold Items</td>
						<td>".$sold."</td>
					</tr>
					<tr>
						<td>No of Total Items</td>
						<td>".$total."</td>
					</tr>
				</table>
			<h3>";
		
		//Q6
		function findPrecentage(){
			$GLOBALS['precentage'] = ($GLOBALS['sold']/$GLOBALS['total'])*100;
		}
		
		//Q7
		findPrecentage();
		
		//Q8
		echo "<h3>Precentage of sold items : ".$precentage."%</h3>";
		
		//Q9
		$today = "Today is ".date("l");
		echo "<h3>".$today."</h3><br>";
		
		//Q10
		$today_date = date("y-m-d");
		
		$current_date = date_create($today_date);
		
		$shipDay = date_create("2023-04-30");
		
		$diff = date_diff($current_date,$shipDay);

		$diff_date = $diff->format("%r%a days");
		
		echo "<h4>No of remaning days for shipping : ".$diff_date."</h4>";

		if ($diff_date > 0){
			$status = "to be Shipped";
		} else{
			$status = "Shipped";
		}

		echo "<h4> For (".$today_date.") 24 items has ".$status."</h4>";
		
		
	?>
</div>
<h3 style="font-weight: bold; font-style: italic;">Created By : <a href="https://courseweb.sliit.lk/"> Sithum Senanayake </a></h3>
</center>
</body>
</html>