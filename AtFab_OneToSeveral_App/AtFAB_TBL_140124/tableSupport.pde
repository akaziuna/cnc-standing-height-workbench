void tableSupport(float cornerX, float cornerY, float leg_Length, float rotation, String widthOrLength) {
  pushMatrix();
  translate(cornerX,cornerY);
  rotate(rotation);

  if(widthOrLength == "width") {
    line(0,0,material_Thickness/2+50,0);
    line(material_Thickness/2+50,0,material_Thickness/2+50,material_Thickness+sniglet_Radius);
    arc(material_Thickness/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    arc(material_Thickness/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,material_Thickness/2+50,0,cornerX,cornerY,rotation);
      writeLine(material_Thickness/2+50,0,material_Thickness/2+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
      writeArc(material_Thickness/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(material_Thickness/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    }

    if(table_Width >= division_Min) {
      line(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness);
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

      line(leg_Length*2/3-50,0,leg_Length*2/3-material_Thickness/2,0);
      line(leg_Length*2/3-material_Thickness/2,0,leg_Length*2/3-material_Thickness/2,50-sniglet_Radius*3);
      arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,0,PI/2);
      arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50,leg_Length*2/3-material_Thickness/2-sniglet_Radius,50);
      arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI);
      line(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+material_Thickness/2,50-sniglet_Radius*3);
      line(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+50,0);

      line(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius);
      arc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness);
      arc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      line(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0);

      line(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius);
      arc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
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

        writeLine(leg_Length*2/3-50,0,leg_Length*2/3-material_Thickness/2,0,cornerX,cornerY,rotation);
        writeLine(leg_Length*2/3-material_Thickness/2,0,leg_Length*2/3-material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius*3,0,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50-sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50,leg_Length*2/3-material_Thickness/2-sniglet_Radius,50,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50-sniglet_Radius*3,PI/2,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+material_Thickness/2,50-sniglet_Radius*3,cornerX,cornerY,rotation);
        writeLine(leg_Length*2/3+material_Thickness/2,0,leg_Length*2/3+50,0,cornerX,cornerY,rotation);

        writeLine(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0,cornerX,cornerY,rotation);

        writeLine(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
      }
    }
    if(table_Width < division_Min) {
      line(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness);
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
      line(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness);
      line(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius);
      arc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
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
        writeLine(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
        writeLine(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
      }
    }
    arc(leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
    arc(leg_Length-material_Thickness/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    line(leg_Length-material_Thickness/2-50,material_Thickness+sniglet_Radius,leg_Length-material_Thickness/2-50,0);
    line(leg_Length-material_Thickness/2-50,0,leg_Length,0);

    if(record) {
      setLayer("Outside Cut");
      writeArc(leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length-material_Thickness/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length-material_Thickness/2-50,material_Thickness+sniglet_Radius,leg_Length-material_Thickness/2-50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length-material_Thickness/2-50,0,leg_Length,0,cornerX,cornerY,rotation);
    }
  }

  if(widthOrLength == "length") {
    line(0,0,material_Thickness/2+50,0);
    line(material_Thickness/2+50,0,material_Thickness/2+50,material_Thickness+sniglet_Radius);
    arc(material_Thickness/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    arc(material_Thickness/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,material_Thickness/2+50,0,cornerX,cornerY,rotation);
      writeLine(material_Thickness/2+50,0,material_Thickness/2+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
      writeArc(material_Thickness/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(material_Thickness/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    }

    if(table_Length >= division_Min) {
      line(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness);
      arc(leg_Length/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(leg_Length/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      line(leg_Length/3-50,material_Thickness+sniglet_Radius,leg_Length/3-50,0);
      line(leg_Length/3-50,0,leg_Length/3+50,0);
      line(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius);
      arc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness);
      arc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      line(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0);
      line(leg_Length*2/3-50,0,leg_Length*2/3+50,0);
      line(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius);
      arc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
        writeArc(leg_Length/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/3-50,material_Thickness+sniglet_Radius,leg_Length/3-50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length/3-50,0,leg_Length/3+50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length/3+50,0,leg_Length/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/3+50+sniglet_Radius*3,material_Thickness,leg_Length*2/3-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3-50,material_Thickness+sniglet_Radius,leg_Length*2/3-50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length*2/3-50,0,leg_Length*2/3+50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length*2/3+50,0,leg_Length*2/3+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
      }
    }
    if(table_Length < division_Min) {
      line(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness);
      arc(leg_Length/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
      arc(leg_Length/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      line(leg_Length/2-50,material_Thickness+sniglet_Radius,leg_Length/2-50,0);
      line(leg_Length/2-50,0,leg_Length/2+50,0);
      line(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius);
      arc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
      arc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness/2+50+sniglet_Radius*3,material_Thickness,leg_Length/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
        writeArc(leg_Length/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/2-50,material_Thickness+sniglet_Radius,leg_Length/2-50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length/2-50,0,leg_Length/2+50,0,cornerX,cornerY,rotation);
        writeLine(leg_Length/2+50,0,leg_Length/2+50,material_Thickness+sniglet_Radius,cornerX,cornerY,rotation);
        writeArc(leg_Length/2+50+sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/2+50+sniglet_Radius*3,material_Thickness+sniglet_Radius,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/2+50+sniglet_Radius*3,material_Thickness,leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness,cornerX,cornerY,rotation);
      }
    }
    arc(leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,0);
    arc(leg_Length-material_Thickness/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,0,PI);
    line(leg_Length-material_Thickness/2-50,material_Thickness+sniglet_Radius,leg_Length-material_Thickness/2-50,0);
    line(leg_Length-material_Thickness/2-50,0,leg_Length,0);

    if(record) {
      setLayer("Outside Cut");
      writeArc(leg_Length-material_Thickness/2-50-sniglet_Radius*3,material_Thickness+sniglet_Radius,-PI/2,0,cornerX,cornerY,rotation,sniglet_Radius);
      writeArc(leg_Length-material_Thickness/2-50-sniglet_Radius,material_Thickness+sniglet_Radius,0,PI,cornerX,cornerY,rotation,sniglet_Radius);
      writeLine(leg_Length-material_Thickness/2-50,material_Thickness+sniglet_Radius,leg_Length-material_Thickness/2-50,0,cornerX,cornerY,rotation);
      writeLine(leg_Length-material_Thickness/2-50,0,leg_Length,0,cornerX,cornerY,rotation);
    }
  }

  //top line/\
  
  //sides and bottom\/

  line(leg_Length,0,leg_Length,50);
  line(leg_Length,50,leg_Length-material_Thickness-sniglet_Radius,50);
  arc(leg_Length-material_Thickness-sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
  arc(leg_Length-material_Thickness-sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
  line(leg_Length-material_Thickness,50+sniglet_Radius*3,leg_Length-material_Thickness,100);

  if(record) {
    setLayer("Outside Cut");
    writeLine(leg_Length,0,leg_Length,50,cornerX,cornerY,rotation);
    writeLine(leg_Length,50,leg_Length-material_Thickness-sniglet_Radius,50,cornerX,cornerY,rotation);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(leg_Length-material_Thickness-sniglet_Radius,50+sniglet_Radius*3,PI+PI/2,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(leg_Length-material_Thickness,50+sniglet_Radius*3,leg_Length-material_Thickness,100,cornerX,cornerY,rotation);
  }

  if(widthOrLength == "width") {
    line(material_Thickness,100,leg_Length-material_Thickness,100);
    if(record) {
      setLayer("Outside Cut");
      writeLine(material_Thickness,100,leg_Length-material_Thickness,100,cornerX,cornerY,rotation);
    }
  }

  if(widthOrLength == "length") {
    if(table_Length >= division_Min) {
      line(material_Thickness,100,leg_Length/3-material_Thickness/2,100);

      line(leg_Length/3-material_Thickness/2,100,leg_Length/3-material_Thickness/2,50+sniglet_Radius*3);
      arc(leg_Length/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
      arc(leg_Length/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(leg_Length/3-material_Thickness/2-sniglet_Radius,50,leg_Length/3+material_Thickness/2+sniglet_Radius,50);
      arc(leg_Length/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(leg_Length/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length/3+material_Thickness/2,50+sniglet_Radius*3,leg_Length/3+material_Thickness/2,100);

      line(leg_Length/3+material_Thickness/2,100,leg_Length*2/3-material_Thickness/2,100);

      line(leg_Length*2/3-material_Thickness/2,100,leg_Length*2/3-material_Thickness/2,50+sniglet_Radius*3);
      arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
      arc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50,leg_Length*2/3+material_Thickness/2+sniglet_Radius,50);
      arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length*2/3+material_Thickness/2,50+sniglet_Radius*3,leg_Length*2/3+material_Thickness/2,100);

      line(leg_Length*2/3+material_Thickness/2,100,leg_Length-material_Thickness,100);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness,100,leg_Length/3-material_Thickness/2,100,cornerX,cornerY,rotation);

        writeLine(leg_Length/3-material_Thickness/2,100,leg_Length/3-material_Thickness/2,50+sniglet_Radius*3,cornerX,cornerY,rotation);
        writeArc(leg_Length/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,PI+PI/2,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/3-material_Thickness/2-sniglet_Radius,50,leg_Length/3+material_Thickness/2+sniglet_Radius,50,cornerX,cornerY,rotation);
        writeArc(leg_Length/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/3+material_Thickness/2,50+sniglet_Radius*3,leg_Length/3+material_Thickness/2,100,cornerX,cornerY,rotation);

        writeLine(leg_Length/3+material_Thickness/2,100,leg_Length*2/3-material_Thickness/2,100,cornerX,cornerY,rotation);

        writeLine(leg_Length*2/3-material_Thickness/2,100,leg_Length*2/3-material_Thickness/2,50+sniglet_Radius*3,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,PI+PI/2,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3-material_Thickness/2-sniglet_Radius,50,leg_Length*2/3+material_Thickness/2+sniglet_Radius,50,cornerX,cornerY,rotation);
        writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length*2/3+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length*2/3+material_Thickness/2,50+sniglet_Radius*3,leg_Length*2/3+material_Thickness/2,100,cornerX,cornerY,rotation);

        writeLine(leg_Length*2/3+material_Thickness/2,100,leg_Length-material_Thickness,100,cornerX,cornerY,rotation);
      }
    }

    if(table_Length < division_Min) {
      line(material_Thickness,100,leg_Length/2-material_Thickness/2,100);
      line(leg_Length/2-material_Thickness/2,100,leg_Length/2-material_Thickness/2,50+sniglet_Radius*3);
      arc(leg_Length/2-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI+PI/2,TWO_PI);
      arc(leg_Length/2-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,PI/2,PI+PI/2);
      line(leg_Length/2-material_Thickness/2-sniglet_Radius,50,leg_Length/2+material_Thickness/2+sniglet_Radius,50);
      arc(leg_Length/2+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
      arc(leg_Length/2+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
      line(leg_Length/2+material_Thickness/2,50+sniglet_Radius*3,leg_Length/2+material_Thickness/2,100);
      line(leg_Length/2+material_Thickness/2,100,leg_Length-material_Thickness,100);

      if(record) {
        setLayer("Outside Cut");
        writeLine(material_Thickness,100,leg_Length/2-material_Thickness/2,100,cornerX,cornerY,rotation);
        writeLine(leg_Length/2-material_Thickness/2,100,leg_Length/2-material_Thickness/2,50+sniglet_Radius*3,cornerX,cornerY,rotation);
        writeArc(leg_Length/2-material_Thickness/2-sniglet_Radius,50+sniglet_Radius*3,PI+PI/2,TWO_PI,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/2-material_Thickness/2-sniglet_Radius,50+sniglet_Radius,PI/2,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/2-material_Thickness/2-sniglet_Radius,50,leg_Length/2+material_Thickness/2+sniglet_Radius,50,cornerX,cornerY,rotation);
        writeArc(leg_Length/2+material_Thickness/2+sniglet_Radius,50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeArc(leg_Length/2+material_Thickness/2+sniglet_Radius,50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
        writeLine(leg_Length/2+material_Thickness/2,50+sniglet_Radius*3,leg_Length/2+material_Thickness/2,100,cornerX,cornerY,rotation);
        writeLine(leg_Length/2+material_Thickness/2,100,leg_Length-material_Thickness,100,cornerX,cornerY,rotation);
      }
    }
  }

  line(material_Thickness,50+sniglet_Radius*3,material_Thickness,100);
  arc(material_Thickness+sniglet_Radius,50+sniglet_Radius*3,sniglet_Radius*2,sniglet_Radius*2,PI,PI+PI/2);
  arc(material_Thickness+sniglet_Radius,50+sniglet_Radius,sniglet_Radius*2,sniglet_Radius*2,-PI/2,PI/2);
  line(0,50,material_Thickness+sniglet_Radius,50);
  line(0,0,0,50);

  if(record) {
    setLayer("Outside Cut");
    writeLine(material_Thickness,50+sniglet_Radius*3,material_Thickness,100,cornerX,cornerY,rotation);
    writeArc(material_Thickness+sniglet_Radius,50+sniglet_Radius*3,PI,PI+PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeArc(material_Thickness+sniglet_Radius,50+sniglet_Radius,-PI/2,PI/2,cornerX,cornerY,rotation,sniglet_Radius);
    writeLine(0,50,material_Thickness+sniglet_Radius,50,cornerX,cornerY,rotation);
    writeLine(0,0,0,50,cornerX,cornerY,rotation);
  }

  popMatrix();
}

