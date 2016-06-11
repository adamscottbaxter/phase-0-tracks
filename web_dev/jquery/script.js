console.log("Hello");
  

var bluebox = document.getElementById('blue');
var purplebox = document.getElementById('purple');
var cyanbox = document.getElementById('cyan');

function addPinkBorder(event) {
  event.target.style.border = "4px solid pink";
}

function moveToRanked(event) {
  event.target.appendTo("#ranked")
}

bluebox.addEventListener('click', addPinkBorder);
purplebox.addEventListener('click', addPinkBorder);
cyanbox.addEventListener('click', addPinkBorder);


$(document).ready(function(){
    $("#blue").click(function(){
        $("#blue").appendTo("#ranked");
    });
    $("#purple").click(function(){
        $("#purple").appendTo("#ranked");
    });
    $("#cyan").click(function(){
        $("#cyan").appendTo("#ranked");
    });
});

