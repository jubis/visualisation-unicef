import geomerative.*;

RShape s;
RShape s2;
RShape sea;
RShape land;
ArrayList<String> highlights = new ArrayList<String>();
ArrayList<String> specials = new ArrayList<String>();

void setup() {
  RG.init(this);
  
  size( 1200, 600 ); 
  s = RG.loadShape( "world_map.svg" ); 
  s.scale(0.4);
  s.translate(50,0);
  s2 = s.getChild( "layer3" ).getChild( "path8070" );
  sea = s.getChild( "layer2" );
  land = s.getChild( "layer3" );
  RG.ignoreStyles();
  
  initHighs();
  initSpecials();
}

void draw() {
  //background(  );
  noStroke();
  fill( 100, 100, 255 );
  RG.shape( sea );
  
  /*stroke( 0 );
  fill( 255 );
  RG.shape( land );*/
  
  stroke( 100, 100, 255 );
  for( RShape child : land.children ) {
    fill( 200 );
    if( highlights.contains( child.name ) ) {
      fill( 255, 255, 100 );
    } 
    else if( specials.contains( child.name ) ) {
      fill( 100, 255, 255 );
    }
    if( child.contains(new RPoint(mouseX,mouseY)) ) {
      fill( 100, 255, 100 );
      println( child.name );
    }
    
    RG.shape( child );
  }
  
}

void initHighs() {
  highlights.add( "path8426" );
}

void initSpecials() {
  specials.add( "path10948" );
}
