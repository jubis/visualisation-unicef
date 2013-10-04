class InfoWindow {

  float heightOfWindow;
  float widthOfWindow;
  float beginningOfRectangleX;
  float beginningOfRectangleY;
  float heightOfTriangle;
  float widthOfTriangle;
  int clickedX;
  int clickedY;
 
  
  
  void infowindow(int clickedX, int clickedY) {
    this.clickedX = clickedX;
    this.clickedY = clickedY;
    heightOfTriangle = 0.25*heightOfWindow;
    widthOfTriangle = 0.15*widthOfWindow;
    beginningOfRectangleX=clickedX+widthOfTriangle;
    beginningOfRectangleY=clickedY+heightOfWindow;
    
  }  
  
  void draw() {
    rect(beginningOfRectangleX, beginningOfRectangleY,widthOfWindow,heightOfWindow,7);
    triangle(this.clickedX,this.clickedY, beginningOfRectangleX, beginningOfRectangleY-(0.65*heightOfWindow), beginningOfRectangleX, beginningOfRectangleY-heightOfTriangle);
  }
  
  
  
}
