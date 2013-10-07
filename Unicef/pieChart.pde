class PieChart {

  float[] sectors;
  float sum = 0;
  float unit;
  float x;
  float y;

  public PieChart(float[] sectors, float x, float y){
    this.sectors = sectors;
    this.x = x;
    this.y = y;
  }
  
  public PieChart( int i ) {
    switch(i) {
      case 0: 
        PieChart.this(new float[]{ 100, 300, 500 }, 50, 50);
        break; 
        
      for (int i=0; i<this.sectors.length; i++) {
      sum += this.sectors[i]; 
      }
     unit = TWO_PI/(sum);
    }  
  }
  
  public draw(){
    
    float startAngle = 0; 
    
      for(int i=0; i<sectors.length(); i++){
        arc(50, 50, 80, 80, startAngle, startAngle + this.sectors[i]*unit);
        startAngle += this.sectors[i]*unit;
      }
   }
}



  

 



