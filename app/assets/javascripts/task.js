$(function (){
  const start = document.getElementById('start');
  const stop = document.getElementById('stop');
  const roulettes = document.getElementById('roulettes');
  const btn = document.getElementById('btn');


  let degree = 0;
  let speed = 0;
  let move = false;

  start.addEventListener('click', () => {
      if(!move) {
        move = true;
        roulettetype = $('p').data('name');
          if (roulettetype== "4"){
            var speed = 90;
          }else if(roulettetype== "5"){
            var speed = 72;
          }else if(roulettetype== "6"){
            var speed = 60;
          }else if(roulettetype== "8"){
            var speed = 45;
          }else{
            var speed = 36;
          }
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

  btn.addEventListener('click', () => {
      tr_form = '' +
        '<tr>'+
        '<td><input type="text" class="task" placeholder= "タスクを記入" max= 5></td>' +
        '<td><input type="text" class="task" placeholder= "名前を記入" max= 5></td>' +
        '</tr>';
    $(tr_form).appendTo($('table > tbody'));
    i = 9;
    $ ('.task').each(function(){
      $(this).attr('name','formdate[form'+ i +']' );
      i++;
    });
  });
});
