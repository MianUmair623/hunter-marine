$(document).ready(function(){


var aboutSlides = new Swiper('#company-history .swiper-container',{
  pagination: '.pagination',
  createPagination: false,
  paginationClickable: true,
  calculateHeight: true,
  resizeReInit: true,
  loop: true
});
$('#company-history .arrow-left').on('click', function(e){
  e.preventDefault();
  aboutSlides.swipePrev();
});
$('#company-history .arrow-right').on('click', function(e){
  e.preventDefault();
  aboutSlides.swipeNext();
});

});