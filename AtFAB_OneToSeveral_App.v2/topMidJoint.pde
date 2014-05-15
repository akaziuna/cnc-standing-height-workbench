void topMidJoint (float centerX, float centerY) {
  stroke(0,127,0);
  line(centerX-material_Thickness/2,centerY-material_Thickness/2,centerX-material_Thickness/2,centerY-50+sniglet_Radius*3);
  arc(centerX-material_Thickness/2-sniglet_Radius,centerY-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
  arc(centerX-material_Thickness/2-sniglet_Radius,centerY-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(centerX-material_Thickness/2-sniglet_Radius,centerY-50,centerX+material_Thickness/2+sniglet_Radius,centerY-50);
  arc(centerX+material_Thickness/2+sniglet_Radius,centerY-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(centerX+material_Thickness/2+sniglet_Radius,centerY-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(centerX+material_Thickness/2,centerY-50+sniglet_Radius*3,centerX+material_Thickness/2,centerY-material_Thickness/2);
  
  line(centerX+material_Thickness/2,centerY-material_Thickness/2,centerX+50-sniglet_Radius*3,centerY-material_Thickness/2);
  arc(centerX+50-sniglet_Radius*3,centerY-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(centerX+50-sniglet_Radius,centerY-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(centerX+50,centerY-material_Thickness/2-sniglet_Radius,centerX+50,centerY+material_Thickness/2+sniglet_Radius);
  arc(centerX+50-sniglet_Radius,centerY+material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  arc(centerX+50-sniglet_Radius*3,centerY+material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
  line(centerX+50-sniglet_Radius*3,centerY+material_Thickness/2,centerX+material_Thickness/2,centerY+material_Thickness/2);
  
  line(centerX+material_Thickness/2,centerY+material_Thickness/2,centerX+material_Thickness/2,centerY+50-sniglet_Radius*3);
  arc(centerX+material_Thickness/2+sniglet_Radius,centerY+50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(centerX+material_Thickness/2+sniglet_Radius,centerY+50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(centerX+material_Thickness/2+sniglet_Radius,centerY+50,centerX-material_Thickness/2-sniglet_Radius,centerY+50);
  arc(centerX-material_Thickness/2-sniglet_Radius,centerY+50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(centerX-material_Thickness/2-sniglet_Radius,centerY+50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(centerX-material_Thickness/2,centerY+50-sniglet_Radius*3,centerX-material_Thickness/2,centerY+material_Thickness/2);
  
  line(centerX-material_Thickness/2,centerY+material_Thickness/2,centerX-50+sniglet_Radius*3,centerY+material_Thickness/2);
  arc(centerX-50+sniglet_Radius*3,centerY+material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(centerX-50+sniglet_Radius,centerY+material_Thickness/2+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
  line(centerX-50,centerY+material_Thickness/2+sniglet_Radius,centerX-50,centerY-material_Thickness/2-sniglet_Radius);
  arc(centerX-50+sniglet_Radius,centerY-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(centerX-50+sniglet_Radius*3,centerY-material_Thickness/2-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(centerX-50+sniglet_Radius*3,centerY-material_Thickness/2,centerX-material_Thickness/2,centerY-material_Thickness/2);
  stroke(0);
  
  if(record){
    setLayer("Inside Cut");
    writeLine(centerX-material_Thickness/2,centerY-material_Thickness/2,centerX-material_Thickness/2,centerY-50+sniglet_Radius*3,0,0,0);
    writeArc(centerX-material_Thickness/2-sniglet_Radius,centerY-50+sniglet_Radius*3,PI+PI/2,TWO_PI,0,0,0,sniglet_Radius);
    writeArc(centerX-material_Thickness/2-sniglet_Radius,centerY-50+sniglet_Radius,PI/2,PI+PI/2,0,0,0,sniglet_Radius);
    writeLine(centerX-material_Thickness/2-sniglet_Radius,centerY-50,centerX+material_Thickness/2+sniglet_Radius,centerY-50,0,0,0);
    writeArc(centerX+material_Thickness/2+sniglet_Radius,centerY-50+sniglet_Radius,-PI/2,PI/2,0,0,0,sniglet_Radius);
    writeArc(centerX+material_Thickness/2+sniglet_Radius,centerY-50+sniglet_Radius*3,PI,PI+PI/2,0,0,0,sniglet_Radius);
    writeLine(centerX+material_Thickness/2,centerY-50+sniglet_Radius*3,centerX+material_Thickness/2,centerY-material_Thickness/2,0,0,0);
    
    writeLine(centerX+material_Thickness/2,centerY-material_Thickness/2,centerX+50-sniglet_Radius*3,centerY-material_Thickness/2,0,0,0);
    writeArc(centerX+50-sniglet_Radius*3,centerY-material_Thickness/2-sniglet_Radius,0,PI/2,0,0,0,sniglet_Radius);
    writeArc(centerX+50-sniglet_Radius,centerY-material_Thickness/2-sniglet_Radius,PI,TWO_PI,0,0,0,sniglet_Radius);
    writeLine(centerX+50,centerY-material_Thickness/2-sniglet_Radius,centerX+50,centerY+material_Thickness/2+sniglet_Radius,0,0,0);
    writeArc(centerX+50-sniglet_Radius,centerY+material_Thickness/2+sniglet_Radius,0,PI,0,0,0,sniglet_Radius);
    writeArc(centerX+50-sniglet_Radius*3,centerY+material_Thickness/2+sniglet_Radius,-PI/2,0,0,0,0,sniglet_Radius);
    writeLine(centerX+50-sniglet_Radius*3,centerY+material_Thickness/2,centerX+material_Thickness/2,centerY+material_Thickness/2,0,0,0);
    
    writeLine(centerX+material_Thickness/2,centerY+material_Thickness/2,centerX+material_Thickness/2,centerY+50-sniglet_Radius*3,0,0,0);
    writeArc(centerX+material_Thickness/2+sniglet_Radius,centerY+50-sniglet_Radius*3,PI/2,PI,0,0,0,sniglet_Radius);
    writeArc(centerX+material_Thickness/2+sniglet_Radius,centerY+50-sniglet_Radius,-PI/2,PI/2,0,0,0,sniglet_Radius);
    writeLine(centerX+material_Thickness/2+sniglet_Radius,centerY+50,centerX-material_Thickness/2-sniglet_Radius,centerY+50,0,0,0);
    writeArc(centerX-material_Thickness/2-sniglet_Radius,centerY+50-sniglet_Radius,PI/2,PI+PI/2,0,0,0,sniglet_Radius);
    writeArc(centerX-material_Thickness/2-sniglet_Radius,centerY+50-sniglet_Radius*3,0,PI/2,0,0,0,sniglet_Radius);
    writeLine(centerX-material_Thickness/2,centerY+50-sniglet_Radius*3,centerX-material_Thickness/2,centerY+material_Thickness/2,0,0,0);
    
    writeLine(centerX-material_Thickness/2,centerY+material_Thickness/2,centerX-50+sniglet_Radius*3,centerY+material_Thickness/2,0,0,0);
    writeArc(centerX-50+sniglet_Radius*3,centerY+material_Thickness/2+sniglet_Radius,PI,PI+PI/2,0,0,0,sniglet_Radius);
    writeArc(centerX-50+sniglet_Radius,centerY+material_Thickness/2+sniglet_Radius,0,PI,0,0,0,sniglet_Radius);
    writeLine(centerX-50,centerY+material_Thickness/2+sniglet_Radius,centerX-50,centerY-material_Thickness/2-sniglet_Radius,0,0,0);
    writeArc(centerX-50+sniglet_Radius,centerY-material_Thickness/2-sniglet_Radius,PI,TWO_PI,0,0,0,sniglet_Radius);
    writeArc(centerX-50+sniglet_Radius*3,centerY-material_Thickness/2-sniglet_Radius,PI/2,PI,0,0,0,sniglet_Radius);
    writeLine(centerX-50+sniglet_Radius*3,centerY-material_Thickness/2,centerX-material_Thickness/2,centerY-material_Thickness/2,0,0,0);
  }
}
