void topSideJointOne (float centerX, float centerY, float rotation) {
  pushMatrix();
  translate(centerX,centerY);
  rotate(rotation);
  
  line(-material_Thickness/2,-50,material_Thickness/2+sniglet_Radius,-50);
  arc(material_Thickness/2+sniglet_Radius,-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(material_Thickness/2+sniglet_Radius,-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(material_Thickness/2,-50+sniglet_Radius*3,material_Thickness/2,-material_Thickness/2);
  
  line(material_Thickness/2,-material_Thickness/2,50-sniglet_Radius*3,-material_Thickness/2);
  arc(50-sniglet_Radius*3,-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(50-sniglet_Radius,-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,-material_Thickness/2-sniglet_Radius,50,material_Thickness/2+sniglet_Radius);
  arc(50-sniglet_Radius,material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(50-sniglet_Radius*3,material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(50-sniglet_Radius*3,material_Thickness/2,material_Thickness/2,material_Thickness/2);
  
  line(material_Thickness/2,material_Thickness/2,material_Thickness/2,50-sniglet_Radius*3);
  arc(material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(material_Thickness/2+sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(material_Thickness/2+sniglet_Radius,50,-material_Thickness/2,50);
  
  popMatrix();
  
  if(record){
    setLayer("Outside Cut");
    writeLine(-material_Thickness/2,-50,material_Thickness/2+sniglet_Radius,-50,centerX,centerY,rotation);
    writeArc(material_Thickness/2+sniglet_Radius,-50+sniglet_Radius,-PI/2,PI/2,centerX,centerY,rotation,sniglet_Radius);
    writeArc(material_Thickness/2+sniglet_Radius,-50+sniglet_Radius*3,PI,PI+PI/2,centerX,centerY,rotation,sniglet_Radius);
    writeLine(material_Thickness/2,-50+sniglet_Radius*3,material_Thickness/2,-material_Thickness/2,centerX,centerY,rotation);
    
    writeLine(material_Thickness/2,-material_Thickness/2,50-sniglet_Radius*3,-material_Thickness/2,centerX,centerY,rotation);
    writeArc(50-sniglet_Radius*3,-material_Thickness/2-sniglet_Radius,0,PI/2,centerX,centerY,rotation,sniglet_Radius);
    writeArc(50-sniglet_Radius,-material_Thickness/2-sniglet_Radius,PI,TWO_PI,centerX,centerY,rotation,sniglet_Radius);
    writeLine(50,-material_Thickness/2-sniglet_Radius,50,material_Thickness/2+sniglet_Radius,centerX,centerY,rotation);
    writeArc(50-sniglet_Radius,material_Thickness/2+sniglet_Radius,0,PI,centerX,centerY,rotation,sniglet_Radius);
    writeArc(50-sniglet_Radius*3,material_Thickness/2+sniglet_Radius,-PI/2,0,centerX,centerY,rotation,sniglet_Radius);
    writeLine(50-sniglet_Radius*3,material_Thickness/2,material_Thickness/2,material_Thickness/2,centerX,centerY,rotation);
    
    writeLine(material_Thickness/2,material_Thickness/2,material_Thickness/2,50-sniglet_Radius*3,centerX,centerY,rotation);
    writeArc(material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,PI/2,PI,centerX,centerY,rotation,sniglet_Radius);
    writeArc(material_Thickness/2+sniglet_Radius,50-sniglet_Radius,-PI/2,PI/2,centerX,centerY,rotation,sniglet_Radius);
    writeLine(material_Thickness/2+sniglet_Radius,50,-material_Thickness/2,50,centerX,centerY,rotation);
  }
}

void topSideJointTwo (float centerX, float centerY, float rotation) {
  pushMatrix();
  translate(centerX,centerY);
  rotate(rotation);
  
  line(-material_Thickness/2,-50,material_Thickness/2,-50);
  arc(material_Thickness/2,-material_Thickness/2,100-material_Thickness,100-material_Thickness,-PI/2,0);
  line(50,-material_Thickness/2,50,material_Thickness/2);
  arc(material_Thickness/2,material_Thickness/2,100-material_Thickness,100-material_Thickness,0,PI/2);
  line(material_Thickness/2,50,-material_Thickness/2,50);
  
  popMatrix();
  
  if(record){
    writeLine(-material_Thickness/2,-50,material_Thickness/2,-50,centerX,centerY,rotation);
    writeArc(material_Thickness/2,-material_Thickness/2,-PI/2,0,centerX,centerY,rotation,(100-material_Thickness)/2);
    writeLine(50,-material_Thickness/2,50,material_Thickness/2,centerX,centerY,rotation);
    writeArc(material_Thickness/2,material_Thickness/2,0,PI/2,centerX,centerY,rotation,(100-material_Thickness)/2);
    writeLine(material_Thickness/2,50,-material_Thickness/2,50,centerX,centerY,rotation);
  }
}
