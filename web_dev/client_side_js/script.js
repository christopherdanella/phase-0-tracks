var addNewElement = document.getElementById("rosheader");
addNewElement.insertAdjacentHTML('beforebegin', '<div><h1>Insert new content here</h1></div>');


var addParagraph = document.getElementById("forwards");
addParagraph.insertAdjacentHTML('afterend', '<div><p>New paragraph underneath the forwards id!</p></div>');

var idModifier = document.getElementById("defense");
defense.insertAdjacentHTML('afterbegin', '<div><p><strong>Defense wins championships!</strong></p></div');

function changeFont(event) {
  console.log("event-ed!");
  console.log(event);
  event.target.style = "font-size: 5.2em"
}

var headerBorder = document.getElementById('rosheader');
headerBorder.addEventListener("click", changeFont);