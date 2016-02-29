// DOM Manipulation Challenge


// I worked on this challenge [with: Eddie Bueno ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").setAttribute("class", "none");



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
document.getElementsByTagName("h1")[0].innerHTML = "I completed relase 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "955251";



// Release 4:

var release4 = document.getElementsByClassName("release-4")
for(i =0; i< release4.length; i++){
  release4[i].style.fontSize = "2em";}
// for(i in release4){
  // release4[i].style.fontSize = "2em";};


// Release 5:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));
// document.getElementById("hidden").style.display = "inline";
