class Country{
  String title;
  String text;
  float[] sectors;
  String[] descs;
  
  public Country(String filename){
    this.parseFile( filename );
    
  }
  
  private void parseFile( String filename ) {
    String[] rows = loadStrings( filename );
    this.title = rows[0];
    this.text = rows[3];
    
    String[] sectorsTemp = split( rows[1], ',' );
    this.sectors = new float[ sectorsTemp.length ];
    for( int i = 0; i < this.sectors.length; i++ ) {
      this.sectors[i] = float( sectorsTemp[i] );
    }
    
    this.descs = split( rows[1], ',' );
  }
}
    
    
    
