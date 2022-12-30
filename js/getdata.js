$(document).ready(function () {
  $.ajax({
    url: "http://localhost:8081/showroom/test.php",
    dataType: "json",
    success: function (data) {
      $("#categories").html("");
      for (i = 0; i < data.length; i++) {
        var categories = data[i];
        var str = `<option value="${categories["id"]}">
          ${categories["brand_name"]}</option>`;
        $("#categories").append(str);
      }
    },
  });
});
