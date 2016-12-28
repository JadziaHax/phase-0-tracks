console.log("The script, yeah.");

var pars = document.getElementsByTagName("p");
pars[0].style.color = "green";

function hideStuff(event) {
  console.log("CLICK!");
  console.log(event);
  event.target.hidden = "true";
}

var stuff = document.getElementById("fake-stuff");
stuff.addEventListener("click", hideStuff);