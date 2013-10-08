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
  float widthOfMainWindow;
  
 
  
  
  InfoWindow(Point clickedXY, int sizeX, int sizeY) {
    this.widthOfMainWindow = windowSize.x;
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
<<<<<<< HEAD
  /*if(this.clickedX > this.widthOfMainWindow-this.widthOfWindow) {
=======
  if(this.clickedX > windowSize.x-this.widthOfWindow) {
>>>>>>> 98e1de9d6eca1b743420e328661407d758968be0
     this.beginningOfRectangleX = this.clickedX-this.widthOfRectangle-this.widthOfTriangle;
     this.topCornerOfTriangleX = this.clickedX-this.widthOfTriangle;
  } else {
    this.beginningOfRectangleX = this.clickedX+this.widthOfTriangle;
    this.topCornerOfTriangleX = this.beginningOfRectangleX;
  } */
}
    
  
  void draw() {
    //println( "draw infowindow" + this.clickedX + " | " + this.clickedY + "size: x= " + this.widthOfWindow + " y= " + this.heightOfWindow );
    //println(beginningOfRectangleX + " | " + beginningOfRectangleY);
    rect(beginningOfRectangleX, beginningOfRectangleY, widthOfWindow, heightOfWindow, 7);
    triangle(this.clickedX,this.clickedY, beginningOfRectangleX,this.topCornerOfTriangleY, beginningOfRectangleX, this.topCornerOfTriangleY+heightOfTriangle);
  }
  
  
  
}
