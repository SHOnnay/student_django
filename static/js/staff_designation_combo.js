$(document).ready(function () {
//   alert("ok");
  $.ajax({
    url: "/staff/get-designation/",
    method: "GET",
    success: function (response) {
      let designation_list = response.designation;
      console.log(response.designation_list);
      let $select = $("#designation_combo");
      $.each(designation_list, function (index, d) {
        $select.append(`<option value="${d.id}">${d.name}</option>`);
      });

      if (designation_list.length > 0) {
        const firstDesignationId = designation_list[0].id;
        $select.val(firstDesignationId).trigger("change");
      }
    },
    error: function (xhr, status, error) {
      console.log("XHR", xhr);
      console.log("STATUS", status);
      console.log("ERROR", error);
      alert("Failed to load");
    },
  });
});
