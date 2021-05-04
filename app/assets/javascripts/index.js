$(document).ready(function(){

  $('body.index #checker .content').matchHeight();

  var homeSwiper = new Swiper('#home-slideshow .swiper-container',{
    autoplay: 4000,
    speed: 500,
    loop: true,
    pagination: '.pagination',
    paginationClickable: true,
    calculateHeight: true,
    resizeReInit: true
  });

  $('#home-slideshow .arrow-left').on('click', function(e){
    e.preventDefault();
    homeSwiper.swipePrev();
  });

  $('#home-slideshow .arrow-right').on('click', function(e){
    e.preventDefault();
    homeSwiper.swipeNext();
  });

});