class InfoWindowJob extends Job {
  private ArrayList<InfoWindow> windows;
  public final Point size;
  private InfoWindow window;
  
  public InfoWindowJob( Point pos, Point size, ArrayList<InfoWindow> windows ) {
    this.size = size;
    this.window = new PieInfoWindow( pos );
    this.window.visible = false;
    windows.add( this.window );
  } 
  
  public void run( Object[] args ) {
    this.window.toggleVisibility();
  }
}
