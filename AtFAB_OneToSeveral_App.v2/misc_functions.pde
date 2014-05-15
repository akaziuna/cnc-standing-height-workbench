void mousePressed(){
  loopy=true;
  loop();
}

void mouseReleased(){
  reset=false;
  start=false;
  loopy=false;
}

void askForName() {
  noStroke();
  fill(255,200);
  rect(770,441,140,50);
  image(save_Text,773,444);
  strokeWeight(1);
  stroke(0);
  fill(235,150);
  rect(777,495,130,25);
  noStroke();
  textFont(font,14);
  textAlign(RIGHT);
  strokeWeight(2);
  fill(orange);
  stroke(orange);
  text(typing,899,513);
  noFill();
  textAlign(CENTER);
  strokeWeight(2);
}



void pleaseClose(){
  fill(241,87,49);
  textFont(font,12);
  textAlign(LEFT);
  image(close_Text,790,600);
  noFill();
  textAlign(CENTER);
  record=false;
  preRecord=false;
}

void keyPressed(){
  if (key == '\n' && saveCount==0) {
    fileName = typing;
    typing = ""; 
  }
  if (key == BACKSPACE || key == DELETE){
    typing = typing.substring(0,max(0,typing.length()-1));
  }
  else {
    typing = typing + key; 
  }
}

void keyReleased(){
  if (key=='\n'){
    record=true;
    record_Popup=true;
  }
  loopy=true;
  loop();
  loopy=false;
}

void proportion_boxes() {
  if (constrain_Ratio) {
    table_Width = constrain(int(table_Length/1.618),600,2000);
  }
  
  if (!lock_Proportion) {
    constrained_Ratio = float(table_Length)/float(table_Width);
  }
  if(lock_Proportion) {
    table_Width = constrain(int(table_Length/constrained_Ratio),600,2000);
  }
  
  if(lock_Proportion || constrain_Ratio){
    noStroke();
    fill(255,127);
    rect(173,695+2,262,6);
    noFill();
    stroke(0);
  }
}

void draw3D(int x, int y, float scal) {
  
  stroke(0);
  strokeWeight(5);
  
  noFill();
  
  pushMatrix();
  translate(x,y);
  scale(scal);
  line(0,0,100/sqrt(2),-100/sqrt(2));
  line(0,0,-100/sqrt(2),-100/sqrt(2));
  line(0,0,0,-table_Height);
  line(0,-table_Height,table_Length/sqrt(2),-table_Length/sqrt(2)-table_Height);
  line(table_Length/sqrt(2),-table_Length/sqrt(2)-table_Height,table_Length/sqrt(2),-table_Length/sqrt(2));
  line(table_Length/sqrt(2),-table_Length/sqrt(2),table_Length/sqrt(2)-100/sqrt(2),-table_Length/sqrt(2)+100/sqrt(2));
  line(table_Length/sqrt(2)-100/sqrt(2),-table_Length/sqrt(2)+100/sqrt(2),
  table_Length/sqrt(2)-100/sqrt(2),-table_Length/sqrt(2)+100/sqrt(2)-table_Height+100);
  line(table_Length/sqrt(2)-100/sqrt(2),-table_Length/sqrt(2)+100/sqrt(2)-table_Height+100,350/sqrt(2),-350/sqrt(2)-table_Height+100);
  line(100/sqrt(2),-100/sqrt(2),350/sqrt(2),-350/sqrt(2)-table_Height+100);
  line(-100/sqrt(2),-100/sqrt(2),-100/sqrt(2),-100/sqrt(2)-table_Height+100);
  line(-100/sqrt(2),-100/sqrt(2)-table_Height+100,-table_Width/sqrt(2)+350/sqrt(2),-table_Width/sqrt(2)-table_Height+100+350/sqrt(2));
  line(0,-table_Height,-table_Width/sqrt(2),-table_Width/sqrt(2)-table_Height);
  line(-table_Width/sqrt(2)+350/sqrt(2),-table_Width/sqrt(2)-table_Height+100+350/sqrt(2),
  -table_Width/sqrt(2)+100/sqrt(2),-table_Width/sqrt(2)+100/sqrt(2));
  line(-table_Width/sqrt(2)+100/sqrt(2),-table_Width/sqrt(2)+100/sqrt(2),-table_Width/sqrt(2),-table_Width/sqrt(2));
  line(-table_Width/sqrt(2),-table_Width/sqrt(2),-table_Width/sqrt(2),-table_Width/sqrt(2)-table_Height);
  line(-table_Width/sqrt(2),-table_Width/sqrt(2)-table_Height,table_Length/sqrt(2)-table_Width/sqrt(2),-table_Height-table_Length/sqrt(2)-table_Width/sqrt(2));
  line(table_Length/sqrt(2),-table_Length/sqrt(2)-table_Height,table_Length/sqrt(2)-table_Width/sqrt(2),-table_Height-table_Length/sqrt(2)-table_Width/sqrt(2));
  popMatrix();
  
  strokeWeight(2);
}

