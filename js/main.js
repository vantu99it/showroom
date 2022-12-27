$(document).ready(function(){
    $('#slider-in').slick({
      loop: true,
      infinite: true,
      speed: 300,
      autoplay: true,
      autoplaySpeed: 1800,
      slidesToShow: 1,
      adaptiveHeight: true,
      prevArrow: `<button type='button' class='slick-prev pull-left slick-arrow' ><i class="fa-solid fa-chevron-left"></i></button>`,
      nextArrow: `<button type='button' class='slick-next pull-right slick-arrow'><i class="fa-solid fa-chevron-right"></i></button>`,
    });
});