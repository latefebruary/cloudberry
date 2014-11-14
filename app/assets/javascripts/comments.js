$(document).ready(
              function(){

  $('.answer').on('click',function(){
    if ($(this).hasClass('opened')) {
      $(this).parent().find('.answerform').addClass('invisible');
      $(this).removeClass('opened');
      $(this).find('.showanswer').removeClass('invisible');
      $(this).find('.hideanswer').addClass('invisible');
      
    } else {
      $(this).addClass('opened');
      $(this).parent().find('.answerform').removeClass('invisible');
      $(this).find('.showanswer').addClass('invisible');
      $(this).find('.hideanswer').removeClass('invisible');
    }
    
  });       

});     
