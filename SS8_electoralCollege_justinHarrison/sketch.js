var votes;
var rowCount;
var rand1;
var rand2;

var demNum = 0;
var repNum = 0;

var totalVotes = 0;

var republicans = [];
var democrats = [];

var randNum = 0;

var randState;
 
function preload() {
  votes = loadTable("electoral.csv", "csv");
}

function setup() {
createCanvas(1250, 675);
background(255);

rowCount = votes.getRowCount();

for (var i = 0; i< rowCount; i++){
  var electoralVotes = votes.getString(i,1);
  if(votes.getNum(i, 2) > votes.getNum(i, 3)){
    for (var j = 0; j < electoralVotes; j++){
    democrats[demNum] = votes.getString(i, 0);
    demNum = demNum + 1;
    }
    }else if (votes.getNum(i, 2) < votes.getNum(i, 3)){
    for (var k = 0; k < electoralVotes; k++){
    republicans[repNum] = votes.getString(i, 0);
    repNum = repNum + 1;
    }
  }
}

  button = createButton('Republican Votes Only');
  button.position(50, 640);
  button.mousePressed(republicanOnly);
  
  button = createButton('Democrat Votes Only');
  button.position(315, 640);
  button.mousePressed(democratOnly);
  
  button = createButton('Left-Right Split');
  button.position(580, 640);
  button.mousePressed(leftRight);
  
  button = createButton('Random Organization');
  button.position(800, 640);
  button.mousePressed(randomDisplay);
  
  button = createButton('Single State');
  button.position(1000, 640);
  button.mousePressed(randomState);
}

function randomDisplay() {
background(250);
  
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(50,1150);
 var rand2 = random(50,600);
 fill(2,27,189);
 text(democrats[i], rand1 , rand2);
 totalVotes = totalVotes + 1;
  }
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(50,1150);
 var rand4 = random(50,600);
 fill(254,1,3);
 text(republicans[j], rand3 , rand4);
 totalVotes = totalVotes + 1;
}
}

function republicanOnly() {
background(250);
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(50,1150);
 var rand4 = random(50,600);
 fill(254,1,3);
 text(republicans[j], rand3 , rand4);
 totalVotes = totalVotes + 1;
}
}

function democratOnly() {
background(250);
  
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(50,1150);
 var rand2 = random(50,600);
 fill(2,27,189);
 text(democrats[i], rand1 , rand2);
 totalVotes = totalVotes + 1;
  }
}

function leftRight() {
background(250);
  
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(50,550);
 var rand2 = random(50,600);
 fill(2,27,189);
 text(democrats[i], rand1 , rand2);
 totalVotes = totalVotes + 1;
  }
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(550,1150);
 var rand4 = random(50,600);
 fill(254,1,3);
 text(republicans[j], rand3 , rand4);
 totalVotes = totalVotes + 1;
}
}

function randomState() {
background(250);
 var randNum = int(random(0,2));
 if(randNum === 0){
  var demLength = democrats.length;
  randState = int(random(0, demLength));
  for(var i = 0; i < demLength; i++){
    if(democrats[i] == democrats[randState]){
      var rand1 = random(50,550);
      var rand2 = random(50,600);
      fill(2,27,189);
      text(democrats[i], rand1 , rand2);
    }
  }
 }
 if(randNum == 1){
   var repLength = republicans.length;
   randState = int(random(0, repLength));
   for(var j = 0; j< repLength; j++){
     if(republicans[j] == republicans[randState]){
        var rand3 = random(550,1150);
        var rand4 = random(50,600);
        fill(254,1,3);
        text(republicans[j], rand3 , rand4);
     }
   }
}
}
