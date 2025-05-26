void setup(){
  size(48,48); 
}

void draw(){
  for(int i=0;i<=5;i++){
    background(255);
    strokeWeight(4);
    
    pushMatrix();
    
    //Algoritmo para coordenadas
    float r = random(8, width/2);
    float x = random(r, width - r);
    float y = random(r, height - r);
    
    stroke(100,100,100);
    
    translate(x,y);
    
   if(i == 0){ 
      rotate(random(-0.1, 0.1)); 
      triangle(-r, -r, r, -r, -r, r); 
      saveFrame("data/rectangle_triangles/normal_de_cabeza/triangle###.png"); 
      
    } else if(i == 1){ 
      rotate(random(-0.1, 0.1)); 
      triangle(-r, r, r, r, r, -r); 
      saveFrame("data/rectangle_triangles/espejo/triangle###.png"); 
      
    } else if(i == 2){ 
      rotate(random(-0.1, 0.1)); 
      triangle(-r, -r, r, -r, r, r); 
      saveFrame("data/rectangle_triangles/espejo_de_cabeza/triangle###.png"); 
      
    } else if(i == 3){ 
      rotate(random(-0.1, 0.1)); 
      triangle(-r, -r, -r, r, r, r); 
      saveFrame("data/rectangle_triangles/normal/triangle###.png"); 
    } else if(i == 4){
      // Triángulo acutángulo (todos los ángulos < 90°)
      rotate(random(-0.1, 0.1)); 
      triangle(0, -r*0.8, r*0.7, r*0.6, -r*0.7, r*0.6); 
      saveFrame("data/rectangle_triangles/acutangulo/triangle###.png"); 
      
    } else if(i == 5){
      // Triángulo acutángulo de cabeza (volteado verticalmente)
      rotate(random(-0.1, 0.1)); 
      triangle(0, r*0.8, r*0.7, -r*0.6, -r*0.7, -r*0.6); 
      saveFrame("data/rectangle_triangles/acutangulo_de_cabeza/triangle###.png"); 
    }
    
    
    popMatrix();
  }
  
  if(frameCount==100){
    exit();
  }
}
