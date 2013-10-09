class CountryInfo extends InfoWindow {
  private PieChart pie;
  private String header;
  private String text = "asdasd afsdf dsa eafad asd a ad a ads asx j j j  awxaw ef";
  private final int padding = 15;
  private int hSize = 30;
  
  public CountryInfo( Point start, String header ) {
    super( start, 300, 200 );
    this.header = header;
    this.pie = new PieChart( new float[] { 20, 30, 40 },
                             new String[] { "a", "b", "c" },
                             this.beginningOfRectangleX + this.padding , 
                             this.beginningOfRectangleY + this.padding + this.hSize );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      textSize( this.hSize );
      text( this.header, 
            this.beginningOfRectangleX + this.widthOfWindow/2 - textWidth( this.header )/2, 
            this.beginningOfRectangleY + this.hSize );
      textSize( 12 );
      text( this.text,
            this.beginningOfRectangleX + this.padding,
            this.beginningOfRectangleY + this.padding*2 + 110,
            this.widthOfWindow - this.padding*2,
            100 );
      return true;
    }
    else {
      return false;
    }
  }
  
}
