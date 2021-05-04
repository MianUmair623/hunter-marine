$(document).ready(function() {

  $('#image-and-caption > div .content, #image-and-caption > a .content').matchHeight();

  // handles image existing on full article page
  if($('#recent-news.bg-white.section .article-img').length < 1){
    $('.max-1000').css('max-width','800px');
    $('.col-sm-7#text-column').css('width','100%');
  }

  $('#mobile-nav').bind('touchmove', function(e) {
    e.preventDefault();
  });

  if($('table.blocks').length){
    $('table.blocks td').click(function(){
      if($(this).data('link') != '' && $(this).data('link') != undefined)
        window.location.href = $(this).data('link');
    });
  }

  $('.equipment.footable, .directory .footable').footable({
      breakpoints: {
        phone: 480,
        tablet: 850
      }
  });

  // show original size image in popup on thumbnail click/view image link
  $('.popout-link').click(function(){

    var imgSrc = $(this).data('image');
    if(imgSrc == null || imgSrc.length == 0)
      return;

    var $image = $('img.image');
    $image.attr('src', imgSrc);

    $('.popout').fadeTo(0,0.01, function(){
      // check if image loaded
      if($image.prop('complete'))
        showImage();
      else
        $image.one('load', showImage);
    });

    function showImage(){
      var boxHeight = $('.popout .popout-box').outerHeight();
      var windowHeight = $(window).height() - 30;

      if(boxHeight < windowHeight){
        var hOffset = (windowHeight - boxHeight) / 2;
        $('.popout .popout-box').css('margin-top', hOffset);
      }
      $('.popout').scrollTop(0);
      $('.popout').fadeTo(500,1);
    }
  });

  // close popout on outside click or close button
  $(document).mouseup(function (e) {
    var nav = $('.popout .popout-box');
    if(!nav.is(e.target) && nav.has(e.target).length === 0)
      closePopout();
  });
  $('.popout .close-x').click(function(){
    closePopout();
  });
  function closePopout(){
    $('.popout').hide();
    $('.popout .popout-box').css('margin-top',0);
  }

  // archive image alignment init
  if($('.resources.archive').length != 0){

    var imagesNum = $('#archive .thumb').length;
    var imagesI = 0;

    function placeBricks(){
      $('.grid').masonry({
        // options
        itemSelector: '.grid-item'
      });
    }

    $('#archive .thumb').load(function(){
      imagesI++;
      if(imagesNum == imagesI)
        placeBricks();
    });
    setTimeout(placeBricks, 3000);
  }

});
