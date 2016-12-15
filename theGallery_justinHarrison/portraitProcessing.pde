int k;
int portraitCount;
PImage cropPortrait;
PImage portrait;
String imageName;
int start;
int end;

void savePortrait(){
  portraitCount = filenames.getInt(0,0);
  saveFrame("/Users/justinharrison/Desktop/GitHub/CC_Justin/theGallery_justinHarrison/data/portrait" + portraitCount + ".jpg");
  portraitCount = portraitCount + 1;
  filenames.setInt(0, 0, portraitCount);
  saveTable(filenames, "data/fileNames.csv");
  }
  
 void assignPortraits(){
  int max = filenames.getInt(0,0);
   start = int(random(0, max-10));
   end = start + 10;
   
for(int i = start; i < end; i++){
  if(i == start){
  portrait1 = loadImage("portrait" + i + ".jpg");
    cropPortrait = portrait1.get(360, 105, 350, 500);
    portrait1 = cropPortrait;
  }else if(i == start+1){
    portrait2 = loadImage("portrait" + i + ".jpg");
    cropPortrait = portrait2.get(360, 105, 350, 500);
    portrait2 = cropPortrait;
    }else if(i == start + 2){
     portrait3 = loadImage("portrait" + i + ".jpg");
     cropPortrait = portrait3.get(360, 105, 350, 500);
    portrait3 = cropPortrait;
    }else if(i == start + 3){
      portrait4 = loadImage("portrait" + i + ".jpg");
      cropPortrait = portrait4.get(360, 105, 350, 500);
    portrait4 = cropPortrait;
    }else if(i == start + 4){
      portrait5 = loadImage("portrait" + i + ".jpg");
      cropPortrait = portrait5.get(360, 105, 350, 500);
      portrait5 = cropPortrait;
    }else if(i == start + 5){
      portrait6 = loadImage("portrait" + i + ".jpg");
      cropPortrait = portrait6.get(360, 105, 350, 500);
      portrait6 = cropPortrait;
    }else if(i == start + 6){
      portrait7 = loadImage("portrait" + i + ".jpg");
      cropPortrait = portrait7.get(360, 105, 350, 500);
      portrait7 = cropPortrait;
    }else if(i == start + 7){
      portrait8 = loadImage("portrait" + i + ".jpg");
      cropPortrait = portrait8.get(360, 105, 350, 500);
      portrait8 = cropPortrait;
    }else if(i == start + 8){
   portrait9 = loadImage("portrait" + i + ".jpg");
    cropPortrait = portrait9.get(360, 105, 350, 500);
    portrait9 = cropPortrait;
    }else if(i == start + 9){
    portrait10 = loadImage("portrait" + i + ".jpg");
    cropPortrait = portrait10.get(360, 105, 350, 500);
    portrait10 = cropPortrait;
}
}
}