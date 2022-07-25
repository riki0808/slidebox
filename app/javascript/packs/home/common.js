let navGlobal = document.getElementById("navGlobal");
let set = document.getElementById("js-setting");
let overLay = document.getElementById("overLay");

if (set != null) {
  set.addEventListener("click", navFade, false);
  function navFade() {
    navGlobal.classList.toggle("is-active");
    overLay.classList.toggle("is-active");
  }
}

if (overLay != null) {
  overLay.addEventListener(
    "click",
    function () {
      navGlobal.classList.remove("is-active");
      overLay.classList.remove("is-active");
    },
    false
  );
}

let mainColorPick = document.getElementById("js-main-pick");
let subColorPick = document.getElementById("js-sub-pick");

let mainColorCode = document.getElementById("js-main-code");
let subColorCode = document.getElementById("js-sub-code");

if (mainColorPick !== null) {
  mainColorPick.value = mainColorCode.value
}
if (subColorPick !== null) {
  subColorPick.value = subColorCode.value
}

function changeColor(code, color) {
  if (code !== null) {
    code.value = color.value;
    color.style.background = color.value;

    color.addEventListener(
      "change",
      function () {
        code.value = color.value;
      },
      false
    );

    code.addEventListener(
      "input",
      function () {
        color.value = code.value;
      },
      false
    );
  }
}

changeColor(mainColorCode, mainColorPick);
changeColor(subColorCode, subColorPick);
