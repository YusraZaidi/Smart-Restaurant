function myFunction() {
  var x = document.getElementById("myheader");
  if (x.className === "header") {
    x.className += " responsive";
    console.log("hi");
  } else {
    x.className = "header";
  }
}