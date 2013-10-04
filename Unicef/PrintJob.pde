class PrintJob extends Job {
  String text;
  
  public PrintJob( String text ) {
    this.text = text;
  }
  
  public run() {
    println( this.text );
  }

}
