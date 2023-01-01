$(document).ready(function () {
  $.ajax({
    url: "http://localhost:8081/showroom/include/get-brands.php",
    dataType: "json",
    success: function (data) {
      $("#brandId").html("");
      for (i = 0; i < data.length; i++) {
        var brandId = data[i];
        var str = `<option value="${brandId["brands_id"]}">
          ${brandId["brand_name"]}</option>`;
        $("#brandId").append(str);
      }
      $("#brandId").on("change", function (e) {
        getVehicle();
      });
    },
  });
});

function getVehicle() {
  var brandId = $("#brandId").val();
  $.ajax({
    url:
      "http://localhost:8081/showroom/include/get-vehicle.php?brandId=" +
      brandId,
    dataType: "json",
    success: function (data) {
      $("#vehiclesId").html("");
      for (i = 0; i < data.length; i++) {
        var vehicles = data[i];
        var str = ` 
          <option value="${vehicles["id"]}">
              ${vehicles["name"]} 
          </option>`;
        $("#vehiclesId").append(str);
      }
    },
  });
}
