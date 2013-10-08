import geomerative.*;
import java.util.Map;
import java.util.Arrays;
import java.util.List;

Point windowSize = new Point( 1200, 600 );
RShape s;
RShape s2;
RShape sea;
RShape land;
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
  RG.ignoreStyles();
  
  initHighs();
  initSpecials();
  initWindows();
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
    if( child.contains(new RPoint( mouseX, mouseY ) ) ) {
      fill( 100, 255, 100 );
    }
    
    if( workList.contains( child.name ) ) {
      fill( 255, 50, 50 );
    }
    
    RG.shape( child );
  }
  
  
  for( Map.Entry window : windows.entrySet() ) {
    ((InfoWindow)window.getValue()).draw();
  }
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
  highlights = Arrays.asList( new String[] { "path10144","path11942","path8212","path12354" } );
  //highlights.add( "path8426" );
}

void initSpecials() {
  specials.add( "path10948" );
}

void initWindows() {
  InfoWindow newWindow = null;
  for( String shape : specials ) {
    RPoint center = land.getChild( shape ).getCentroid();
    newWindow = new InfoWindow( new Point( center.x, center.y ), 100, 100 );
    windows.put( shape, newWindow );
    newWindow.visible = false;
  }
}
