class CountryInfo extends InfoWindow {
  private PieChart pie;
  private final int padding = 15;
  private int hSize = 30;
  private Country country;
  
  public CountryInfo( Point start, String filename ) {
    super( start, 300, 200 );
    this.pie = new PieChart( this.country.sectors,
                             this.country.descs,
                             this.beginningOfRectangleX + this.padding , 
                             this.beginningOfRectangleY + this.padding + this.hSize );
    this.country = new Country( filename );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      textSize( this.hSize );
      text( this.country.title, 
            this.beginningOfRectangleX + this.widthOfWindow/2 - textWidth( this.country.title )/2, 
            this.beginningOfRectangleY + this.hSize );
      textSize( 12 );
      text( this.country.text,
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
