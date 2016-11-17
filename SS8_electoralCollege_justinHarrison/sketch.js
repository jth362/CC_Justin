//variables for CSV data
var votes;
var rowCount;

//variables for arrays of votes
var demNum = 0;
var repNum = 0;

var totalVotes = 0;

var republicans = [];
var democrats = [];

//random variables
var randNum = 0;
var rand1;
var rand2;
var randState;

 
//loads CSV
function preload() {
  votes = loadTable("electoral.csv", "csv");
}

function setup() {
createCanvas(1250, 675);
background(255);

rowCount = votes.getRowCount();

//take data from CSV, move to array of democrat votes or republican votes
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

//buttons for different displays
  button1 = createButton('Republican Votes Only');
  button1.position(100, 640);
  button1.mousePressed(republicanOnly);
  
  button2 = createButton('Democrat Votes Only');
  button2.position(350, 640);
  button2.mousePressed(democratOnly);
  
  button3 = createButton('Left-Right Split');
  button3.position(600, 640);
  button3.mousePressed(leftRight);
  
  button4 = createButton('Random Organization');
  button4.position(850, 640);
  button4.mousePressed(randomDisplay);
  
  button5 = createButton('Single State');
  button5.position(1050, 640);
  button5.mousePressed(randomState);
  
  button6 = createButton('?');
  button6.position(0, 0);
  button6.mousePressed(explainData);
}

//when button is pressed, flashes a message explaining data
function explainData(){
  fill(0);
  textSize(19);
  text('Data represented is the electoral votes alloted to each state, colored based on party leaning for the 2016 election. ', 0, 30);
  button6.mousePressed(removeModal);
}

//removes explanation when button is pressed again
function removeModal(){
  background(255);
  button6.mousePressed(explainData);
}

//counts the number of votes a democratic state has (ex: cali has 55) and returns that number
function countDemVotes(state){
  totalVotes = 0;
  var demLength = democrats.length;
   for(var j = 0; j < demLength; j++){
    if(democrats[j] == state){
      totalVotes = totalVotes + 1;
    }
  }
  return totalVotes;
}

//counts the number of votes a republican state has (ex: cali has 55) and returns that number
function countRepVotes(state){
  totalVotes = 0;
  var repLength = republicans.length;
   for(var j = 0; j < repLength; j++){
    if(republicans[j] == state){
      totalVotes = totalVotes + 1;
    }
  }
  return totalVotes;
}

//displays all of the votes in a random organization
function randomDisplay() {
background(250);
  
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(0,1125);
 var rand2 = random(50,600);
 fill(2,27,189);
 voteCount = countDemVotes(democrats[i]);
 //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(democrats[i], rand1 , rand2);
  }else if(voteCount > 40) {
    textSize(30);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 30){
    textSize(25);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 20){
    textSize(20);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 10){
    textSize(15);
    text(democrats[i], rand1 , rand2);
  }else{
    textSize(10);
    text(democrats[i], rand1 , rand2);
  }
}
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(0,1125);
 var rand4 = random(50,600);
 fill(254,1,3);
 voteCount = countRepVotes(republicans[j]);
  //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(republicans[j], rand3 , rand4);
  }else if(voteCount > 40) {
    textSize(30);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 30){
    textSize(25);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 20){
    textSize(20);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 10){
    textSize(15);
    text(republicans[j], rand3 , rand4);
  }else{
    textSize(10);
    text(republicans[j], rand3 , rand4);
  }
}
}

//displays all of the republican votes in a random organization
function republicanOnly() {
background(250);
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(50,1150);
 var rand4 = random(50,600);
 fill(254,1,3);
 voteCount = countRepVotes(republicans[j]);
  //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(republicans[j], rand3 , rand4);
  }else if(voteCount > 40) {
    textSize(30);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 30){
    textSize(25);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 20){
    textSize(20);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 10){
    textSize(15);
    text(republicans[j], rand3 , rand4);
  }else{
    textSize(10);
    text(republicans[j], rand3 , rand4);
  }
}
}

//displays all of the democrat votes in a random organization
function democratOnly() {
background(250);
fill(2,27,189);
for(var i = 0; i < democrats.length; i++){
  var rand1 = random(50,1150);
var rand2 = random(50,600);
 voteCount = countDemVotes(democrats[i]);
  //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(democrats[i], rand1 , rand2);
  }else if(voteCount > 40) {
    textSize(30);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 30){
    textSize(25);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 20){
    textSize(20);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 10){
    textSize(15);
    text(democrats[i], rand1 , rand2);
  }else{
    textSize(10);
    text(democrats[i], rand1 , rand2);
  }
  
  }
}

//displays the votes with democrats on the left and republicans on the right
function leftRight() {
background(250);
  
for(var i = 0; i < democrats.length; i++){
 var rand1 = random(0,575);
 var rand2 = random(50,600);
 fill(2,27,189);
 voteCount = countDemVotes(democrats[i]);
  //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(democrats[i], rand1 , rand2);
  }else if(voteCount > 40) {
    textSize(30);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 30){
    textSize(25);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 20){
    textSize(20);
    text(democrats[i], rand1 , rand2);
  }else if(voteCount > 10){
    textSize(15);
    text(democrats[i], rand1 , rand2);
  }else{
    textSize(10);
    text(democrats[i], rand1 , rand2);
  }
  }
  
for(var j = 0; j < republicans.length; j++){
 var rand3 = random(575,1200);
 var rand4 = random(50,600);
 fill(254,1,3);
 voteCount = countRepVotes(republicans[j]);
  //changes size of vote depending on total number of votes
 if(voteCount > 50){
 textSize(35);
 text(republicans[j], rand3 , rand4);
  }else if(voteCount > 40) {
    textSize(30);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 30){
    textSize(25);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 20){
    textSize(20);
    text(republicans[j], rand3 , rand4);
  }else if(voteCount > 10){
    textSize(15);
    text(republicans[j], rand3 , rand4);
  }else{
    textSize(10);
    text(republicans[j], rand3 , rand4);
  }
}
}

//chooses a random state, displays their votes alone somewhere on canvas
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
      voteCount = countDemVotes(democrats[i]);
       //changes size of vote depending on total number of votes
      if(voteCount > 50){
      textSize(35);
      text(democrats[i], rand1 , rand2);
     }else if(voteCount > 40) {
     textSize(30);
     text(democrats[i], rand1 , rand2);
     }else if(voteCount > 30){
     textSize(25);
     text(democrats[i], rand1 , rand2);
     }else if(voteCount > 20){
      textSize(20);
     text(democrats[i], rand1 , rand2);
     }else if(voteCount > 10){
     textSize(15);
     text(democrats[i], rand1 , rand2);
     }else{
     textSize(10);
     text(democrats[i], rand1 , rand2);
  }
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
        voteCount = countRepVotes(republicans[j]);
         //changes size of vote depending on total number of votes
       if(voteCount > 50){
       textSize(35);
        text(republicans[j], rand3 , rand4);
          }else if(voteCount > 40) {
        textSize(30);
        text(republicans[j], rand3 , rand4);
       }else if(voteCount > 30){
       textSize(25);
       text(republicans[j], rand3 , rand4);
      }else if(voteCount > 20){
      textSize(20);
       text(republicans[j], rand3 , rand4);
       }else if(voteCount > 10){
      textSize(15);
     text(republicans[j], rand3 , rand4);
     }else{
      textSize(10);
      text(republicans[j], rand3 , rand4);
  }
     }
   }
}
}
