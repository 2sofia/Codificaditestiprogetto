function traduzione16() {
  var trad16 = document.getElementById("traduzione_pag16");
  var traduzione16 =  document.getElementById("traduzione16");
  if (trad16.style.display === "none") {
    trad16.style.display = "block";
    traduzione16.style.backgroundColor = "#cd853f";
    traduzione16.style.color = "white";
  } else {
    trad16.style.display = "none";
    traduzione16.style.backgroundColor = "#fce47e";
    traduzione16.style.color = "black";
  }
};

function traduzione17() {
  var trad17 = document.getElementById("traduzione_pag17");
  var traduzione17 =  document.getElementById("traduzione17");
    if (trad17.style.display === "none") {
      trad17.style.display = "block";
      traduzione17.style.backgroundColor = "#cd853f";
      traduzione17.style.color = "white";
    } else {
      trad17.style.display = "none";
      traduzione17.style.backgroundColor = "#fce47e";
      traduzione17.style.color = "black";
    }
  };

  function retro16() {
    var p16retro = document.getElementById("p16retro");
    var a16retro = document.getElementById("a16retro");
    if (p16retro.style.display == "none") {
      p16retro.style.display = "block";
      a16retro.style.backgroundColor = "#cd853f";
      a16retro.style.color = "white";
    } else {
      p16retro.style.display = "none";
      a16retro.style.backgroundColor = "#fce47e";
      a16retro.style.color = "black";
    }
  };

function retro17() {
  var p17retro = document.getElementById("p17retro");
  var a17retro = document.getElementById("a17retro");
  if (p17retro.style.display == "none") {
    p17retro.style.display = "block";
    a17retro.style.backgroundColor = "#cd853f";
    a17retro.style.color = "white";
  } else {
    p17retro.style.display = "none";
    a17retro.style.backgroundColor = "#fce47e";
    a17retro.style.color = "black";
  }
};


function display() {
  var choice = document.getElementsByClassName("choice");
    var sic = document.getElementsByClassName("sic");
  var corr = document.getElementsByClassName("corr");
  var checkbox1 = document.getElementById("checkbox1");

  var i;
  var x= choice.length;
  if(checkbox1.checked == true){
  for (i = 0; i < x; i++) {
    choice[i].childNodes[1].style.display ="none";
    choice[i].childNodes[0].style.display = "inline-block";
    choice[i].childNodes[0].style.fontWeight= "bolder";
    choice[i].childNodes[0].style.fontSize= "17px";
    choice[i].childNodes[0].style.color= "red";
  }}else{
   for (i = 0; i < x; i++) {
     choice[i].childNodes[0].style.display ="none";
    choice[i].childNodes[1].style.display ="inline-block";
  }}

};



