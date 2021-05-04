// handle tile height issues from title length variation
function cardHeightByRow(tile){
  if($(tile).length < 2)
    return;
  
  // get number of cards in row
  var row_n = 0;
  var top = $(tile).eq(0).offset().top;
  var tempTop;
  $(tile).each(function(){
    tempTop = $(this).offset().top;
    if(tempTop == top){
      row_n++;
    }else{
      return false;
    }
  });

  $(tile).height("auto");

  if(row_n <= 1)
    return

  // set card height by highest in row
  // if row n more than one
  var cards = $(tile).length;
  var row_i = 0;
  var maxH = 0;
  var H;
  $(tile).each(function(index){
    row_i++;
    
    // get row max height
    H = $(this).height();
    if(H > maxH){
      maxH = H;
    }

    // if end of row, go back and set row with max
    if(row_i == row_n){
      for(var j=(index+1)-row_n; j<=index; j++){
        $(tile).eq(j).height(maxH);
      }

      // reset maxH and row_i before next row
      maxH = 0;
      row_i = 0;
      return;
    }

    // last card non full row corner case
    if(index+1 == cards){
      for(var l=(index+1)-row_i; l<=index; l++){
        $(tile).eq(l).height(maxH);
      }
    }
  });
}