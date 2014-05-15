/*
-The "units" toggle is for reference only, the app only exports DXF's in mm.
-The DXFs export mirrored along the X axis. This is because in Processing positive Y is toward the bottom of the screen, 
     while in CAD programs positive Y is toward the top of the screen.
*/

String table_Length_mm,table_Width_mm, layer, savePath, fileName;
String typing = "";
String saved = "";
float material_Thickness,sniglet_Radius,constrained_Ratio,dowel_Diameter,dowel_Radius;
float lengthC,widthC,matC,heightC;
int table_Length,table_Width,table_Height,props,kit_Count,record_Count,recordTextAlpha,saveCount;
float line_x1,line_y1,line_x2,line_y2,arc_x,arc_y,new_start,new_end,circ_x,circ_y;
int tick = 20;
int division_Min = 800;
boolean preRecord,record,record_Popup,lock_Proportion,constrain_Ratio,dowel_Holes,sniglet_Off,pencil_Cup,grommets,peg_Kit,foot_Kit,trigger,oneLoop;
PrintWriter output;
PFont font;
color black,white,gray,orange,Blue;

boolean length_Mouse=false;
boolean width_Mouse=false;
boolean height_Mouse=false;
boolean m_T_Mouse=false;
boolean d_D_Mouse=false;
boolean s_R_Mouse=false;
boolean props_Mouse=false;
boolean u_Mouse=false;
boolean reset=false;
boolean start=false;
boolean loopy=false;
boolean popUp1=false;
boolean popUp2=false;
String units = "mm";

PImage kit_Text,save_Text,success_Text,close_Text;
PShape controlBack,controlBackinch,controlBackmm;


void setup() {
  
//   edit these variables \/  
  table_Length = 1600;         // X dimension, integer, in millimeters
  table_Width = 1000;          // Y dimension, integer, in millimeters
  table_Height = 750;          // Z dimension, integer, in millimeters
  sniglet_Radius = 5;          // Drill bit allowance radius, can have decimals, in millimeters
  material_Thickness=19.5;     // Sheet material thickness,   can have decimals, in millimeters
  dowel_Diameter=5;            // Fastener hole diameter,     can have decimals, in millimeters
//   edit these variable /\
  
  size(916,780);
  background(255);
  smooth();
  
  black = color(0);
  white = color(255);
  gray = color(180);
  orange = color(241,87,49);
  Blue = color(0,0,250);
  recordTextAlpha=255;
  
  font = loadFont("Akzidenz.vlw");
  textAlign(CENTER);
  
  constrained_Ratio = 1;
  props=2;
  dowel_Holes = true;
  sniglet_Off=true;
  pencil_Cup=false;
  grommets=false;
  record=false;
  record_Popup=false;
  trigger=false;
  layer = "default";
  frameRate(30); 

  lengthC=map(1600,600,2000,175+3,175+260-3);
  widthC=map(1000,600,2000,175+3,175+260-3);
  matC=map(19.5,10,30,618+3,618+144-3);
  
  controlBack=loadShape("data/control.svg");
  controlBackmm=loadShape("data/controlmm.svg");
  controlBackinch=loadShape("data/controlinch.svg");
  kit_Text=loadImage("data/kit_Text.png");
  save_Text=loadImage("data/save_Text.png");
  success_Text=loadImage("data/success_Text.png");
  close_Text=loadImage("data/close_Text.png");
}



void draw() {
  background(255);
  noFill();
  stroke(0);
  strokeWeight(2);
  
  recordPopUp();
  newControllers();
  
  dowel_Radius = dowel_Diameter/2;
  
  if(saveCount>0 && preRecord){
    trigger=true;
    record=false;
    preRecord=false;
  }
  
  pushMatrix();
  translate(width/2-((table_Length/2)*.2),height/2-62-((table_Width/2)*.2));
  scale(.2);
  
  if(record) {
    if (fileName == null) {
      record = false;
    }
    else {
      output = createWriter(fileName + ".dxf");
      writeHeader();
    }
  }

  tableTop();
  
  tableLeg(-200,0,table_Width,PI/2,"width");
  tableLeg(0,table_Width+200,table_Length,0,"length");
  tableLeg(table_Length+200,table_Width,table_Width,-PI/2,"width");
  tableLeg(table_Length,-200,table_Length,PI,"length");
  
  if(table_Length >= division_Min) {
    tableSupport(-50,0,table_Width,PI/2,"width");
    tableSupport(table_Length+50,table_Width,table_Width,-PI/2,"width");
  }
  if(table_Length < division_Min) {
    tableSupport(-50,0,table_Width,PI/2,"width");
  }
  if(table_Width >= division_Min) {
    tableSupport(0,table_Width+50,table_Length,0,"length");
    tableSupport(table_Length,-50,table_Length,PI,"length");
  }
  if(table_Width < division_Min) {
    tableSupport(0,table_Width+50,table_Length,0,"length");
  }
  
  tableFoot(-200-table_Height,-50,0);
  tableFoot(table_Length+50,-200-table_Height,PI/2);
  tableFoot(table_Length+200+table_Height,table_Width+50,PI);
  tableFoot(-50,table_Width+200+table_Height,-PI/2);
  
  if (record) {
    writeFooter();
    preRecord=false;
    record = false;
    saveCount ++;
  }
  
  dimensions();
  
  popMatrix();
  
  kitPopUps();
  proportion_boxes();
  
  if(trigger){
    pleaseClose();
  }
  
  if(preRecord){
    askForName();
  }
}

