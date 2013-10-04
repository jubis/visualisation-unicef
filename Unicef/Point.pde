static class Point {
  float x;
  float y;
  
  public Point( float x, float y ) {
    this.x = x;
    this.y = y;
  }
  
  public Point plus( Point p ) {
    return new Point( this.x + p.x, this.y + p.y );
  }
}
