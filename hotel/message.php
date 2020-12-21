<!DOCTYPE html>
<?php
session_start();
if(isset($_SESSION['username']))
{
	?>
<html>
  <head>
    <title>Bookings</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      html, body {
      min-height: 100vh;
      padding: 0;
      margin: 0;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px; 
      color: #666;
      }
      input, textarea { 
      outline: none;
      }
      body {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
      background: linear-gradient(rgba(0,0,50,0.5), rgba(0,0,50,0.5)), url(hotel_2.jpg);
      background-size: cover;
      background-position: center;
      }
      h1 {
      margin-top: 0;
      font-weight: 500;
      }
      form {
      position: relative;
      width: 50%;
      border-radius: 30px;
      background: #fff;
      border-style: solid;
      border-width: 1px;
      border-color: #E0E0E0;
      }
      .form-inner {
      padding: 40px;
      text-align: center;
      font-size: 20px;
      color: #000000;
      }
      .form-inner input,
      .form-inner textarea {
      display: block;
      width: 95%;
      padding: 15px;
      margin-bottom: 10px;
      border: none;
      border-radius: 20px;
      background: #d0dfe8;
      }
      .form-inner textarea {
      resize: none;
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
      .logoutbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:70px;
      }
      .backbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:15px;
      }
      @media (min-width: 568px) {
      form {
      width: 40%;
      }
      }
    </style>
  </head>
  <body>
    <form action="" method="POST" class="decor">
      <div class="form-inner">
        <h1>Book Your Stay</h1>
        <input type="text" name="fullname" placeholder="Name">
        <input type="text" name="mobile" placeholder="Mobile Number">
        <input type="date" name="checkin" placeholder="checkin">
        <input type="date" name="checkout" placeholderr="checkout">
        <button type="submit" name="SubmitButton">Book</button>
      </div>
      <div class = "logoutbtn">
        <button type="button" onclick="location.href='login.php';">Logout</button>
      </div>
      <div class = "backbtn">
        <button type="button" onclick="location.href='index.php';" >Back</button>
      </div>
    </form>
  </body>
</html>
<?php
}
else
{
	echo "<script>window.alert('Please enter username and password')</script>";
	header("Location:login.php");
}
include("db.php");
if(isset($_POST['SubmitButton']))
{

$name=$_POST['fullname'];
$mobileno=$_POST['mobile'];
$checkin=$_POST['checkin'];
$checkout=$_POST['checkout'];
	$textMessage="Dear"." ".$name."\n" ."Your stay has been booked from"." ". $checkin." "."on ".$checkout;

$query="INSERT INTO `history`( `name`, `mobileno`, `checkin`, `checkout`) VALUES('$name','$mobileno','$checkin','$checkout')";
$run=mysqli_query($con,$query);


$apiKey = urlencode('Av4733FQkWA-ccTiq3EvzPsLsyFZGbhGlqR4gORZ90');
   
   // Message details
   $numbers = array($mobileno);
   $sender = urlencode('TXTLCL');
   $message = rawurlencode($textMessage);

   $numbers = implode(',', $numbers);

   // Prepare data for POST request
   $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);

   // Send the POST request with cURL
   $ch = curl_init('https://api.textlocal.in/send/');
   curl_setopt($ch, CURLOPT_POST, true);
   curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
   curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
   $response = curl_exec($ch);
   curl_close($ch);   
   // Process your response here
   //echo $response;
}   



?>
