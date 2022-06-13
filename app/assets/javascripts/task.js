window.addEventListener('DOMContentLoaded', function (){
  const start = document.getElementById('start');
  const stop = document.getElementById('stop');
  const roulettes = document.getElementById('roulettes');
  const addbtn = document.getElementById('btn_add');

  let degree = 0;
  let speed = 0;
  let move = false;
  let count = 0;

  if (!start){ return false;}
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

  $('input.name').each(function(i){
    $(this).attr('id','tasks__name' + (i+1));
  });

  addbtn.addEventListener('click', () => {
      result = ++count;
      if(result > 6){
        $('#btn_add').attr('disabled', true);
        $("#btn_add").css({background:'#788592',color:'#bcd3eb'});
      }else{
      var tr_form = '' +
        '<tr>'+
        '<td><input type="text" class="task" placeholder= "タスク記入(5文字以内)" maxlength= 5 autocomplete="off"></td>' +
        '<td><input type="text" class="name" placeholder= "名前記入(5文字以内)" maxlength= 5 autocomplete="off"></td>' +
        '</tr>';
      $(tr_form).appendTo($('table > tbody'));
      var i = 5;
      $ ('.task').each(function(){
        $(this).attr('name',`formdate[task${i}]` );
        i++;
      });
      var v = 5;
      $ ('.name').each(function(){
        $(this).attr('name',`formdate[name${v}]` );
        v++;
      });
    }
  });
});
