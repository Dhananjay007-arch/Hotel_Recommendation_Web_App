

<!DOCTYPE html>

<html>
  <head>
    <title>Admin Login</title>
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
      background: #FFFFFF;
      }
      h1 {
      margin-top: 0;
      font-weight: 500;
      }
      form {
      position: relative;
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
      width: 90%;
      padding: 15px;
      margin-bottom: 10px;
      border: none;
      border-radius: 20px;
      background: #d0dfe8;
      position: relative;
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
      position: relative;
      }
      button:hover {
      background: #0000CC;
      } 
      @media (min-width: 568px) {
      form {
      width: 30%;
      }
      }
      .container {
      padding: 14px;
      text-align:left;
      border-radius: 30px;
      background: #ffffff;
      }
      span.psw {
      float: right;
      padding-top: 0;
      padding-right: 15px;
      }
      .logoutbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:70px;
      }
      /* Change styles for span on extra small screens */
      @media screen and (max-width: 300px) {
      span.psw {
      display: block;
      float: none;
      }
    </style>
  </head>
  <body>
    <form action="" method="POST" class="decor">
      <div class="form-inner">
        <h1><b>Admin Login</b></h1>
        <input type="text" name="username" placeholder="Username">
        <input type="text" name= "password" placeholder="Password">
      </div>
      <button type="submit" name="submit">Login</button>
    </form>
          <div class = "logoutbtn">
        <button type="button" onclick="location.href='welcome.php';">Back</button>
      </div>
  </body>
</html>
<?php
include("db.php");
session_start();
if(isset($_POST['submit']))
{
if(isset($_POST['username']) && isset($_POST['password']))
{
$username = trim($_POST['username']);
     $password = trim($_POST['password']);

     $username = mysqli_real_escape_string($con, $username);
     $password = mysqli_real_escape_string($con, $password);


     $query = "SELECT * FROM admin WHERE username = ? AND password=? ";
      $stmt = mysqli_prepare($con, $query);

    mysqli_stmt_bind_param($stmt, 'ss', $username,$password);

    mysqli_stmt_execute($stmt);
	 $select_user_query=mysqli_stmt_get_result($stmt);
     $rows=mysqli_num_rows($select_user_query);
	 if($rows>0)
	 {
		   $_SESSION['username'] = $username;
		   $_SESSION['password'] = $password;
		redirect("records.php");
		}
else
{
 echo "<script>window.alert('Username and password are incorrect')</script>";
}
}
else
echo "<script>window.alert('Please enter username and password')</script>";
}
function redirect($location){


    header("Location:" . $location);
    exit;

}



?>