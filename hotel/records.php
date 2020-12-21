<!DOCTYPE html>
<?php
session_start();
if(isset($_SESSION['username']))
{
	?>

<html>
<head>
	<title>Records</title>
</head>
<style>
	* {
	  font-family: Roboto, Arial, sans-serif;
	}
	h1{
	  text-align: center;
	}
	.content-table {
	  border-collapse: collapse;
	  font-size: 0.9em;
	  min-width: 400px;
	  border-radius: 5px 5px 0 0;
	  overflow: hidden;
	  box-shadow: 0 0 20px
	  rgba(0, 0, 0, 0.15);
	  width:70%; 
      margin-left:15%; 
      margin-right:15%;
	}
	.content-table thead tr {
	  background-color: #ffffff;
	  color: #000000;
	  text-align: left;
	  font-weight: bold;
	}
	.content-table th,
	.content-table td {
	  padding: 12px 15px;
	}

	.content-table tbody tr {
	  border-bottom: 1px solid #000000;
	}

	.content-table tbody tr:nth-of-type(even) {
	  background-color: #ffffff;
	}

	.content-table tbody tr:last-of-type {
	  border-bottom: 2px solid #000000;
	}

	.content-table tbody tr.active-row {
	  font-weight: bold;
	  color: #000000;
	}
      button {
      width: 100%;
      padding: 10px;
      margin-top: 20px;
      border-radius: 20px;
      border: none;
      border-bottom: 4px solid #0000CC;
      background: #0000FF; 
      font-size: 16px;
      font-weight: 400;
      color: #fff;
      }
      button:hover {
      background: #0000CC;
      }
      .backbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:0px;
      }
</style>
<body>
	<h1><b>Records</b></h1>
	<table class="content-table">
  <thead>
    <tr>
      <th>Sr. No.</th>
      <th>Name</th>
      <th>Mobile Number</th>
      <th>Check-In</th>
      <th>Check-Out</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
	  <?php
include("db.php");
	  $query="SELECT * FROM `history`";
	  $run=mysqli_query($con,$query);
	  while($row=mysqli_fetch_assoc($run))
	  {
?>
    <tr class="active-row">
      <td><?php echo $row['id'] ?></td>
      <td><?php echo $row['name'] ?></td>
      <td><?php echo $row['mobileno'] ?></td>
      <td><?php echo $row['checkin'] ?></td>
      <td><?php echo $row['checkout'] ?></td>
    </tr>
      <div class = "backbtn">
        <button type="button" onclick="location.href='admin_login.php';" >Back</button>
      </div>
  <?php
	  }
	  ?>
  </tbody>
</table>
</body>
</html>
<?php
	}
else
{
	echo "<script>window.alert('Please enter username and password')</script>";
	header("Location:login.php");
}
?>