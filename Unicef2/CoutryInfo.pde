class CountryInfo extends InfoWindow {
  private PieChart pie;
  private final int padding = 15;
  private int hSize = 30;
  private Country country;
  
  public CountryInfo( Point start, String filename ) {
    super( start, 400, 300 );
    this.country = new Country( filename );
    this.pie = new PieChart( this.country.sectors,
                             this.country.descs,
                             this.beginningOfRectangleX + this.padding , 
                             this.beginningOfRectangleY + this.padding + this.hSize );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      stroke( 0 );
      fill( 0 );
      textSize( this.hSize );
      text( this.country.title, 
            this.beginningOfRectangleX + this.widthOfWindow/2 - textWidth( this.country.title )/2, 
            this.beginningOfRectangleY + this.hSize );
      textSize( 12 );
      text( this.country.text,
            this.beginningOfRectangleX + this.padding,
            this.beginningOfRectangleY + this.padding*2 + 110,
            this.widthOfWindow - this.padding*2,
            200 );
      return true;
    }
    else {
      return false;
    }
  }
  
}
