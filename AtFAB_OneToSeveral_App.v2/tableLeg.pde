void tableLeg(float cornerX, float cornerY, float leg_Length, float rotation, String widthOrLength) {
  pushMatrix();
  translate(cornerX,cornerY);
  rotate(rotation);
  if((table_Width >= division_Min && widthOrLength == "width") || (table_Length >= division_Min && widthOrLength == "length")) {
    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(leg_Length/3,75,dowel_Diameter,dowel_Diameter);
      ellipse(leg_Length*2/3,75,dowel_Diameter,dowel_Diameter);
      ellipse(material_Thickness/2,(100-material_Thickness)/2+material_Thickness,dowel_Diameter,dowel_Diameter);
      ellipse(material_Thickness/2,100+((table_Height-100)*3/4),dowel_Diameter,dowel_Diameter);
      ellipse(leg_Length-material_Thickness/2,100+((table_Height-100)/4),dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(leg_Length/3,75,cornerX,cornerY,rotation);
        writeCircle(leg_Length*2/3,75,cornerX,cornerY,rotation);
        writeCircle(material_Thickness/2,(100-material_Thickness)/2+material_Thickness,cornerX,cornerY,rotation);
        writeCircle(material_Thickness/2,100+((table_Height-100)*3/4),cornerX,cornerY,rotation);
        writeCircle(leg_Length-material_Thickness/2,100+((table_Height-100)/4),cornerX,cornerY,rotation);
      }
    }
    line(0,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness);
    arc(leg_Length/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
    arc(leg_Length/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    line(leg_Length/3-50,material_Thickness+sniglet_Radius,leg_Length/3-50,0);
    line(leg_Length/3-50,0,leg_Length/3-material_Thickness/2,0);

    line(leg_Length/3-material_Thickness/2,0,leg_Length/3-material_Thickness/2,50-sniglet_Radius*3);
    arc(leg_Length/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
    arc(leg_Length/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
    line(leg_Length/3+material_Thickness/2+sniglet_Radius,50,leg_Length/3-material_Thickness/2-sniglet_Radius,50);
    arc(leg_Length/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
    arc(leg_Length/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
    line(leg_Length/3+material_Thickness/2,0,leg_Length/3+material_Thickness/2,50-sniglet_Radius*3);

    line(leg_Length/3+material_Thickness/2,0,leg_Length/3+50,0);
    line(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius);
    arc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    arc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
    line(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness);

    arc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
    arc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    line(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0);
    line(leg_Length*2/3-50,0,leg_Length*2/3-material_Thickness/2,0);

    line(leg_Length*2/3-material_Thickness/2,0,leg_Length*2/3-material_Thickness/2,50-sniglet_Radius*3);
    arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
    arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
    line(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50,leg_Length*2/3-material_Thickness/2-sniglet_Radius,50);
    arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
    arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
    line(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+material_Thickness/2,50-sniglet_Radius*3);

    line(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+50,0);
    line(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius);
    arc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    arc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
    line(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness,material_Thickness);
    if(record) {
      setLayer("Outside Cut");
      writeLine(0,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
      writeArc(leg_Length/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/3-50,material_Thickness+sniglet_Radius,leg_Length/3-50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length/3-50,0,leg_Length/3-material_Thickness/2,0,cornerX,cornerY,rotation);

      writeLine(leg_Length/3-material_Thickness/2,0,leg_Length/3-material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);
      writeArc(leg_Length/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/3+material_Thickness/2+sniglet_Radius,50,leg_Length/3-material_Thickness/2-sniglet_Radius,50,cornerX,cornerY,rotation);
      writeArc(leg_Length/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/3+material_Thickness/2,0,leg_Length/3+material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);

      writeLine(leg_Length/3+material_Thickness/2,0,leg_Length/3+50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
      writeArc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);

      writeArc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length*2/3-50,0,leg_Length*2/3-material_Thickness/2,0,cornerX,cornerY,rotation);

      writeLine(leg_Length*2/3-material_Thickness/2,0,leg_Length*2/3-material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);
      writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50,leg_Length*2/3-material_Thickness/2-sniglet_Radius,50,cornerX,cornerY,rotation);
      writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);

      writeLine(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
      writeArc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness,material_Thickness,cornerX,cornerY,rotation);
    }
  }

  if((table_Width < division_Min && widthOrLength == "width") || (table_Length < division_Min && widthOrLength == "length")) {
    line(0,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness);
    arc(leg_Length/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
    arc(leg_Length/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    line(leg_Length/2-50,material_Thickness+sniglet_Radius,leg_Length/2-50,0);
    line(leg_Length/2-50,0,leg_Length/2-material_Thickness/2,0);

    line(leg_Length/2-material_Thickness/2,0,leg_Length/2-material_Thickness/2,50-sniglet_Radius*3);
    arc(leg_Length/2-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
    arc(leg_Length/2-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
    line(leg_Length/2+material_Thickness/2+sniglet_Radius,50,leg_Length/2-material_Thickness/2-sniglet_Radius,50);
    arc(leg_Length/2+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
    arc(leg_Length/2+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
    line(leg_Length/2+material_Thickness/2,0,leg_Length/2+material_Thickness/2,50-sniglet_Radius*3);

    line(leg_Length/2+material_Thickness/2,0,leg_Length/2+50,0);
    line(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius);
    arc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    arc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
    line(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness,material_Thickness);

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
      writeArc(leg_Length/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/2-50,material_Thickness+sniglet_Radius,leg_Length/2-50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length/2-50,0,leg_Length/2-material_Thickness/2,0,cornerX,cornerY,rotation);

      writeLine(leg_Length/2-material_Thickness/2,0,leg_Length/2-material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);
      writeArc(leg_Length/2-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/2-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/2+material_Thickness/2+sniglet_Radius,50,leg_Length/2-material_Thickness/2-sniglet_Radius,50,cornerX,cornerY,rotation);
      writeArc(leg_Length/2+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/2+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/2+material_Thickness/2,0,leg_Length/2+material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);

      writeLine(leg_Length/2+material_Thickness/2,0,leg_Length/2+50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
      writeArc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness,material_Thickness,cornerX,cornerY,rotation);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(leg_Length/2,75,dowel_Diameter,dowel_Diameter);
      ellipse(material_Thickness/2,(100-material_Thickness)/2+material_Thickness,dowel_Diameter,dowel_Diameter);
      ellipse(material_Thickness/2,100+((table_Height-100)*3/4),dowel_Diameter,dowel_Diameter);
      ellipse(leg_Length-material_Thickness/2,100+((table_Height-100)/4),dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(leg_Length/2,75,cornerX,cornerY,rotation);
        writeCircle(material_Thickness/2,(100-material_Thickness)/2+material_Thickness,cornerX,cornerY,rotation);
        writeCircle(material_Thickness/2,100+((table_Height-100)*3/4),cornerX,cornerY,rotation);
        writeCircle(leg_Length-material_Thickness/2,100+((table_Height-100)/4),cornerX,cornerY,rotation);
      }
    }
  }
  //top line/\



  //sides and bottom\/

  line(leg_Length-material_Thickness,material_Thickness,leg_Length-material_Thickness,100-sniglet_Radius*3);
  arc(leg_Length-material_Thickness-sniglet_Radius,100-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  arc(leg_Length-material_Thickness-sniglet_Radius,100-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  line(leg_Length-material_Thickness-sniglet_Radius,100,leg_Length,100);
  line(leg_Length,100,leg_Length,100+((table_Height-100)/2) );
  line(leg_Length,100+((table_Height-100)/2),leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2));
  arc(leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2)+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2)+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
  line(leg_Length-material_Thickness,100+((table_Height-100)/2)+sniglet_Radius*3,leg_Length-material_Thickness,table_Height);
  
  line(leg_Length-material_Thickness,table_Height,leg_Length-50,table_Height);
  line(leg_Length-50,table_Height,leg_Length-50,table_Height-material_Thickness-sniglet_Radius);
  arc(leg_Length-50-sniglet_Radius,table_Height-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  arc(leg_Length-50-sniglet_Radius*3,table_Height-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
  line(leg_Length-50-sniglet_Radius*3,table_Height-material_Thickness,leg_Length-100,table_Height-material_Thickness);

  line(leg_Length-100,table_Height-material_Thickness,leg_Length-100,100);
  
//  line(350,100,leg_Length-100,100);
//  line(100,table_Height-material_Thickness,350,100);
  
//  line(min(350,leg_Length/3),100,leg_Length-100,100);
//  line(100,table_Height-material_Thickness,min(350,leg_Length/3),100);
  
//  line(max(constrain(leg_Length/6,300,1000),constrain(leg_Length/3,0,400)),100,leg_Length-100,100);
//  line(100,table_Height-material_Thickness,max(constrain(leg_Length/6,300,1000),constrain(leg_Length/3,0,400)),100);
  
   if((table_Width >= division_Min && table_Width<=1200 && widthOrLength == "width") || (table_Length >= division_Min && table_Length<=1200 && widthOrLength == "length")) {
    line(leg_Length/3,100,leg_Length-100,100);
    line(100,table_Height-material_Thickness,leg_Length/3,100);
    if(record) {
      setLayer("Outside Cut");
      writeLine(leg_Length/3,100,leg_Length-100,100,cornerX,cornerY,rotation);
      writeLine(100,table_Height-material_Thickness,leg_Length/3,100,cornerX,cornerY,rotation);
    }
   }
   else if((table_Width >= division_Min && table_Width>1200 && widthOrLength == "width") || (table_Length >= division_Min && table_Length>1200 && widthOrLength == "length")){
     line(leg_Length/6,100,leg_Length-100,100);
     line(100,table_Height-material_Thickness,leg_Length/6,100);
     if(record) {
      setLayer("Outside Cut");
      writeLine(leg_Length/6,100,leg_Length-100,100,cornerX,cornerY,rotation);
      writeLine(100,table_Height-material_Thickness,leg_Length/6,100,cornerX,cornerY,rotation);
    }
   }
  
  if((table_Width < division_Min && widthOrLength == "width") || (table_Length < division_Min && widthOrLength == "length")) {
    line(leg_Length/2,100,leg_Length-100,100);
    line(100,table_Height-material_Thickness,leg_Length/2,100);
    if(record) {
      setLayer("Outside Cut");
      writeLine(leg_Length/2,100,leg_Length-100,100,cornerX,cornerY,rotation);
      writeLine(100,table_Height-material_Thickness,leg_Length/2,100,cornerX,cornerY,rotation);
    }
  }
  
  line(50+sniglet_Radius*3,table_Height-material_Thickness,100,table_Height-material_Thickness);
  arc(50+sniglet_Radius*3,table_Height-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  arc(50+sniglet_Radius,table_Height-material_Thickness-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,TWO_PI);
  line(50,table_Height,50,table_Height-material_Thickness-sniglet_Radius);
  line(0,table_Height,50,table_Height);

  line(0,100+((table_Height-100)/2),0,table_Height);
  line(material_Thickness+sniglet_Radius,100+((table_Height-100)/2),0,100+((table_Height-100)/2));
  arc(material_Thickness+sniglet_Radius,100+((table_Height-100)/2)-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  arc(material_Thickness+sniglet_Radius,100+((table_Height-100)/2)-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
  line(material_Thickness,100+sniglet_Radius*3,material_Thickness,100+((table_Height-100)/2)-sniglet_Radius*3);
  arc(material_Thickness+sniglet_Radius,100+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(material_Thickness+sniglet_Radius,100+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(0,100,material_Thickness+sniglet_Radius,100);
  line(0,material_Thickness,0,100);

  if(record) {
    setLayer("Outside Cut");
    writeLine(leg_Length-material_Thickness,material_Thickness,leg_Length-material_Thickness,100-sniglet_Radius*3,cornerX,cornerY,rotation);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,100-sniglet_Radius*3,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,100-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(leg_Length-material_Thickness-sniglet_Radius,100,leg_Length,100,cornerX,cornerY,rotation);
    writeLine(leg_Length,100,leg_Length,100+((table_Height-100)/2),cornerX,cornerY,rotation);
    writeLine(leg_Length,100+((table_Height-100)/2),leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2),cornerX,cornerY,rotation);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2)+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,100+((table_Height-100)/2)+sniglet_Radius*3,PI+PI/2,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(leg_Length-material_Thickness,100+((table_Height-100)/2)+sniglet_Radius*3,leg_Length-material_Thickness,table_Height,cornerX,cornerY,rotation);
    writeLine(leg_Length-material_Thickness,table_Height,leg_Length-50,table_Height,cornerX,cornerY,rotation);
    writeLine(leg_Length-50,table_Height,leg_Length-50,table_Height-material_Thickness-sniglet_Radius,cornerX,cornerY,rotation);

    writeArc(leg_Length-50-sniglet_Radius,table_Height-material_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(leg_Length-50-sniglet_Radius*3,table_Height-material_Thickness-sniglet_Radius,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(leg_Length-50-sniglet_Radius*3,table_Height-material_Thickness,leg_Length-100,table_Height-material_Thickness,cornerX,cornerY,rotation);



    writeLine(leg_Length-100,table_Height-material_Thickness,leg_Length-100,100,cornerX,cornerY,rotation);

//    writeLine(350,100,leg_Length-100,100,cornerX,cornerY,rotation);
//    writeLine(100,table_Height-material_Thickness,350,100,cornerX,cornerY,rotation);



    writeLine(50+sniglet_Radius*3,table_Height-material_Thickness,100,table_Height-material_Thickness,cornerX,cornerY,rotation);
    writeArc(50+sniglet_Radius*3,table_Height-material_Thickness-sniglet_Radius,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(50+sniglet_Radius,table_Height-material_Thickness-sniglet_Radius,PI,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);

    writeLine(50,table_Height,50,table_Height-material_Thickness-sniglet_Radius,cornerX,cornerY,rotation);
    writeLine(0,table_Height,50,table_Height,cornerX,cornerY,rotation);
    writeLine(0,100+((table_Height-100)/2),0,table_Height,cornerX,cornerY,rotation);
    writeLine(material_Thickness+sniglet_Radius,100+((table_Height-100)/2),0,100+((table_Height-100)/2),cornerX,cornerY,rotation);
    writeArc(material_Thickness+sniglet_Radius,100+((table_Height-100)/2)-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(material_Thickness+sniglet_Radius,100+((table_Height-100)/2)-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(material_Thickness,100+sniglet_Radius*3,material_Thickness,100+((table_Height-100)/2)-sniglet_Radius*3,cornerX,cornerY,rotation);
    writeArc(material_Thickness+sniglet_Radius,100+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(material_Thickness+sniglet_Radius,100+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(0,100,material_Thickness+sniglet_Radius,100,cornerX,cornerY,rotation);
    writeLine(0,material_Thickness,0,100,cornerX,cornerY,rotation);
  }

  popMatrix();
}

