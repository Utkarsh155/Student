<?php
$msg = '';
include 'api/inc/db_inc.php';
if (isset($_GET['uname']) && isset($_GET['pass'])) {
    $uname = $_GET['uname'];
    $pass = $_GET['pass'];

    $sql = "SELECT * FROM `tbl_users` WHERE `username` = '$uname' AND `password` = '$pass' ";
    $result = mysqli_query($conn, $sql);
    if ($result) {
      $row =  mysqli_num_rows($result);
      if ($row > 0) {
          header("Location: admin-pannel.php");
      } else {
        $msg = "No user Found";
      }
    } else {
      $msg = "Unauthorized";

    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>login</title>
  <link rel="stylesheet" href="css/stylelogin.css" />

</head>
  <body class="login-page">
    <div class="login-page-container">
      <h1>Login</h1>
      <form  class="login-form" method="GET">
        <span class="message"><?php if ($msg != '') {echo $msg;}?></span>
        <label for="#">Username</label>
        <input id="uname" name="uname" type="username" placeholder="Type Your Username" />
        <label for="#">Password</label>
        <input id="pass" type="password" name="pass" placeholder="Type Your Password" />
       <div class="login-page-btn">
         <button type="submit" class="btn primary-btn login-btn" >LOGIN</button>
        </div>
      </form>
    </div>


    <!-- <script src="api/js/login.js"></script> -->
  </body>
</html>

