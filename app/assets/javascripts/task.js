$(function (){
  const start = document.getElementById('start');
  const stop = document.getElementById('stop');
  const roulettes = document.getElementById('roulettes');

  let degree = 0;
  let speed = 0;
  let move = false;


  start.addEventListener('click', () => {
      if(!move) {
        move = true;
        speed = 90;
        loop();
      }
    function loop() {
      degree += speed;
      if(move) {
        roulettes.style.transform = `rotate(${degree}deg)`;
      requestAnimationFrame(loop);
    }
  }
  });

  stop.addEventListener('click', () => {
    if(move) {
      move = false;
    }
  });

  $("#btn").click(function() {
      var tr_form = '' +
        '<tr>'+
        '<td><input type="text" class="task" placeholder= "タスクを記入" max= 5/></td>' +
        '<td><input type="text" class="task" placeholder= "名前を記入" max= 5/></td>' +
        '</tr>';
    $(tr_form).appendTo($('table > tbody'));
    var i = 9;
    $ ('.task').each(function(){
      $(this).attr('name','formdate[form'+ i +']' );
      i++;
    });
  });
});
