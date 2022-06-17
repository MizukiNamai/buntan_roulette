window.addEventListener('DOMContentLoaded', function (){
  const todo = document.getElementById('todo');

  todo.addEventListener('click', () => {
  var props = $('#roulettes').css('transform');
  function transform_value(e){
    var values = e.split('(')[1];
    values = values.split(')')[0];
    values = values.split(', ');
    var matrix = {
      'scale-x':values[0],
      'rotate-p':values[1],
    };
    return matrix
  }
  let a = ((transform_value(props))["scale-x"]);
  let b = ((transform_value(props))["rotate-p"]);
  var flag=(Math.sign(a));
  var fleg=(Math.sign(b));
  if(flag==1 && fleg== -1) {
    var input = $('.todolists [name=my-text]').val();
    console.log(input);
  }
  })
});
