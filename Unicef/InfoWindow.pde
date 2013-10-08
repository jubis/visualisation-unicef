class InfoWindow {

  float heightOfWindow;
  float widthOfWindow;
  float beginningOfRectangleX;
  float beginningOfRectangleY;
  float topCornerOfTriangleX;
  float topCornerOfTriangleY;
  float heightOfTriangle;
  float widthOfTriangle;
  float clickedX;
  float clickedY;
  
  public boolean visible = true;
 
  
  
  InfoWindow(Point clickedXY, int sizeX, int sizeY) {
    this.clickedX = clickedXY.x;
    this.clickedY = clickedXY.y;
    this.heightOfWindow = sizeY;
    this.widthOfWindow = sizeX;
    this.heightOfTriangle = 0.25*this.heightOfWindow;
    this.widthOfTriangle = 0.15*this.widthOfWindow;
   
   /** Checks if the infowindow's height is bigger than the x-coordinate clicked,
   and if it is, it turns the triangle to be attached on the top left corner of the
   box instead of the bottom left corner.*/
    if(this.clickedY >= heightOfWindow) {
      this.beginningOfRectangleY=this.clickedY-heightOfWindow;
      this.topCornerOfTriangleY = beginningOfRectangleY+(0.65*heightOfWindow);
    } else {
      this.beginningOfRectangleY=this.clickedY;
      this.topCornerOfTriangleY = beginningOfRectangleY+(0.1*heightOfWindow);
    }
  
  
  
  /** Checks if the infowindow fits inside the main window (x-coordinates) and turns
  the infowindow the other way round if necessary.*/
  
  if(this.clickedX > windowSize.x-this.widthOfWindow-this.widthOfTriangle) {
     this.beginningOfRectangleX = this.clickedX-this.widthOfWindow-this.widthOfTriangle;
     this.topCornerOfTriangleX = this.clickedX-this.widthOfTriangle;
  } else {
    this.beginningOfRectangleX = this.clickedX+this.widthOfTriangle;
    this.topCornerOfTriangleX = this.beginningOfRectangleX;
  }
}
    
  
  boolean draw() {
    if(this.visible) {
      //println( "draw infowindow" + this.clickedX + " | " + this.clickedY + "size: x= " + this.widthOfWindow + " y= " + this.heightOfWindow );
      //println(beginningOfRectangleX + " | " + beginningOfRectangleY);
      fill(255,255,255);
      stroke( 0 );
      rect(beginningOfRectangleX, beginningOfRectangleY, widthOfWindow, heightOfWindow, 7);
      triangle(this.clickedX,this.clickedY, topCornerOfTriangleX,this.topCornerOfTriangleY, topCornerOfTriangleX, this.topCornerOfTriangleY+heightOfTriangle);
      stroke(255,255,255);
      line(this.topCornerOfTriangleX, this.topCornerOfTriangleY+2,this.topCornerOfTriangleX,this.topCornerOfTriangleY+heightOfTriangle);
    }
    return this.visible;
  }
  
  public void toggleVisibility() {
    this.visible = !this.visible;
  }
  
}
