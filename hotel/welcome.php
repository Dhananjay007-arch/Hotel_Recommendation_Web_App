<html>
  <head>
    <title>Hotel Recommendation System</title>
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
      background: linear-gradient(rgba(0,0,50,0.5), rgba(0,0,50,0.5)), url(hotel_1.jpg);
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
      margin-bottom: 5px;
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
      .loginbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:70px;
      }
      .signupbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:15px;
      }
      .adminbtn{
      position:fixed;
      width: 15%;
      right:30px;
      top:125px;
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
        <h1>Hotel Recommendation System</h1>
        <h2>Contact us</h2>
        <a>Email: </a>
        <a href = "https://mail.google.com/mail/u/2/#inbox">joijodedhananjay@gmail.com</a>
        <p>Phone No.: 7769052848</p>
      </div>
      <div class = "signupbtn">
        <button type="button" onclick="location.href='register.php';" >Signup</button>
      </div>
      <div class = "loginbtn">
        <button type="button" onclick="location.href='login.php';">Login</button>
      </div>
      <div class = "adminbtn">
        <button type="button" onclick="location.href='admin_login.php';">Admin</button>
      </div>  
    </form>
  </body>
</html>