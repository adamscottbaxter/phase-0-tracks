console.log("Hello World");
var heads = document.getElementsByClassName('headers');
headOne = heads[0]
headTwo = heads[1]
// headOne.style.border = "5px dotted purple";
// headTwo.style.padding = "16px";
// headTwo.style.fontFamily = "Helvetica";
// // headTwo.style.userZoom = "3";
// headTwo.draggable = "true";

function clickColor(event) {
  var heads = document.getElementsByClassName('headers');
  // headOne = heads[0]
  // headTwo = heads[1]
  event.target.style.border = "5px dotted purple";
  // headTwo.style.border = "5px dotted purple";
}

function changePadding(event) {
  event.target.style.padding = "24px";
}
// clickColor();
headOne.addEventListener("click", clickColor);
// headTwo.addEventListener("click", clickColor);
headOne.addEventListener("click", function(event) {
  clickColor(event);
  changePadding(event);
});
headTwo.addEventListener("click", function(event) {
  clickColor(event);
  changePadding(event);
});
// for(var i = 0; i < heads.length; i++)
// {
//    changePadding(heads.item(i));
// }
