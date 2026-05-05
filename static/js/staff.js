function loadStaffList() {
  $.ajax({
    url: "/staff/get-data/",
    method: "GET",
    success: function (response) {
      let staffList = response.staff;
      let tbody = "";
      $.each(staffList, function (index, s) {
        tbody += `
            <tr class="staff-row">
                <td>${index + 1}</td>
                <td>${s.name}</td>
                <td>${s.dob}</td>
                <td>${s.mobile}</td>
                <td>${s.email}</td>
                <td>
                    <button class="btn btn-sm btn-warning editStaffBtn" data-id="${s.id}">Edit</button>
                    <button class="btn btn-sm btn-danger deleteStaffBtn" data-id="${s.id}">Delete</button>
                </td>
            </tr>`;
      });
      $("#staffTableBody").html(tbody);
    },
  });
}

$(document).ready(function () {
  // 1. Initial Load
  loadStaffList();

  // 2. Handle Form Submission (Add Staff)
  $("#addStaffForm").on("submit", function (e) {
    e.preventDefault();

    $.ajax({
      url: "/staff/add-data/",
      method: "POST",
      data: $(this).serialize(), // Captures all fields + CSRF token
      success: function (response) {
        alert("✅ " + response.message);
        $("#addStaffModal").modal("hide"); // Close the modal
        $("#addStaffForm")[0].reset(); // Clear form fields
        loadStaffList(); // Refresh the table
      },
      error: function () {
        alert("❌ Error saving staff member");
      },
    });
  });

  //   // 3. Handle Delete Button Click
  //   $(document).on("click", ".deleteStaffBtn", function () {
  //     let id = $(this).data("id");
  //     let csrfToken = $("input[name=csrfmiddlewaretoken]").val();

  //     if (confirm("Are you sure you want to delete this staff member?")) {
  //       $.ajax({
  //         url: "/staff/delete-data/",
  //         method: "POST",
  //         data: {
  //           id: id,
  //           csrfmiddlewaretoken: csrfToken,
  //         },
  //         success: function (response) {
  //           alert("🗑️ " + response.message);
  //           loadStaffList(); // Refresh the table
  //         },
  //         error: function () {
  //           alert("❌ Error deleting staff member");
  //         },
  //       });
  //     }
  //   }); // Fixed missing closing brace here
});
