class QMInfo extends InfoWindow {
  private int padding = 30;
  private final String filename = "Unicefkartta.txt";
  
  public QMInfo( Point start ) {
    super( start, 300, 300 );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      String text = loadStrings( this.filename )[0];
      fill( 0 );
      stroke( 1 );
      text( text, 
            this.beginningOfRectangleX + this.padding, 
            this.beginningOfRectangleY + this.padding,
            this.widthOfWindow - this.padding*2,
            this.heightOfWindow - this.padding*2 );
      return true;
    } else {
      return false;
    }
  }
}
