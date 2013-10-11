class CountryInfo extends InfoWindow {
  private PieChart pie;
  private final int padding = 20;
  private int hSize = 30;
  private Country country;
  
  public CountryInfo( Point start, String filename ) {
    super( start, 450, 320 );
    this.country = new Country( filename );
    this.pie = new PieChart( this.country.sectors,
                             this.country.descs,
                             this.beginningOfRectangleX + this.padding , 
                             this.beginningOfRectangleY + this.padding*2 + this.hSize );
  }
  
  public boolean draw() {
    if( super.draw() ) {
      this.pie.draw();
      stroke( 0 );
      fill( 0 );
      textSize( this.hSize );
      text( this.country.title, 
            this.beginningOfRectangleX + this.widthOfWindow/2 - textWidth( this.country.title )/2, 
            this.beginningOfRectangleY + this.hSize + this.padding );
      textSize( 12 );
      
      int sects = this.country.sectors.length;
      text( this.country.text,
            this.beginningOfRectangleX + this.padding,
            this.beginningOfRectangleY + this.padding*3 + 110 + ((sects > 4)?( this.country.sectors.length - 4 ) * 20 : 0),
            this.widthOfWindow - this.padding*2,
            220 );
      return true;
    }
    else {
      return false;
    }
  }
  
}
