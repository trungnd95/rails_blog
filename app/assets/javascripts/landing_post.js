$(document).ready(function(){
  $(window).scroll(function(){
    var wScroll  = $(this).scrollTop();
    if(wScroll > $('#main-content').offset().top - ($(window).height() / 1.2)){
      $('#main-content .card').each(function(i){
        setTimeout(function(){
            $('#main-content .card').eq(i).addClass('is-showing');
        }, 150 * (i + 1))
      })
    }
  })
})
