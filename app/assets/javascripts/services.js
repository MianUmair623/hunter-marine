$(document).ready(function(){

  $('.popup-image-link').magnificPopup({ 
    type: 'image',
    closeOnBgClick: true,
    closeBtnInside: true,
    fixedContentPos: true,
    gallery: {
      enabled: true,
      tCounter: ''
    },
  });

  if($('#charters').length)
    setTimeout(function(){ cardHeightByRow('#charters .block')},1500);
});
