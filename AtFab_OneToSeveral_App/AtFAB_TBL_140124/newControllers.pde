void newControllers() {
  tint(255);
  shape(controlBack, 0,650);
  if(units=="mm"){
    shape(controlBackmm,0,650);
  }
  if(units=="inches"){
    shape(controlBackinch,0,650);
  }
  stroke(0);

  noStroke();
  fill(white);
  rect(320,735,70,40);
  
  widthC=map(table_Length,600,2000,175+3,175+260-3);                    
  fill(white);
  rect(widthC-6,681+5-3,12,6);
  fill(orange);
  ellipse(widthC,681+5,3,3);
  
  heightC=map(table_Width,600,2000,175+3,175+260-3);
  fill(white);
  rect(heightC-6,695+5-3,12,6);
  fill(orange);
  ellipse(heightC,695+5,3,3);
  
  matC=map(material_Thickness,10,30,618+3,618+144-3);
  fill(white);
  rect(matC-6,707+5-3,12,6);
  fill(orange);
  ellipse(matC,707+5,3,3);
  
  fill(0);
  if(table_Height==750){
    rect(175,748,50/2,10);
  }
  if(table_Height==900){
    rect(200,748,25,10);
  }
  
  noFill();
  stroke(0);
  strokeWeight(.75);
  rect(175,748,50,10);//table_Height outline
  rect(250,748,50,10);//units outline
  noStroke();
  
  if(!dowel_Holes && mouseX>=636 && mouseX<=636+48 && mouseY>=748 && mouseY<=748+10 && mousePressed){
    dowel_Holes=true;
  }
  
  if(dowel_Diameter==3){
    fill(0);
    rect(570+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  if(dowel_Diameter==5){
    fill(0);
    rect(570+50/3+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  if(dowel_Diameter==7){
    fill(0);
    rect(570+50*2/3+65,748,50/3,10);
    fill(gray);
    ellipse(559+65,748+5,12,12);
  }
  
  if(!dowel_Holes){
    fill(orange);
    ellipse(559+65,748+5,12,12);
    dowel_Diameter=0;
  }
  if(dowel_Holes && mouseX>=618 && mouseX<=618+12 && mouseY>=747 && mouseY<=747+12 && mousePressed){
    dowel_Diameter=5;
  }
  
  noFill();
  stroke(0);
  strokeWeight(.75);
  rect(635,748,49,10);
  rect(635+78,748,49,10);
  
  noStroke();
  
  if(!sniglet_Off && mouseX>=714 && mouseX<=714+48 && mouseY>=748 && mouseY<=748+10 && mousePressed){
    sniglet_Off=true;
  }
  
  if(sniglet_Radius==3){
    fill(0);
    rect(570+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  if(sniglet_Radius==5){
    fill(0);
    rect(570+50/3+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  if(sniglet_Radius==7){
    fill(0);
    rect(570+50*2/3+65+78,748,50/3,10);
    fill(gray);
    ellipse(559+65+78,748+5,12,12);
  }
  
  if(!sniglet_Off){
    fill(orange);
    ellipse(559+65+78,748+5,12,12);
    sniglet_Radius=0;
  }
  if(sniglet_Off && mouseX>=696 && mouseX<=696+12 && mouseY>=747 && mouseY<=747+12 && mousePressed){
    sniglet_Radius=5;
  }
  
  noStroke();
  
  if(props==2){
    fill(orange);
    ellipse(445+12,686,12,12);
    fill(gray);
    ellipse(445+12,686+19,12,12);
    ellipse(445+12,686+38,12,12);
  }
  if(props==1){
    fill(orange);
    ellipse(445+12,686+19,12,12);
    fill(gray);
    ellipse(445+12,686,12,12);
    ellipse(445+12,686+38,12,12);
  }
  if(props==0){
    fill(orange);
    ellipse(445+12,686+38,12,12);
    fill(gray);
    ellipse(445+12,686,12,12);
    ellipse(445+12,686+19,12,12);
  }
  if(pencil_Cup){
    fill(orange);
    ellipse(789+6,686,12,12);
  }
  if(!pencil_Cup){
    fill(gray);
    ellipse(789+6,686,12,12);
  }
  if(grommets){
    fill(orange);
    ellipse(789+6,686+19,12,12);
  }
  if(!grommets){
    fill(gray);
    ellipse(789+6,686+19,12,12);
  }
  if(peg_Kit){
    fill(orange);
    ellipse(789+6,686+38,12,12);
  }
  if(!peg_Kit){
    fill(gray);
    ellipse(789+6,686+38,12,12);
  }
  if(foot_Kit){
    fill(orange);
    ellipse(789+6,686+57,12,12);
  }
  if(!foot_Kit){
    fill(gray);
    ellipse(789+6,686+57,12,12);
  }
  
  if(units == "mm"){
    fill(black);
    rect(250,748,50/2,10);
  }
  if(units == "inches"){
    fill(black);
    rect(275,748,25,10);
  }
  
  noFill();
  stroke(0);
  
  
  // unit conversion
  noStroke();
  fill(orange);
  textFont(font, 18);
  textAlign(LEFT);
  if(units=="mm"){
    text(table_Length,130,690);
    text(table_Width,130,710);
    text(table_Height,130,752);
    text((nf(material_Thickness,1,1)),614,686);
  }
  if(units=="inches"){
    text(int(table_Length/25.4),130,690);
    text(int(table_Width/25.4),130,710);
    text(int(table_Height/25.4),130,752);
    text((nf(material_Thickness/25.4,2,2)),614,686);
  }

  
  fill(black);
  textFont(font,8);
  
  
  textAlign(CENTER);
  strokeWeight(2);
  
  
  
  if(props==2){
    lock_Proportion=false;
    constrain_Ratio=false;
  }
  if(props==1){
    lock_Proportion=true;
    constrain_Ratio=false;
  }
  if(props==0){
    lock_Proportion=false;
    constrain_Ratio=true;
  }
  
  if(mouseX>=250 && mouseX<=300 && mouseY>=748 && mouseY<=758 && mousePressed && start==false) {
    if(mousePressed){
      u_Mouse=true;
    }
  }
  if(!mousePressed){
    u_Mouse=false;
  }
  if(u_Mouse && mouseX<275){
    units="mm";
  }
  if(u_Mouse && mouseX>=275){
    units="inches";
  }
//units toggle
  
  if(mouseX>=175 && mouseX<=175+260 && mouseY>=681 && mouseY<=681+10 && start==false) {
    if(mousePressed==true) {
      length_Mouse=true;
    }
  }
  if(mousePressed==false) {
    length_Mouse=false;
  }
  if(length_Mouse == true) {
    table_Length = round((constrain(int(map(mouseX,175,175+260-5,600,2000)),600,2000))/5)*5;
  }
//table_Length

  if(mouseX>=175 && mouseX<=175+260 && mouseY>=695 && mouseY<=695+10 && start==false) {
    if(mousePressed==true) {
      width_Mouse=true;
    }
  }
  if(mousePressed==false) {
    width_Mouse=false;
  }
  if(width_Mouse == true) {
    table_Width = round((constrain(int(map(mouseX,175,175+260-5,600,2000)),600,2000))/5)*5;
  }
//table_Width

  if(mouseX>=175 && mouseX<=175+50 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      height_Mouse=true;
    }
  }
  if(mousePressed==false) {
    height_Mouse=false;
  }
  if(height_Mouse == true) {
    table_Height = round((constrain(int(map(mouseX,175,175+50-25,750,900)),750,900))/150)*150;
  }
//table_Height

  if(mouseX>=618 && mouseX<=618+144 && mouseY>=707 && mouseY<=707+10 && start==false) {
    if(mousePressed==true) {
      m_T_Mouse=true;
    }
  }
  if(mousePressed==false) {
    m_T_Mouse=false;
  }
  if(m_T_Mouse == true) {
    material_Thickness = round(constrain(map(mouseX,618,618+144-5,10,30),10,30)/.5)*.5;
  }
//material_Thickness

  if(mouseX>=636 && mouseX<=636+48 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      d_D_Mouse=true;
    }
  }
  if(mousePressed==false) {
    d_D_Mouse=false;
  }
  if(d_D_Mouse == true) {
    dowel_Diameter = round(constrain(map(mouseX,636,636+48-16,3,7),3,7)/2)*2-1;
  }
//("dowel_Diameter",3,7,5,  636,748,48,10);

  if(mouseX>=618 && mouseX<=618+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !reset && start==false) { 
    dowel_Holes=!dowel_Holes;
    reset=true;
  }
//dowel_Holes

  if(mouseX>=714 && mouseX<=714+48 && mouseY>=748 && mouseY<=748+10 && start==false) {
    if(mousePressed==true) {
      s_R_Mouse=true;
    }
  }
  if(mousePressed==false) {
    s_R_Mouse=false;
  }
  if(s_R_Mouse == true) {
    sniglet_Radius = round(constrain(map(mouseX,714,714+48-16,3,7),3,7)/2)*2-1;
  }
//sniglet_Radius

if(mouseX>=696 && mouseX<=696+12 && mouseY>=747 && mouseY<=747+12 && mousePressed && !reset && start==false) { 
  sniglet_Off=!sniglet_Off;
  reset=true;
  }
//sniglet_Off

  if(mouseX>=451 && mouseX<=451+12 && mouseY>=680 && mouseY<=680+50 && start==false) {
    if(mousePressed==true) {
      props_Mouse=true;
    }
  }
  if(mousePressed==false) {
    props_Mouse=false;
  }
  if(props_Mouse == true) {
    props = (constrain(int(map(mouseY,680+50,680+18,0,2)),0,2));
  }
//props

if(mouseX>=789 && mouseX<=789+12 && mouseY>=680 && mouseY<=680+12 && mousePressed && !reset && start==false) { 
  pencil_Cup=!pencil_Cup;
  reset=true;
  }
//pencil_Cup

if(mouseX>=789 && mouseX<=789+12 && mouseY>=699 && mouseY<=699+12 && mousePressed && !reset && start==false) { 
  grommets=!grommets;
  reset=true;
  }
//grommets

if(mouseX>=789 && mouseX<=789+12 && mouseY>=718 && mouseY<=718+12 && mousePressed && !reset && start==false) { 
  peg_Kit=!peg_Kit;
  reset=true;
  }
//peg_Kit

if(mouseX>=789 && mouseX<=789+12 && mouseY>=737 && mouseY<=737+12 && mousePressed && !reset && start==false) { 
  foot_Kit=!foot_Kit;
  reset=true;
  }
//foot_Kit

if(mouseX>=866 && mouseX<=866+43 && mouseY>=730 && mouseY<=730+43 && mousePressed && !reset && start==false) { 
  preRecord=true;
  reset=true;
  }
//record_Popup

  if(mousePressed){
    start=true;
  }
  loop();
  if(!loopy && !popUp1 &&!popUp2){
    noLoop();
  }
  
  
  testPiece(553,670);
  draw3D(68,height-5,.03);
  
}

