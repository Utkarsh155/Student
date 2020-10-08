<?php
include 'inc/db_inc.php';
if (isset($_REQUEST['roll_no'])) {
    $roll_no = $_REQUEST['roll_no'];
    $sql = "SELECT * FROM `tbl_result` WHERE `roll_no` = '$roll_no'";
}
$result=mysqli_query($conn,$sql);
$row=mysqli_num_rows($result);
if ($row>0) {
    $data=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($data);
}
