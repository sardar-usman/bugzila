$(document).ready(function() {
  $("#bug_project_id").change(function(){
      var project = $(this).val();
      console.log(project)
      $.ajax({
      url: "/bugs/new",
      method: "GET",
      dataType: "json",
      data: {project: project},
      error: function (xhr, status, error) {
          console.error('AJAX Error: ' + status + error);
      },
      success: function (response) {
          console.log(response);
          var developers = response["developers"];
          $("#bug_user_id").empty();

          $("#bug_user_id").append('<option>Select Task</option>');
          for(var i = 0; i < developers.length; i++){
            $("#bug_user_id").append('<option value="' + developers[i]["id"] + '">' +developers[i]["name"] + '</option>');
          }
      }
  });
});

