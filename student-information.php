<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/stylelogin.css" />
  <title>Student info</title>
</head>

<body>
  <?php include "./header.php" ?>
  <div class="body-diplay">
    <?php include "./sidebar.php" ?>
    <div class="overlay"></div>
    <div class="table-box-container">
    <div class="table-container">
      <div class="search-form">
        <input type="text" id="search-student" placeholder="Search..." />
        <i class="fa fa-search search-icon" aria-hidden="true"></i>
      </div>
    </div>
    <div class="table-info">
      <table>

        <tr>
          <th>Roll.No</th>
          <th>Name</th>
          <th>Stream</th>
          <th>Semester</th>
          <th col-span="2">Option</th>
        </tr>
        <tbody class="std-d">

        </tbody>
      </table>
    </div>
    </div>
  </div>


  <!-- overlay -->
  <div class="overlay"></div>
  <div class="detail-container">
  </div>

  <div class="detail-container-2">
  <div class="table-detail">
       <table>
          <tr>
            <th>Roll no</th>
            <th>Semester</th>
            <th>Math</th>
            <th>English</th>
            <th>Electrical</th>
            <th>Computer</th>
            <th>Software Engineering</th>
            <th>Total Marks</th>
            <th>Obtained Marks</th>
            <th>Percentage</th>
          </tr>
          <tbody class="result_Data">

          </tbody>
       </table>
      </div>
  </div>
  <script src="api/js/admin-pannel.js"></script>
  <script src="api/js/student-information.js"></script>
 
</body>

</html>