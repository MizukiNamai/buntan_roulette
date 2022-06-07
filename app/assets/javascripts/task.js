$(function (){
  const start = document.getElementById('start');
  const stop = document.getElementById('stop');
  const roulettes = document.getElementById('roulettes');
  const addbtn = document.getElementById('addbtn');

  let degree = 0;
  let speed = 0;
  let move = false;
  let count = 0;

  start.addEventListener('click', () => {
      if(!move) {
        move = true;
        roulettetype = $('p').data('name');
          if (roulettetype== "4"){
            speed = 90;
          }else if(roulettetype== "5"){
            speed = 72;
          }else if(roulettetype== "6"){
            speed = 60;
          }else if(roulettetype== "8"){
            speed = 45;
          }else{
            speed = 36;
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

  addbtn.addEventListener('click', () => {
      result = ++count;
      if(result > 6){
        $('#addbtn').attr('disabled', true);
        $("#addbtn").css({background:'#788592',color:'#bcd3eb'});
      }else{
      var tr_form = '' +
        '<tr>'+
        '<td><input type="text" class="task" placeholder= "タスク記入(5文字以内)" maxlength= 5 autocomplete="off"></td>' +
        '<td><input type="text" class="task" placeholder= "名前記入(5文字以内)" maxlength= 5 autocomplete="off"></td>' +
        '</tr>';
    $(tr_form).appendTo($('table > tbody'));
    var i = 9;
    $ ('.task').each(function(){
      $(this).attr('name','formdate[form'+ i +']' );
      i++;
    });
    }
  });
});
