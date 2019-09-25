$("#bug_user_id").prop("disabled", true);
$(document).on('change', '#bug_project_id', function(){
  var project = $(this).val();
  console.log(project);
  if(project == ''){
    $("#bug_user_id").prop("disabled", true);
  }else{
    $("#bug_user_id").prop("disabled", false);
  }
  $.ajax({
    url: "/bugs/new",
    method: "GET",
    dataType: "json",
    data: {project_id: project},
    error: function (xhr, status, error) {
        console.error('AJAX Error: ' + status + error);
    },
    success: function (response) {
      console.log(response);
      var developers = response["developers"];
      $("#bug_user_id").empty();
      $("#bug_user_id").append('<option>Select Developer</option>');
      for(var i = 0; i < developers.length; i++){
        $("#bug_user_id").append('<option value="' + developers[i]["id"] + '">' +developers[i]["name"] + '</option>');
      }
    }
  });
});
