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
    for (int i=0; i<this.sectors.length; i++) {
      sum += this.sectors[i]; 
      }
     unit = TWO_PI/(sum);
  } 
  
  public void draw(){
    
    float startAngle = 0; 
    
      for(int i=0; i<sectors.length; i++){
        fill(i*60, i*50, i*60);
        arc(50, 50, 80, 80, startAngle, startAngle + this.sectors[i]*unit);
        startAngle += this.sectors[i]*unit;
      }
   }
}



  

 



