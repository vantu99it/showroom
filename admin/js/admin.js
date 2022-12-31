$(document).ready(function () {
    // add car
    $(".btn-add-car").click(function () {
        $(".form-add-infor-car").fadeIn(500);
    })
    $(".close").click(function () {
        $(".form-add-infor-car").fadeOut(500);
    })

    //edit car
    $(".btn-edit-car").click(function () {
        $(".form-edit-infor-car").fadeIn(500);
    })
    $(".close-edit").click(function () {
        $(".form-edit-infor-car").fadeOut(500);
    })
    // add showroom
    $(".btn-showroom-add").click(function () {
        $(".form-add-showroom").fadeIn(500);
    })
    $(".close-showrrom").click(function () {
        $(".form-add-showroom").fadeOut(500);
    })

    //edit showroom
    $(".btn-edit-showroom").click(function () {
        $(".form-edit-showroom").fadeIn(500);
    })
    $(".close-edit-showroom").click(function () {
        $(".form-edit-showroom").fadeOut(500);
    })
});