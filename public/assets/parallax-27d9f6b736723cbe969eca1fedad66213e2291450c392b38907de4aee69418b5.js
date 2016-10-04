$(document).ready(function(){
  var img = document.getElementsByClassName('header-background');
  function initParallax()
  {

    var navBar =  document.getElementById('navbar');
    if(window.pageYOffset > img[0].height)
    {
      navBar.style.position = "fixed";
      navBar.style.top = '0px';
    }
    else {
      navBar.style.position = "absolute";
      navBar.style.top = '420px';
    }
    // console.log(img[0].style.height);
    img[0].style.top = -(window.pageYOffset / 10) + 'px';
  }

  document.addEventListener('scroll', initParallax)

})
;
