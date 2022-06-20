window.addEventListener('DOMContentLoaded', function (){
  const todo = document.getElementById('stop');
  var input = $('.name').map(function(index, element){
    return element.value;
  }).get();
  $('input.name').each(function(i){
    $(this).attr('id','tasks__name' + (i+1));
  });
  var roulettetype = $('p').data('name');
  function decimalPart(deg, decDigits){
    var decPart = deg - ((deg >= 0) ? Math.floor(deg) : Math.ceil(deg));
    return decPart.toFixed(decDigits);
  }

  if (roulettetype== "4"){
    todo.addEventListener('click', () => {
      var roulettesstyle = $('#roulettes').attr('style');
      var deg= roulettesstyle.match(/\((.+)\)/)[1].replace(/[^0-9]/g, '')/360;
      var degs =decimalPart(deg, 2);
      if(degs == 0.00){
        $('#tasks__name1').val(input[0]);
        $('#tasks__name2').val(input[1]);
        $('#tasks__name3').val(input[2]);
        $('#tasks__name4').val(input[3]);
      }else if (degs == 0.25){
        $('#tasks__name1').val(input[3]);
        $('#tasks__name2').val(input[0]);
        $('#tasks__name3').val(input[1]);
        $('#tasks__name4').val(input[2]);
      }else if(degs == 0.50){
        $('#tasks__name1').val(input[2]);
        $('#tasks__name2').val(input[3]);
        $('#tasks__name3').val(input[0]);
        $('#tasks__name4').val(input[1]);
      }else{
        $('#tasks__name1').val(input[1]);
        $('#tasks__name2').val(input[2]);
        $('#tasks__name3').val(input[3]);
        $('#tasks__name4').val(input[0]);
      }
    })
  }else if(roulettetype== "5"){
    todo.addEventListener('click', () => {
      var roulettesstyle = $('#roulettes').attr('style');
      var deg= roulettesstyle.match(/\((.+)\)/)[1].replace(/[^0-9]/g, '')/360;
      var degs =decimalPart(deg, 1);
      if(degs == 0.0){
        $('#tasks__name1').val(input[0]);
        $('#tasks__name2').val(input[1]);
        $('#tasks__name3').val(input[2]);
        $('#tasks__name4').val(input[3]);
        $('#tasks__name5').val(input[4]);
      }else if (degs == 0.2){
        $('#tasks__name1').val(input[4]);
        $('#tasks__name2').val(input[0]);
        $('#tasks__name3').val(input[1]);
        $('#tasks__name4').val(input[2]);
        $('#tasks__name5').val(input[3]);
      }else if(degs == 0.4){
        $('#tasks__name1').val(input[3]);
        $('#tasks__name2').val(input[4]);
        $('#tasks__name3').val(input[0]);
        $('#tasks__name4').val(input[1]);
        $('#tasks__name5').val(input[2]);
      }else if(degs == 0.6){
        $('#tasks__name1').val(input[2]);
        $('#tasks__name2').val(input[3]);
        $('#tasks__name3').val(input[4]);
        $('#tasks__name4').val(input[0]);
        $('#tasks__name5').val(input[1]);
      }else{
        $('#tasks__name1').val(input[1]);
        $('#tasks__name2').val(input[2]);
        $('#tasks__name3').val(input[3]);
        $('#tasks__name4').val(input[4]);
        $('#tasks__name5').val(input[0]);
      }
    })
  }else if(roulettetype== "6"){
    todo.addEventListener('click', () => {
      var roulettesstyle = $('#roulettes').attr('style');
      var deg= roulettesstyle.match(/\((.+)\)/)[1].replace(/[^0-9]/g, '')/360;
      var degs =decimalPart(deg, 2);
      if(degs == 0.0){
        $('#tasks__name1').val(input[0]);
        $('#tasks__name2').val(input[1]);
        $('#tasks__name3').val(input[2]);
        $('#tasks__name4').val(input[3]);
        $('#tasks__name5').val(input[4]);
        $('#tasks__name6').val(input[5]);
      }else if (degs == 0.17){
        $('#tasks__name1').val(input[5]);
        $('#tasks__name2').val(input[0]);
        $('#tasks__name3').val(input[1]);
        $('#tasks__name4').val(input[2]);
        $('#tasks__name5').val(input[3]);
        $('#tasks__name6').val(input[4]);
      }else if(degs == 0.33){
        $('#tasks__name1').val(input[4]);
        $('#tasks__name2').val(input[5]);
        $('#tasks__name3').val(input[0]);
        $('#tasks__name4').val(input[1]);
        $('#tasks__name5').val(input[2]);
        $('#tasks__name6').val(input[3]);
      }else if(degs == 0.50){
        $('#tasks__name1').val(input[3]);
        $('#tasks__name2').val(input[4]);
        $('#tasks__name3').val(input[5]);
        $('#tasks__name4').val(input[0]);
        $('#tasks__name5').val(input[1]);
        $('#tasks__name6').val(input[2]);
      }else if(degs == 0.67 ){
        $('#tasks__name1').val(input[2]);
        $('#tasks__name2').val(input[3]);
        $('#tasks__name3').val(input[4]);
        $('#tasks__name4').val(input[5]);
        $('#tasks__name5').val(input[0]);
        $('#tasks__name6').val(input[1]);
      }else{
        $('#tasks__name1').val(input[1]);
        $('#tasks__name2').val(input[2]);
        $('#tasks__name3').val(input[3]);
        $('#tasks__name4').val(input[4]);
        $('#tasks__name5').val(input[5]);
        $('#tasks__name6').val(input[0]);
      }
    })
  }else if(roulettetype== "8"){
    todo.addEventListener('click', () => {
      var roulettesstyle = $('#roulettes').attr('style');
      var deg= roulettesstyle.match(/\((.+)\)/)[1].replace(/[^0-9]/g, '')/360;
      var degs =decimalPart(deg, 2);
      if(degs == 0.0){
        $('#tasks__name1').val(input[0]);
        $('#tasks__name2').val(input[1]);
        $('#tasks__name3').val(input[2]);
        $('#tasks__name4').val(input[3]);
        $('#tasks__name5').val(input[4]);
        $('#tasks__name6').val(input[5]);
        $('#tasks__name7').val(input[6]);
        $('#tasks__name8').val(input[7]);
      }else if (degs == 0.13){
        $('#tasks__name1').val(input[7]);
        $('#tasks__name2').val(input[0]);
        $('#tasks__name3').val(input[1]);
        $('#tasks__name4').val(input[2]);
        $('#tasks__name5').val(input[3]);
        $('#tasks__name6').val(input[4]);
        $('#tasks__name7').val(input[5]);
        $('#tasks__name8').val(input[6]);
      }else if(degs == 0.25){
        $('#tasks__name1').val(input[6]);
        $('#tasks__name2').val(input[7]);
        $('#tasks__name3').val(input[0]);
        $('#tasks__name4').val(input[1]);
        $('#tasks__name5').val(input[2]);
        $('#tasks__name6').val(input[3]);
        $('#tasks__name7').val(input[4]);
        $('#tasks__name8').val(input[5]);
      }else if(degs == 0.38){
        $('#tasks__name1').val(input[5]);
        $('#tasks__name2').val(input[6]);
        $('#tasks__name3').val(input[7]);
        $('#tasks__name4').val(input[0]);
        $('#tasks__name5').val(input[1]);
        $('#tasks__name6').val(input[2]);
        $('#tasks__name7').val(input[3]);
        $('#tasks__name8').val(input[4]);
      }else if(degs == 0.50 ){
        $('#tasks__name1').val(input[4]);
        $('#tasks__name2').val(input[5]);
        $('#tasks__name3').val(input[6]);
        $('#tasks__name4').val(input[7]);
        $('#tasks__name5').val(input[0]);
        $('#tasks__name6').val(input[1]);
        $('#tasks__name7').val(input[2]);
        $('#tasks__name8').val(input[3]);
      }else if(degs == 0.63){
        $('#tasks__name1').val(input[3]);
        $('#tasks__name2').val(input[4]);
        $('#tasks__name3').val(input[5]);
        $('#tasks__name4').val(input[6]);
        $('#tasks__name5').val(input[7]);
        $('#tasks__name6').val(input[0]);
        $('#tasks__name7').val(input[1]);
        $('#tasks__name8').val(input[2]);
      }else if(degs == 0.75){
        $('#tasks__name1').val(input[2]);
        $('#tasks__name2').val(input[3]);
        $('#tasks__name3').val(input[4]);
        $('#tasks__name4').val(input[5]);
        $('#tasks__name5').val(input[6]);
        $('#tasks__name6').val(input[7]);
        $('#tasks__name7').val(input[0]);
        $('#tasks__name8').val(input[1]);
      }else{
        $('#tasks__name1').val(input[1]);
        $('#tasks__name2').val(input[2]);
        $('#tasks__name3').val(input[3]);
        $('#tasks__name4').val(input[4]);
        $('#tasks__name5').val(input[5]);
        $('#tasks__name6').val(input[6]);
        $('#tasks__name7').val(input[7]);
        $('#tasks__name8').val(input[0]);
      }
    })
  }else if(roulettetype== "10"){
    todo.addEventListener('click', () => {
      var roulettesstyle = $('#roulettes').attr('style');
      var deg= roulettesstyle.match(/\((.+)\)/)[1].replace(/[^0-9]/g, '')/360;
      var degs =decimalPart(deg, 1);
      console.log(degs);
      if(degs == 0.0){
        $('#tasks__name1').val(input[0]);
        $('#tasks__name2').val(input[1]);
        $('#tasks__name3').val(input[2]);
        $('#tasks__name4').val(input[3]);
        $('#tasks__name5').val(input[4]);
        $('#tasks__name6').val(input[5]);
        $('#tasks__name7').val(input[6]);
        $('#tasks__name8').val(input[7]);
        $('#tasks__name9').val(input[8]);
        $('#tasks__name10').val(input[9]);
      }else if (degs == 0.1){
        $('#tasks__name1').val(input[9]);
        $('#tasks__name2').val(input[0]);
        $('#tasks__name3').val(input[1]);
        $('#tasks__name4').val(input[2]);
        $('#tasks__name5').val(input[3]);
        $('#tasks__name6').val(input[4]);
        $('#tasks__name7').val(input[5]);
        $('#tasks__name8').val(input[6]);
        $('#tasks__name9').val(input[7]);
        $('#tasks__name10').val(input[8]);
      }else if(degs == 0.2){
        $('#tasks__name1').val(input[8]);
        $('#tasks__name2').val(input[9]);
        $('#tasks__name3').val(input[0]);
        $('#tasks__name4').val(input[1]);
        $('#tasks__name5').val(input[2]);
        $('#tasks__name6').val(input[3]);
        $('#tasks__name7').val(input[4]);
        $('#tasks__name8').val(input[5]);
        $('#tasks__name9').val(input[6]);
        $('#tasks__name10').val(input[7]);
      }else if(degs == 0.3){
        $('#tasks__name1').val(input[7]);
        $('#tasks__name2').val(input[8]);
        $('#tasks__name3').val(input[9]);
        $('#tasks__name4').val(input[0]);
        $('#tasks__name5').val(input[1]);
        $('#tasks__name6').val(input[2]);
        $('#tasks__name7').val(input[3]);
        $('#tasks__name8').val(input[4]);
        $('#tasks__name9').val(input[5]);
        $('#tasks__name10').val(input[6]);
      }else if(degs == 0.40 ){
        $('#tasks__name1').val(input[6]);
        $('#tasks__name2').val(input[7]);
        $('#tasks__name3').val(input[8]);
        $('#tasks__name4').val(input[9]);
        $('#tasks__name5').val(input[0]);
        $('#tasks__name6').val(input[1]);
        $('#tasks__name7').val(input[2]);
        $('#tasks__name8').val(input[3]);
        $('#tasks__name9').val(input[4]);
        $('#tasks__name10').val(input[5]);
      }else if(degs == 0.5){
        $('#tasks__name1').val(input[5]);
        $('#tasks__name2').val(input[6]);
        $('#tasks__name3').val(input[7]);
        $('#tasks__name4').val(input[8]);
        $('#tasks__name5').val(input[9]);
        $('#tasks__name6').val(input[0]);
        $('#tasks__name7').val(input[1]);
        $('#tasks__name8').val(input[2]);
        $('#tasks__name9').val(input[3]);
        $('#tasks__name10').val(input[4]);
      }else if(degs == 0.6){
        $('#tasks__name1').val(input[4]);
        $('#tasks__name2').val(input[5]);
        $('#tasks__name3').val(input[6]);
        $('#tasks__name4').val(input[7]);
        $('#tasks__name5').val(input[8]);
        $('#tasks__name6').val(input[9]);
        $('#tasks__name7').val(input[0]);
        $('#tasks__name8').val(input[1]);
        $('#tasks__name9').val(input[2]);
        $('#tasks__name10').val(input[3]);
      }else if(degs == 0.7){
        $('#tasks__name1').val(input[3]);
        $('#tasks__name2').val(input[4]);
        $('#tasks__name3').val(input[5]);
        $('#tasks__name4').val(input[6]);
        $('#tasks__name5').val(input[7]);
        $('#tasks__name6').val(input[8]);
        $('#tasks__name7').val(input[9]);
        $('#tasks__name8').val(input[0]);
        $('#tasks__name9').val(input[1]);
        $('#tasks__name10').val(input[2]);
      }else if(degs == 0.8){
        $('#tasks__name1').val(input[2]);
        $('#tasks__name2').val(input[3]);
        $('#tasks__name3').val(input[4]);
        $('#tasks__name4').val(input[5]);
        $('#tasks__name5').val(input[6]);
        $('#tasks__name6').val(input[7]);
        $('#tasks__name7').val(input[8]);
        $('#tasks__name8').val(input[9]);
        $('#tasks__name9').val(input[0]);
        $('#tasks__name10').val(input[1]);
      }else{
        $('#tasks__name1').val(input[1]);
        $('#tasks__name2').val(input[2]);
        $('#tasks__name3').val(input[3]);
        $('#tasks__name4').val(input[4]);
        $('#tasks__name5').val(input[5]);
        $('#tasks__name6').val(input[6]);
        $('#tasks__name7').val(input[7]);
        $('#tasks__name8').val(input[8]);
        $('#tasks__name9').val(input[9]);
        $('#tasks__name10').val(input[0]);
      }
    })
  }
});
