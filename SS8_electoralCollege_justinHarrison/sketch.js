var votes;
var rowCount;
var rand1;
var rand2;

var demNum = 0;
var repNum = 0;

var totalVotes = 0;

var republicans = [];
var democrats = [];
 
function preload() {
  votes = loadTable("assets/electoral.csv");
}

function setup() {
createCanvas(1200, 700);
background(255);

rowCount = votes.getRowCount();

for (var i = 1; i< rowCount; i++){
  if(votes.getNum(i, 2) > votes.getNum(i, 3)){
    for (var j = 0; j < votes.getNum(i, 1); j++){
    democrats[demNum] = votes.getString(i, 0);
    demNum = demNum + 1;
    }
  }else if (votes.getNum(i, 2) < votes.getNum(i, 3)){
    for (var k = 0; j < votes.getNum(i, 1); k++){
    republicans[repNum] = votes.getString(i, 0);
    repNum = repNum + 1;
    }
  }
}
}

function draw() {
  
if (totalVotes < 539){
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(50,100);
 var rand2 = random(0,700);
 fill(2,27,189);
 text(democrats[i], rand1 , rand2);
 totalVotes = totalVotes + 1;
  }
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(300,700);
 var rand4 = random(100,600);
 fill(254,1,3);
 text(republicans[j], rand1 , rand2);
 totalVotes = totalVotes + 1;
}
}
}
