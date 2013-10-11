class PieChart {

  float[] sectors;
  String[] texts;
  float sum = 0;
  float unit;
  float x;
  float y;
  
  public PieChart(float[] sectors, String[] texts, float x, float y){
    this.sectors = sectors;
    this.texts = texts;
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
    float hueDelta = (startColor+75)/(sectors.length-1); 
    colorMode(HSB, 100);
    noStroke();
    
      for(int i=0; i<sectors.length; i++){
       
        fill(startColor+i*hueDelta, 100, 100);
        arc(x+40, y+40, 80, 80, startAngle, startAngle + this.sectors[i]*unit);
        startAngle += this.sectors[i]*unit;
        
        if(this.texts != null && ( ( this.texts.length == 2 && i == 0 ) || this.texts.length != 2 ) ){
          rect(x+100, y+20*i, 15, 15);
          textSize(14);
          fill(0);
          int j = 0;
          for(String text : this.texts ) println(text + " " + j++);
          text((int)this.sectors[i] + "%," + this.texts[i], x+120, 12+y+20*i);
        }   
     }
    colorMode(RGB, 255);
  }
}



  

 



