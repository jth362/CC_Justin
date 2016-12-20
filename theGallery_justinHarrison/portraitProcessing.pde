int k;
int portraitCount;
PImage cropPortrait;
PImage portrait;
String imageName;
int start;
int end;
int max;

void savePortrait(){
  saveFrame("/Users/justinharrison/Desktop/GitHub/CC_Justin/theGallery_justinHarrison/data/portrait" + portraitCount + ".jpg");
  portraitCount = portraitCount + 1;
  filenames.setInt(0, 0, portraitCount);
  saveTable(filenames, "data/fileNames.csv");
 
}