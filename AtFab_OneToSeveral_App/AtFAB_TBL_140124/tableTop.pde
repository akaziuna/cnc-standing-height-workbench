void tableTop() {
  if(table_Length >= division_Min && table_Width >= division_Min) {
    topMidJoint(table_Length/3,table_Width/3);
    topMidJoint(table_Length/3,table_Width*2/3);
    topMidJoint(table_Length*2/3,table_Width/3);
    topMidJoint(table_Length*2/3,table_Width*2/3);

    line(0,0,0,table_Width/3-50);
    line(0,table_Width/3+50,0,table_Width*2/3-50);
    line(0,table_Width*2/3+50,0,table_Width);

    line(0,0,table_Length/3-50,0);
    line(table_Length/3+50,0,table_Length*2/3-50,0);
    line(table_Length*2/3+50,0,table_Length,0);

    line(table_Length,0,table_Length,table_Width/3-50);
    line(table_Length,table_Width/3+50,table_Length,table_Width*2/3-50);
    line(table_Length,table_Width*2/3+50,table_Length,table_Width);

    line(0,table_Width,table_Length/3-50,table_Width);
    line(table_Length/3+50,table_Width,table_Length*2/3-50,table_Width);
    line(table_Length*2/3+50,table_Width,table_Length,table_Width);
    
    if(!grommets){
      topSideJointOne(material_Thickness/2,table_Width/3,0);
      topSideJointOne(material_Thickness/2,table_Width*2/3,0);
      topSideJointOne(table_Length/3,material_Thickness/2,PI/2);
      topSideJointOne(table_Length*2/3,material_Thickness/2,PI/2);
      topSideJointOne(-material_Thickness/2+table_Length,table_Width/3,PI);
      topSideJointOne(-material_Thickness/2+table_Length,table_Width*2/3,PI);
      topSideJointOne(table_Length/3,-material_Thickness/2+table_Width,-PI/2);
      topSideJointOne(table_Length*2/3,-material_Thickness/2+table_Width,-PI/2);
    }
    if(grommets){
      topSideJointOne(material_Thickness/2,table_Width/3,0);
      topSideJointTwo(material_Thickness/2,table_Width*2/3,0);
      topSideJointTwo(table_Length/3,material_Thickness/2,PI/2);
      topSideJointOne(table_Length*2/3,material_Thickness/2,PI/2);
      topSideJointTwo(-material_Thickness/2+table_Length,table_Width/3,PI);
      topSideJointOne(-material_Thickness/2+table_Length,table_Width*2/3,PI);
      topSideJointOne(table_Length/3,-material_Thickness/2+table_Width,-PI/2);
      topSideJointOne(table_Length*2/3,-material_Thickness/2+table_Width,-PI/2);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(50+material_Thickness*3/2,table_Width*2/3,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length*2/3,table_Width-50-material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length-50-material_Thickness*3/2,table_Width/3,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/3,50+material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(50+material_Thickness*3/2,table_Width*2/3,0,0,0);
        writeCircle(table_Length*2/3,table_Width-50-material_Thickness*3/2,0,0,0);
        writeCircle(table_Length-50-material_Thickness*3/2,table_Width/3,0,0,0);
        writeCircle(table_Length/3,50+material_Thickness*3/2,0,0,0);
      }
    }
    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,0,table_Width/3-50,0,0,0);
      writeLine(0,table_Width/3+50,0,table_Width*2/3-50,0,0,0);
      writeLine(0,table_Width*2/3+50,0,table_Width,0,0,0);

      writeLine(0,0,table_Length/3-50,0,0,0,0);
      writeLine(table_Length/3+50,0,table_Length*2/3-50,0,0,0,0);
      writeLine(table_Length*2/3+50,0,table_Length,0,0,0,0);

      writeLine(table_Length,0,table_Length,table_Width/3-50,0,0,0);
      writeLine(table_Length,table_Width/3+50,table_Length,table_Width*2/3-50,0,0,0);
      writeLine(table_Length,table_Width*2/3+50,table_Length,table_Width,0,0,0);

      writeLine(0,table_Width,table_Length/3-50,table_Width,0,0,0);
      writeLine(table_Length/3+50,table_Width,table_Length*2/3-50,table_Width,0,0,0);
      writeLine(table_Length*2/3+50,table_Width,table_Length,table_Width,0,0,0);
    }
  }



  if(table_Length >= division_Min && table_Width < division_Min) {
    topMidJoint(table_Length/3,table_Width/2);
    topMidJoint(table_Length*2/3,table_Width/2);
    
    if(!grommets){
      topSideJointOne(table_Length/3,material_Thickness/2,PI/2);
      topSideJointOne(table_Length*2/3,material_Thickness/2,PI/2);
      line(0,0,table_Length/3-50,0);
      line(table_Length/3+50,0,table_Length*2/3-50,0);
      line(table_Length*2/3+50,0,table_Length,0);
      line(0,table_Width,table_Length/3-50,table_Width);
      line(table_Length/3+50,table_Width,table_Length*2/3-50,table_Width);
      line(table_Length*2/3+50,table_Width,table_Length,table_Width);
      topSideJointOne(table_Length/3,-material_Thickness/2+table_Width,-PI/2);
      topSideJointOne(table_Length*2/3,-material_Thickness/2+table_Width,-PI/2);

      line(0,0,0,table_Width/2-50);
      topSideJointOne(material_Thickness/2,table_Width/2,0);
      line(0,table_Width/2+50,0,table_Width);

      line(table_Length,0,table_Length,table_Width/2-50);
      topSideJointOne(table_Length-material_Thickness/2,table_Width/2,PI);
      line(table_Length,table_Width/2+50,table_Length,table_Width);
    }
    if(grommets){
      topSideJointTwo(table_Length/3,material_Thickness/2,PI/2);
      topSideJointTwo(table_Length*2/3,material_Thickness/2,PI/2);
      line(0,0,table_Length/3-50,0);
      line(table_Length/3+50,0,table_Length*2/3-50,0);
      line(table_Length*2/3+50,0,table_Length,0);
      line(0,table_Width,table_Length/3-50,table_Width);
      line(table_Length/3+50,table_Width,table_Length*2/3-50,table_Width);
      line(table_Length*2/3+50,table_Width,table_Length,table_Width);
      topSideJointOne(table_Length/3,-material_Thickness/2+table_Width,-PI/2);
      topSideJointOne(table_Length*2/3,-material_Thickness/2+table_Width,-PI/2);

      line(0,0,0,table_Width/2-50);
      topSideJointTwo(material_Thickness/2,table_Width/2,0);
      line(0,table_Width/2+50,0,table_Width);

      line(table_Length,0,table_Length,table_Width/2-50);
      topSideJointTwo(table_Length-material_Thickness/2,table_Width/2,PI);
      line(table_Length,table_Width/2+50,table_Length,table_Width);
    }

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,table_Length/3-50,0,0,0,0);
      writeLine(table_Length/3+50,0,table_Length*2/3-50,0,0,0,0);
      writeLine(table_Length*2/3+50,0,table_Length,0,0,0,0);
      writeLine(0,table_Width,table_Length/3-50,table_Width,0,0,0);
      writeLine(table_Length/3+50,table_Width,table_Length*2/3-50,table_Width,0,0,0);
      writeLine(table_Length*2/3+50,table_Width,table_Length,table_Width,0,0,0);

      writeLine(0,0,0,table_Width/2-50,0,0,0);
      writeLine(0,table_Width/2+50,0,table_Width,0,0,0);

      writeLine(table_Length,0,table_Length,table_Width/2-50,0,0,0);
      writeLine(table_Length,table_Width/2+50,table_Length,table_Width,0,0,0);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(table_Length*2/3,table_Width-50-material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/3,50+material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      ellipse(50+material_Thickness*3/2,table_Width/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length-50-material_Thickness*3/2,table_Width/2,dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(table_Length*2/3,table_Width-50-material_Thickness*3/2,0,0,0);
        writeCircle(table_Length/3,50+material_Thickness*3/2,0,0,0);
        writeCircle(50+material_Thickness*3/2,table_Width/2,0,0,0);
        writeCircle(table_Length-50-material_Thickness*3/2,table_Width/2,0,0,0);
      }
    }
  }



  if(table_Length < division_Min && table_Width >= division_Min) {
    topMidJoint(table_Length/2,table_Width/3);
    topMidJoint(table_Length/2,table_Width*2/3);
    if(!grommets){
      topSideJointOne(material_Thickness/2,table_Width*2/3,0);
      topSideJointOne(material_Thickness/2,table_Width/3,0);
      topSideJointOne(-material_Thickness/2+table_Length,table_Width/3,PI);
      topSideJointOne(-material_Thickness/2+table_Length,table_Width*2/3,PI);
    
      line(0,0,table_Length/2-50,0);
      topSideJointOne(table_Length/2,material_Thickness/2,PI/2);
      line(table_Length/2+50,0,table_Length,0);
    }
    if(grommets){
      topSideJointTwo(material_Thickness/2,table_Width*2/3,0);
      topSideJointTwo(material_Thickness/2,table_Width/3,0);
      topSideJointTwo(-material_Thickness/2+table_Length,table_Width/3,PI);
      topSideJointTwo(-material_Thickness/2+table_Length,table_Width*2/3,PI);
    
      line(0,0,table_Length/2-50,0);
      topSideJointTwo(table_Length/2,material_Thickness/2,PI/2);
      line(table_Length/2+50,0,table_Length,0);
    }
    
    line(0,0,0,table_Width/3-50);
    line(0,table_Width/3+50,0,table_Width*2/3-50);
    line(0,table_Width*2/3+50,0,table_Width);
    line(table_Length,0,table_Length,table_Width/3-50);
    line(table_Length,table_Width/3+50,table_Length,table_Width*2/3-50);
    line(table_Length,table_Width*2/3+50,table_Length,table_Width);


    line(0,table_Width,table_Length/2-50,table_Width);
    topSideJointOne(table_Length/2,table_Width-material_Thickness/2,-PI/2);
    line(table_Length/2+50,table_Width,table_Length,table_Width);

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,0,table_Width/3-50,0,0,0);
      writeLine(0,table_Width/3+50,0,table_Width*2/3-50,0,0,0);
      writeLine(0,table_Width*2/3+50,0,table_Width,0,0,0);
      writeLine(table_Length,0,table_Length,table_Width/3-50,0,0,0);
      writeLine(table_Length,table_Width/3+50,table_Length,table_Width*2/3-50,0,0,0);
      writeLine(table_Length,table_Width*2/3+50,table_Length,table_Width,0,0,0);

      writeLine(0,0,table_Length/2-50,0,0,0,0);
      writeLine(table_Length/2+50,0,table_Length,0,0,0,0);

      writeLine(0,table_Width,table_Length/2-50,table_Width,0,0,0);
      writeLine(table_Length/2+50,table_Width,table_Length,table_Width,0,0,0);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(50+material_Thickness*3/2,table_Width*2/3,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length-50-material_Thickness*3/2,table_Width/3,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/2,50+material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/2,table_Width-50-material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(50+material_Thickness*3/2,table_Width*2/3,0,0,0);
        writeCircle(table_Length-50-material_Thickness*3/2,table_Width/3,0,0,0);
        writeCircle(table_Length/2,50+material_Thickness*3/2,0,0,0);
        writeCircle(table_Length/2,table_Width-50-material_Thickness*3/2,0,0,0);
      }
    }
  }



  if(table_Length < division_Min && table_Width < division_Min) {
    topMidJoint(table_Length/2,table_Width/2);
    
    if(!grommets){
      line(0,0,table_Length/2-50,0);
      topSideJointOne(table_Length/2,material_Thickness/2,PI/2);
      line(table_Length/2+50,0,table_Length,0);

      line(0,table_Width,table_Length/2-50,table_Width);
      topSideJointOne(table_Length/2,table_Width-material_Thickness/2,-PI/2);
      line(table_Length/2+50,table_Width,table_Length,table_Width);

      line(0,0,0,table_Width/2-50);
      topSideJointOne(material_Thickness/2,table_Width/2,0);
      line(0,table_Width/2+50,0,table_Width);

      line(table_Length,0,table_Length,table_Width/2-50);
      topSideJointOne(table_Length-material_Thickness/2,table_Width/2,PI);
      line(table_Length,table_Width/2+50,table_Length,table_Width);
    }
    if(grommets){
      line(0,0,table_Length/2-50,0);
      topSideJointTwo(table_Length/2,material_Thickness/2,PI/2);
      line(table_Length/2+50,0,table_Length,0);

      line(0,table_Width,table_Length/2-50,table_Width);
      topSideJointOne(table_Length/2,table_Width-material_Thickness/2,-PI/2);
      line(table_Length/2+50,table_Width,table_Length,table_Width);

      line(0,0,0,table_Width/2-50);
      topSideJointTwo(material_Thickness/2,table_Width/2,0);
      line(0,table_Width/2+50,0,table_Width);

      line(table_Length,0,table_Length,table_Width/2-50);
      topSideJointTwo(table_Length-material_Thickness/2,table_Width/2,PI);
      line(table_Length,table_Width/2+50,table_Length,table_Width);
    }

    if(record) {
      setLayer("Outside Cut");
      writeLine(0,0,table_Length/2-50,0,0,0,0);
      writeLine(table_Length/2+50,0,table_Length,0,0,0,0);

      writeLine(0,table_Width,table_Length/2-50,table_Width,0,0,0);
      writeLine(table_Length/2+50,table_Width,table_Length,table_Width,0,0,0);

      writeLine(0,0,0,table_Width/2-50,0,0,0);
      writeLine(0,table_Width/2+50,0,table_Width,0,0,0);

      writeLine(table_Length,0,table_Length,table_Width/2-50,0,0,0);
      writeLine(table_Length,table_Width/2+50,table_Length,table_Width,0,0,0);
    }

    if(dowel_Holes) {
      stroke(255,0,0);
      ellipse(50+material_Thickness*3/2,table_Width/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length-50-material_Thickness*3/2,table_Width/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/2,50+material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      ellipse(table_Length/2,table_Width-50-material_Thickness*3/2,dowel_Diameter,dowel_Diameter);
      stroke(0);
      if(record) {
        setLayer("Dowel Holes");
        writeCircle(50+material_Thickness*3/2,table_Width/2,0,0,0);
        writeCircle(table_Length-50-material_Thickness*3/2,table_Width/2,0,0,0);
        writeCircle(table_Length/2,50+material_Thickness*3/2,0,0,0);
        writeCircle(table_Length/2,table_Width-50-material_Thickness*3/2,0,0,0);
      }
    }
  }
}

