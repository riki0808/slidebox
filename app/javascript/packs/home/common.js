let navGlobal = document.getElementById('navGlobal');
let set = document.getElementById('js-setting');
let overLay = document.getElementById('overLay');

console.log('aaaaaa');

if ( set != null ) {

  set.addEventListener('click', navFade, false);
  function navFade() {
    navGlobal.classList.toggle('is-active');
    overLay.classList.toggle('is-active');
  }

}

if ( overLay != null ) {

  overLay.addEventListener('click', function() {
    navGlobal.classList.remove('is-active');
    overLay.classList.remove('is-active');
  }, false);

}
