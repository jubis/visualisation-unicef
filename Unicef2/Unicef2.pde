import geomerative.*;
import java.util.Map;
import java.util.Arrays;
import java.util.List;

Point windowSize = new Point( 1200, 600 );
RShape s;
RShape s2;
RShape sea;
RShape land;
PImage logo;
List<String> highlights = new ArrayList<String>();
List<String> specials = new ArrayList<String>();
HashMap<String,InfoWindow> windows = new HashMap<String,InfoWindow>();

ArrayList<String> workList = new ArrayList<String>();

void setup() {
  RG.init(this);
  
  size( (int)windowSize.x, (int)windowSize.y ); 
  s = RG.loadShape( "world_map.svg" ); 
  s.scale(0.4);
  s.translate(50,0);
  s2 = s.getChild( "layer3" ).getChild( "path8070" );
  sea = s.getChild( "layer2" );
  land = s.getChild( "layer3" );
  logo = loadImage("logo.png");
  RG.ignoreStyles();
  
  
  initHighs();
  initSpecials();
  initWindows();
}

void draw() {
  //background(  );
  noStroke();
  fill( 0, 153, 255 );
  RG.shape( sea );
  
  /*stroke( 0 );
  fill( 255 );
  RG.shape( land );*/
  
 
  
  stroke( 0, 153, 255 );
  for( RShape child : land.children ) {
    fill( 210 );
    if( highlights.contains( child.name ) ) {
      fill( 255, 242, 174 );
    } 
    else if( specials.contains( child.name ) ) {
      fill(255, 0, 154 );
      
      if( child.contains(new RPoint( mouseX, mouseY ) ) ) {
      fill( 255, 140, 209 );
      }
    }
    
    
    if( workList.contains( child.name ) ) {
      fill( 255, 50, 50 );
    }
    
    if(child.name.equals("path10146")) {
      fill(255);
    }
    
    RG.shape( child );
  }
  
  
  for( Map.Entry window : windows.entrySet() ) {
    ((InfoWindow)window.getValue()).draw();
  }
  
   image(logo, 1070, 30, 100, 90);
}

void mouseClicked() {
  for( String special : specials ) {
    if( land.getChild( special ).contains(new RPoint( mouseX, mouseY ) ) ) {
      windows.get( special ).toggleVisibility();
      return;
    }
  }
  for( RShape child : land.children ) {
    if( child.contains(new RPoint( mouseX, mouseY ) ) ) {
      if( ! workList.contains( child.name ) ) {
        workList.add( child.name );
      }
      else {
        workList.remove( child.name );
      }
    } 
  }
  for( String land : workList ) {
    print( "\"" + land + "\",");
  }
  println( "" );
}

void initHighs() {
  highlights = Arrays.asList( new String[] { "path8146","path10092","path11434","path11214","path8198","path9308",
  "path8912","path11218","path10136","path12244","path10832","path7688","path9984","path11918","path11408","path9078",
  "path8874","path10970","path8312","path8204","path10138","path9348","path11934","path11438","path8406","path10858",
  "path8946","path8404","path11936","path8202","path7698","path10882","path10012","path8950","path7692","path11460",
  "path12246","path10864","path8214","path8416","path11246","path10878","path11474","path8138","path12284","path8762",
  "path9362","path10868","path8882","path8106","path8108","path10252","path8302","path9510","path7710","path11252","path10076",
  "path11414","path11470","path11242","path9364","path12342","path8226","path7712","path8770","path7708","path12316","path12344",
  "path9354","path10144","path11500","path9384","path11502","path11942","path8212","path12354","path12296","path12350",
  "path11428","path11250","path8962","path11476","path12298","path12356","path11950","path8218","path10024","path10186",
  "path10164","path11478","path8422","path7700","path9532","path10022","path8220","path8960","path10158","path8424","path10936",
  "path12268","path11248","path11418","path11018","path9420","path8078","path11318","path10072","path7720","path7796","path8070",
  "path10190","path10188","path7864","path8288","path8216","path10148","path11416","path10944","path8968","path8842","path11372",
  "path8264","path11430","path12326","path10162","path11176","path8228","path11264","path11322","path11350","path11306","path11280",
  "path9448","path8064","path11954","path8958","path8304","path7908","path7858","path7870","path10994","path11006","path9516",
  "path11432","path10818","path11180","path11916","path12288","path7844","path7798","path7980","path7940","path7968",
 } );
  //highlights.add( "path8426" );
}

void initSpecials() {
  specials = Arrays.asList( new String[] { "path10948","path8314","path8200","path10890","path12352","path8224","path12276","path9060","path11962","path8342"});
}

void initWindows() {
  InfoWindow newWindow = null;
  for( String shape : specials ) {
    RPoint center = land.getChild( shape ).getCentroid();
    newWindow = new CountryInfo( new Point( center.x, center.y ), shape );
    windows.put( shape, newWindow );
    newWindow.visible = false;
  }
}
