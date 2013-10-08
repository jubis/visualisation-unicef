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
    int startColor = 10;
    float startAngle = 0;
    float hueDelta = (75+startColor)/(sectors.length-1); 
    colorMode(HSB, 100);
    noStroke();
    
      for(int i=0; i<sectors.length; i++){
       
        fill(startColor + i*hueDelta, 100, 100);
        arc(x+40, y+40, 80, 80, startAngle, startAngle + this.sectors[i]*unit);
        startAngle += this.sectors[i]*unit;
        
        fill(startColor + i*hueDelta, 100, 100);
        rect(x+100, y+20*i, 15, 15);
        textSize(28);
        
        text("word", x+120, 15+y+20*i); 
      }
      colorMode(RGB, 100);
   }
}



  

 



