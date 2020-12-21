<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<style>
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
      width: 15%;
      right:30px;
      top: 15px;
      }
	</style>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="assets/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> 
  <link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet"> 

  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="//jqueryui.com/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  
  $( function() {
    $( ".datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>








</head>
<body>

<header>
	<div id="website-title">
		 Hotel Recommendation System  
	</div>
		<div id="register">
		 <a href="login.php">
		 Logout
		 </a>
		</div>
		<div id="login">
			<a href="index.php">
			 Home  
			 </a>
		</div>
</header>


<div class="search-form-div">
<h2 style="font-weight: bold;">SEARCH HOTELS</h2>
</div>
<div class="search-form-div">
		<form class="serach-form" action='search.php' method='post'>
		  <input type="text" name="city" placeholder="City name"> 
		  <input type="text" name="budgetmax" placeholder="Max Budget">
		  <input type="submit" value="Search" style="background:green;height:20px;background: #120c4e;height: 30px;color: white;">
		</form> 
</div>