void testPiece(float cornerX,float cornerY){
  pushMatrix();
  translate(cornerX+50,cornerY);
  scale(.5);
  rotate(PI/2);
  fill(255,230);
  noFill();
  strokeWeight(1);
  stroke(0);
  rect(0,0,200,100);
  ellipse(100,50-material_Thickness/2-material_Thickness,dowel_Diameter,dowel_Diameter);
  
  line(50,100,50,100-material_Thickness-sniglet_Radius);
  arc(50+sniglet_Radius,100-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(50+sniglet_Radius*3,100-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(50,100-material_Thickness,100-material_Thickness/2,100-material_Thickness);
  
  line(100-material_Thickness/2,100,100-material_Thickness/2,50-material_Thickness/2);
  arc(100-material_Thickness/2-sniglet_Radius,50-material_Thickness/2+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  arc(100-material_Thickness/2-sniglet_Radius,50-material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(100-material_Thickness/2-sniglet_Radius,50-material_Thickness/2,100+material_Thickness/2+sniglet_Radius,50-material_Thickness/2);
  arc(100+material_Thickness/2+sniglet_Radius,50-material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(100+material_Thickness/2+sniglet_Radius,50-material_Thickness/2+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(100+material_Thickness/2,50-material_Thickness/2,100+material_Thickness/2,100);
  
  line(100+material_Thickness/2,100-material_Thickness,150,100-material_Thickness);
  arc(150-sniglet_Radius*3,100-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(150-sniglet_Radius,100-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(150,100,150,100-material_Thickness-sniglet_Radius);
  
  popMatrix();
  
  strokeWeight(2);
}

void dimensions() {
  textFont(font, 64);
  if(length_Mouse==true) {
    stroke(124,162,165);
    line(0,table_Width/2,table_Length,table_Width/2);
    line(-tick,table_Width/2+tick,tick,table_Width/2-tick);
    line(table_Length-tick,table_Width/2+tick,table_Length+tick,table_Width/2-tick);
    fill(255,215);
    noStroke();
    rect(table_Length/2-150,table_Width/2-80,280,70);
    fill(124,162,165);
    if(units=="mm"){
      text(table_Length + " " + "mm", table_Length/2, table_Width/2-20);
    }
    if(units=="inches"){
      text(int(table_Length/25.4) + " " + "in", table_Length/2, table_Width/2-20);
    }
    noFill();
    stroke(0);
  }
  if(width_Mouse==true) {
    stroke(124,162,165);
    line(table_Length/2,0,table_Length/2,table_Width);
    line(table_Length/2-tick,tick,table_Length/2+tick,-tick);
    line(table_Length/2-tick,table_Width+tick,table_Length/2+tick,table_Width-tick);
    fill(255,215);
    noStroke();
    rect(table_Length/2+10,table_Width/2-60,250,100);
    fill(124,162,165);
    if(units=="mm"){
    text(table_Width + " " + "mm", table_Length/2+135, table_Width/2);
    }
    if(units=="inches"){
    text(int(table_Width/25.4) + " " + "in", table_Length/2+135, table_Width/2);
    }
    noFill();
    stroke(0);
  }
}

void kitPopUps(){ 
  noStroke();
  if(peg_Kit || foot_Kit || pencil_Cup){
    kit_Count ++;
    popUp2=true;
    if(kit_Count<=250){
      fill(255,127);
      rect(716-5,290-5,192,80);
      tint(255,255);
      image(kit_Text,738,290);
    }
    else if(kit_Count<=350){
      fill(255,127);
      rect(716-5,290-5,192,80);
      tint(255,255*(map(kit_Count,250,350,1,0)));
      image(kit_Text,738,290);
      tint(255,255);
    }
    else{
      kit_Count=0;
      pencil_Cup=false;
      peg_Kit=false;
      foot_Kit=false;
      popUp2=false;
    }
  }
  stroke(0);
}
void recordPopUp(){
  if(record_Popup){
    record_Count ++;
    popUp1=true;
    if(record_Count<=250){
      recordTextAlpha=255;
      image(success_Text,780,530);
    }
    else if(record_Count<=350){
      recordTextAlpha=int(map(record_Count,200,300,255,0));
      tint(255,255*(map(record_Count,250,350,1,0)));
      image(success_Text,780,530);
    }
    else{
      record_Count=0;
      record_Popup=false;
      popUp1=false;
    }
//    println(record_Count);
  }
  stroke(0);
}
