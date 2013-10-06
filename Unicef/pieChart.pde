class PieChart{
  
/*Create arrays; the values tell the percentage that each sector takes, so the donations
spent to certain target.(International Unicef has five focuses: health, education, children welfare,
children rights, hiv/aids)*/
float percentages_1[] = {0.1*TWO_PI, 0.5*TWO_PI, 0.2*TWO_PI, 0.05*TWO_PI, 0.15*TWO_PI};
float percentages_2[] = {0.2*TWO_PI, 0.2*TWO_PI, 0.3*TWO_PI, 0.15*TWO_PI, 0.15*TWO_PI};
float percentages_3[] = {0, 0.6*TWO_PI, 0.2*TWO_PI, 0.05*TWO_PI, 0.15*TWO_PI};

public PieChart(float[] percentages){
this.percentages = percentages;
  }

public void draw(){
  for(int i=0; i<pieCharts.size(); i++){
    
//Ensimmäinen sektori
arc(50, 50, 80, 80, 0, pieCharts[i].percentages_i[0], PIE);

for(int j=1; j<percentages_i.length(); j++){
//loput sektorit
arc(50, 50, 80, 80, pieCharts[i].percentages_i[j-1],
pieCharts[i].percentages_i[j-1] + pieCharts[i].percentages_i[j]);
      }
    }
  }
}


  

 



