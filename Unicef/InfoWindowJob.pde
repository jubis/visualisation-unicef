class InfoWindowJob extends Job {
  private ArrayList<InfoWindow> windows;
  public final Point size;
  
  public InfoWindowJob( Point size, ArrayList<InfoWindow> windows ) {
    this.size = size;
    this.windows = windows;
  } 
  
  public void run( Object[] args ) {
    this.windows.add( new InfoWindow( (Point)args[0], (int)size.x, (int)size.y ) );
  }
}
