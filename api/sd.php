<?php
include 'inc/db_inc.php';

if (isset($_REQUEST['rollno'])) {
    $roll_no = $_REQUEST['rollno'];
    $sql = "SELECT * FROM tbl_student_info WHERE roll_no = $roll_no";
    $sql2 = "SELECT * FROM attendace_table WHERE roll_no=$roll_no";
}else if (isset($_REQUEST['search'])) {
    $search_data = $_REQUEST['search'];
    $sql = "SELECT * FROM `tbl_student_info` WHERE `roll_no` = '$search_data'";
} else {
    $sql = "SELECT * FROM `tbl_student_info`";
}
$result = mysqli_query($conn, $sql);
if(isset($sql2))
$result2 = mysqli_query($conn, $sql2);
$row = mysqli_num_rows($result);
if ($row > 0) {
    if(isset($sql2)) {
        $data = mysqli_fetch_assoc($result);
        $data['attendance'] = mysqli_fetch_all($result2, MYSQLI_ASSOC);
    } else {
        $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }    
    echo json_encode($data);
} else {
    echo json_encode([
        "response" => "error",
        "msg" => "No data record"
    ]);
}
