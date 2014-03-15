void tableFoot(float cornerX, float cornerY, float rotation) {
  pushMatrix();
  translate(cornerX,cornerY);
  rotate(rotation);

  if(dowel_Holes) {
    stroke(255,0,0);
    ellipse(75,-material_Thickness/2,dowel_Diameter,dowel_Diameter);
    ellipse(material_Thickness/2,-75,dowel_Diameter,dowel_Diameter);
    stroke(0);
    if(record) {
      setLayer("Dowel Holes");
      writeCircle(75,-material_Thickness/2,cornerX,cornerY,rotation);
      writeCircle(material_Thickness/2,-75,cornerX,cornerY,rotation);
    }
  }
  line(0,-50,material_Thickness+sniglet_Radius,-50);
  arc(material_Thickness+sniglet_Radius,-50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(material_Thickness+sniglet_Radius,-50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  line(material_Thickness,-50+sniglet_Radius*3,material_Thickness,-material_Thickness);

  line(material_Thickness,-material_Thickness,50-sniglet_Radius*3,-material_Thickness);
  arc(50-sniglet_Radius*3,-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(50-sniglet_Radius,-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,-material_Thickness-sniglet_Radius,50,0);

  line(50,0,100,0);
  line(100,0,100,-material_Thickness);
  line(100,-material_Thickness,material_Thickness,-100);
  line(material_Thickness,-100,0,-100);
  line(0,-100,0,-50);

  if(record) {
    setLayer("Outside Cut");
    writeLine(0,-50,material_Thickness+sniglet_Radius,-50,cornerX,cornerY,rotation);
    writeLine(material_Thickness,-50+sniglet_Radius*3,material_Thickness,-material_Thickness,cornerX,cornerY,rotation);
    writeLine(material_Thickness,-material_Thickness,50-sniglet_Radius*3,-material_Thickness,cornerX,cornerY,rotation);
    writeLine(50,-material_Thickness-sniglet_Radius,50,0,cornerX,cornerY,rotation);
    writeLine(50,0,100,0,cornerX,cornerY,rotation);
    writeLine(100,0,100,-material_Thickness,cornerX,cornerY,rotation);
    writeLine(100,-material_Thickness,material_Thickness,-100,cornerX,cornerY,rotation);
    writeLine(material_Thickness,-100,0,-100,cornerX,cornerY,rotation);
    writeLine(0,-100,0,-50,cornerX,cornerY,rotation);

    writeArc(material_Thickness+sniglet_Radius,-50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(material_Thickness+sniglet_Radius,-50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(50-sniglet_Radius*3,-material_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(50-sniglet_Radius,-material_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
  }
  popMatrix();
}

