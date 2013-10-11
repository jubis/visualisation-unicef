class QMInfo extends InfoWindow {
  private int padding = 30;
  private final String filename = "Unicefkartta.txt";
  
  public QMInfo( Point start ) {
    super( start, 500, 350 );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      String[] content = loadStrings( this.filename );
      String head = content[0];
      String body = content[1];
      fill( 0 );
      stroke( 0 );
      textSize( 30 );
      text( head, 
            this.beginningOfRectangleX + this.padding, 
            this.beginningOfRectangleY + this.padding/2 + 30 );
      textSize( 15 );
      text( body, 
            this.beginningOfRectangleX + this.padding, 
            this.beginningOfRectangleY + this.padding*1.5 + 30,
            this.widthOfWindow - this.padding*3,
            this.heightOfWindow - this.padding*2 );
      return true;
    } else {
      return false;
    }
  }
}
