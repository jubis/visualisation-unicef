class PrintJob extends Job {
  String text;
  
  public PrintJob( String text ) {
    this.text = text;
  }
  
  public void run( Object[] args ) {
    println( this.text );
  }

}
