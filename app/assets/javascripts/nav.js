$(document).ready(function(){

  $(document.body).on('click', '#nav-toggle' ,function(e){
    $(this).toggleClass('active');
    $('body').toggleClass('stop-scroll');
    $('#mobile-nav').toggleClass('active inactive').removeClass('hidden');
    $('body.stop-scroll').css('height', $(window).height());
    $('body:not(.stop-scroll)').css('height', 'auto');
  });

});
