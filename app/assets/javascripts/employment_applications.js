$(document).ready(function(){
  $('input, textarea').placeholder();

  $('#add-education-record').click(function(){
    var record = $('.education-record:last').clone();
    var count = $('.education-record').length - 1;

    $('input, textarea', record).val('');
    $('input, textarea', record).each(function(){
      var current = $(this).attr('name');
      $(this).attr('name', current.replace('[' + count + ']', '[' + (count+1) + ']'));
    });

    $('.records').append(record);
  });

  $('#add-employment-record').click(function(){
    var record = $('.employment-record:last').clone();
    var count = $('.employment-record').length - 1;

    $('input, textarea', record).val('');
    $('input, textarea', record).each(function(){
      var current = $(this).attr('name');
      $(this).attr('name', current.replace('[' + count + ']', '[' + (count+1) + ']'));
    });

    $('.records').append(record);
  });

  $('#add-reference-record').click(function(){
    var record = $('.reference-record:last').clone();
    var count = $('.reference-record').length - 1;

    $('input, textarea', record).val('');
    $('input, textarea', record).each(function(){
      var current = $(this).attr('name');
      $(this).attr('name', current.replace('[' + count + ']', '[' + (count+1) + ']'));
    });

    $('.records').append(record);
  });

});
