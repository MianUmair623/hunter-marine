$(document).ready(function(){

  $('select').each(function() {
    $(this).yaselect({hoverOnly: true});
  });

  $(":input[placeholder]").placeholder();


  $("select").focus(function () {
    $(this).prev('.yaselect-wrap').children('div').addClass('focus');
  });
  $("select").focusout(function () {
    $(this).prev('.yaselect-wrap').children('div').removeClass('focus');
  });

  $('input').iCheck({
    labelHover: false,
    checkboxClass: 'icheckbox',
      radioClass: 'iradio',
    cursor: true
  });



});