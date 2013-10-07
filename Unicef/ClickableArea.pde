class ClickableArea {
  ArrayList<Cube> cubes;
  Job job;
  
  public ClickableArea( ArrayList<Cube> cubes, Job job ) {
    this.cubes = cubes;
    this.job = job;
  }
  
  public ClickableArea( Job job ) {
    this( new ArrayList<Cube>(), job );
    for( int i = 100; i < 110; i++ ) {
      for( int j = 100; j < 110; j++ ) {
        this.cubes.add( new Cube( i, j ) );
      }
    }
  }
  
  public boolean click( Point mouse ) {
     for( Cube cube : this.cubes ) {
       if( cube.isClicked( mouse ) ) {
         this.job.run( new Object[] { mouse } );
         return true;
       }
     }
     return false;
  }
  
  public void draw() {
    for( Cube cube : this.cubes ) {
      cube.draw();
    }
  }

}

class Cube {
  final Point TOTAL_CUBES = new Point( 200, 200 );
  final Point size = new Point( windowSize.x/TOTAL_CUBES.x, windowSize.y/TOTAL_CUBES.y );
  
  Point tl;
  Point br;
  
  public Cube( int x, int y ) {
    this.tl = new Point( x*this.size.x, y*this.size.y );
    this.br = tl.plus( size );
  }
  
  public boolean isClicked( Point m ) {
    return m.x >= this.tl.x && 
      m.x <= this.br.x && 
      m.y >= this.tl.y &&
      m.y <= this.br.y;
  }
  
  public void draw() {
    stroke( 0 );
    fill( 255, 0, 0 );
    rect( this.tl.x, this.tl.y, this.size.x, this.size.y );
  }
}