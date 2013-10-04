class infowindow {

  int heightOfWindow;
  int widthOfWindow;
  point beginningOfRectangleX;
  point beginningOfRectangleY;
  int heightOfTriangle;
  int widthOfTriangle;
 
  
  
  void infowindow() {
    heightOfTriangle = 0.25*heightOfWindow;
    widthOfTriangle = 0.15*widthOfWindow;
    beginningOfRectangleX=Point.x+widthOfTriangle;
    beginningOfRectangleY=Point.y+heightOfWindow;
    
  }  
  
  void draw() {
    rect(beginningOfRectangleX, beginningOfRectangleY,widthOfWindow,heightOfWindow,7);
    triangle(Point.x,Point.y, beginningOfRectangleX, beginningOfRectangleY-(0.65*heightOfWindow), beginningOfRectangleX, beginningOfRectangleY-heightOfTriangle);
  }
  
  
  
}
