class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(50,255),random(50,255),random(50,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      //cuerpo del globo
      fill(c);
      ellipse(x,y,80,110);
      
      //nudo del globo
      triangle(x-8, y+55, x+8, y+55, x, y+68);
      
      //cuerda
      stroke(c);
      line(x,y+68,x,y+130);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
}

void draw()
{

  background(0,150,255);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
