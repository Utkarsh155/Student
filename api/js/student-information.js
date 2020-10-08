function getStudentData() {
  const sd = document.querySelector(".std-d");
  fetch("api/sd.php")
    .then((res) => res.json())
    .then((data) => {
      sd.innerHTML = "";
      data.forEach((element) => {
        sd.innerHTML += `<tr>
                <td>${element.roll_no}</td>
                    <td>${element.name}</td>
                    <td>${element.branch}</td>
                    <td>${element.semester}</td>
                    <td><button data-value="${element.roll_no}" class="btn success-btn" onclick="getDetailData(this)">Detail</button></td>
                    <td><button data-value="${element.roll_no}" class="btn success-btn" onclick="getResultData(this)">Result</button></td>
                    </tr> `;
      });
    });
}
getStudentData();
const overlay = document.querySelector(".overlay");
const detailContainer = document.querySelector(".detail-container");
function getDetailData(e) {

  overlay.style.display = "block";
  let val = e.getAttribute("data-value");
  detailContainer.style.display = "block";
  detailContainer.innerHTML = "";
  const totalDays = 200;
  fetch("api/sd.php?rollno=" + val)
    .then((res) => res.json())
    .then((data) => {
      detailContainer.innerHTML = `<div class="photo-name">
        <div class="photo-student">
          <img src="img/${data.image}" alt="avatar" />
        </div>
        <div class="info-student">
          <h4 class="student-name">${data.name}</h4>
          <h4 class="course">${data.branch}</h4>
        </div>
      </div>
      <div class="table-detail">
        <table>
          <tr>
            <th>Roll Number</th>
            <td>${data.roll_no}</td>
          </tr>
          <tr>
            <th>Father's Name</th>
            <td>${data.father_name}</td>
          </tr>
          <tr>
            <th>Mother's Name</th>
            <td>${data.mother_name}</td>
          </tr>
          <tr>
            <th>Email</th>
            <td>${data.email}</td>
          </tr>
          <tr>
            <th>Phone Number</th>
            <td>${data.mobile_number}</td>
          </tr>
          <tr>
            <th>Semester</th>
            <td>${data.semester}</td>
          </tr>
        </table>
      </div>
      <h2>Attendance</h2>
      <div class="attendace-box">
        <table>
          <tr>
            <th>Semester</th>
            <th>Total Class</th>
            <th>Attended Class</th>
            <th>Percentage</th>
          </tr>
          ${data.attendance.map((row) => `
          <tr>
            <th>${row.semester}</th>
            <th>${totalDays}</th>
            <th>${row.attended_class}</th>
            <th>${row.attended_class * 100 / totalDays}</th>
          </tr>
          `).join('')}
        </table>
      </div>`;
    });
}

const searchStudent = document.querySelector("#search-student");
searchStudent.addEventListener("input", (e) => {
  const sd = document.querySelector(".std-d");
  fetch("api/sd.php?search=" + e.target.value)
    .then(res => res.json())
    .then(data => {
      console.log(data);
      sd.innerHTML = "";
      data.forEach((element) => {
        sd.innerHTML += `<tr>
                <td>${element.roll_no}</td>
                    <td>${element.name}</td>
                    <td>${element.branch}</td>
                    <td>${element.semester}</td>
                    <td><button data-value="${element.roll_no}" class="btn success-btn" onclick="getDetailData(this)">Detail</button></td>
                </tr> `;
      });
    });
});

function getResultData(e) {

  const resultCont = document.querySelector(".detail-container-2");
  const result_Data = document.querySelector(".result_Data");
  resultCont.style.display = "block";
  result_Data.innerHTML = " ";
  let val = e.getAttribute("data-value");
  fetch("api/result_api.php?roll_no=" + val)
    .then(res => res.json())
    .then(data => {
      data.forEach((element) => {
        let total = parseInt(element.maths) + parseInt(element.english) + parseInt(element.electrical) + parseInt(element.computer) + parseInt(element.software);
        result_Data.innerHTML += `<tr>
                <td>${element.roll_no}</td>
                <td>${element.semester}</td>
                <td>${element.maths}</td>
                <td>${element.english}</td>
                <td>${element.electrical}</td>
                <td>${element.computer}</td>
                <td>${element.software}</td>
                <td>${500}</td>
                <td>${parseInt(element.maths) + parseInt(element.english) + parseInt(element.electrical) + parseInt(element.computer) + parseInt(element.software)}</td>
                <td>${total/5} %</td>
                </tr> `;
      });
    });
}


overlay.addEventListener('click', () => {
  overlay.style.display = 'none'
  detailContainer.style.display = 'none'
});