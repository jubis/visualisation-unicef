class InfoWindow {

  float heightOfWindow;
  float widthOfWindow;
  float beginningOfRectangleX;
  float beginningOfRectangleY;
  float heightOfTriangle;
  float widthOfTriangle;
  float clickedX;
  float clickedY;
  
 
  
  
  InfoWindow(Point clickedXY, int sizeX, int sizeY) {
    this.clickedX = clickedXY.x;
    this.clickedY = clickedXY.y;
    heightOfWindow = sizeY;
    widthOfWindow = sizeX;
    heightOfTriangle = 0.25*heightOfWindow;
    widthOfTriangle = 0.15*widthOfWindow;
    beginningOfRectangleX=clickedX+widthOfTriangle;
    beginningOfRectangleY=clickedY-heightOfWindow;
  }  
  
  void draw() {
    //println( "draw infowindow" + this.clickedX + " | " + this.clickedY + "size: x= " + this.widthOfWindow + " y= " + this.heightOfWindow );
    //println(beginningOfRectangleX + " | " + beginningOfRectangleY);
    rect(beginningOfRectangleX, beginningOfRectangleY, widthOfWindow, heightOfWindow, 7);
    triangle(this.clickedX,this.clickedY, beginningOfRectangleX, beginningOfRectangleY+(0.65*heightOfWindow), beginningOfRectangleX, beginningOfRectangleY+0.65*heightOfWindow+heightOfTriangle);
  }
  
  
  
}
