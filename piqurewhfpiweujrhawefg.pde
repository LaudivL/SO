//Functie voor de Ellipse

//Colors
color Black = color(0,0,0);
color Blue = color(0,0,255);
color LightBlue = color(173,216,230);
color Green = color(0,255,0);
color LightGreen = color(144,238,144);
color Cyan = color(0,255,255);
color LightCyan = color(224,255,255);
color Red = color(255,0,0);
color LightRed = color(240,128,128);
color Magenta = color(255,0,255);
color LightMagenta = color(255,187,255);
color Brown = color(165,42,42);
color Yellow = color(255,255,0);
color Grey = color(190,190,190);
color White = color(255,255,255);

int s = 1;

//Bitmap Software ontwikkeling emoties. 
int bitmap_SizeY = 16;
int bitmap_SizeX = 16;

int bitmap [][][] = new int [][][]
{
 {
 {0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0},
 {0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0}
 }
 ,
 {
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0},
 {0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0}
 }
 ,
 {
 {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0}, 
 {0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0},
 {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0}
 }
 ,
 {
 {0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0},
 {0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0}
 }
 , 
 {
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {0,1,1,1,1,0,0,1,1,0,0,1,1,1,1,0},
 {0,1,1,1,1,0,0,1,1,0,0,1,1,1,1,0},
 {1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1},
 {1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1},
 {1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1},
 {0,1,1,0,0,0,1,1,1,1,0,0,0,1,1,0},
 {0,1,1,1,0,0,0,0,0,0,0,0,1,1,1,0},
 {0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0}
 }
 ,
 {
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0},
 {0,1,1,1,0,1,1,1,1,1,1,0,1,1,1,0},
 {0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0},
 {1,1,1,1,1,1,0,1,1,0,1,1,1,1,1,1},
 {1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1},
 {1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1},
 {1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
 {0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,0},
 {0,1,1,1,1,0,0,1,1,0,0,1,1,1,1,0},
 {0,0,1,1,0,0,1,1,1,1,0,0,1,1,0,0},
 {0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0},
 {0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0}
 }
};

void setup() 
{
  size(640, 360);
  background(White);
}

void draw() 
{
  
  if (s==1)
  {
    s=0;
    
    //Functie Clearscreen
    Clearscreen(Red);
    
    //Functie Line
    //Variabele Line
    int x_line = 640;
    int y_line = 300;
    int x2_line = 0;
    int y2_line = 300;
    int dikte = 20;
    //Line(x_line,y_line,x2_line,y2_line,dikte,Black);

    //Functie Ellipse
    //Variabele Ellipse
    int x_mp = 200;
    int y_mp = 100;
    int rad_x = 100;
    int rad_y = 50;
    //Ellipse(x_mp,y_mp,rad_x,rad_y,Red);
    
    //Functie Rechthoek
    //Variabele Rechthoek
    int x_rh = 10;
    int y_rh = 10;
    int x2_rh = 200;
    int y2_rh = 200;
    //Rechthoek(x_rh,y_rh,x2_rh,y2_rh,Black);
    
    //Functie Driehoek
    //Variabele Driehoek
    int x_dh = 100;
    int y_dh = 200;
    int x2_dh = 20;
    int y2_dh = 200;
    int x3_dh = 400;
    int y3_dh = 50;
    //Driehoek(x_dh,y_dh,x2_dh,y2_dh,x3_dh,y3_dh,Red);
    
    //Functie Bitmap
    //Variabele Bitmap
    int nr = 4;
    int x_bm = 200;
    int y_bm = 200;
    Bitmap(nr,x_bm,y_bm);
    
 
  }
}

void Line(int x1, int y1, int x2, int y2, int dikte, int c)
{
  if(x1>x2)
  {
    int tempX, tempY;
    tempX = x1;
    tempY = y1;
    x1 = x2;
    y1 = y2;
    x2 = tempX;
    y2 = tempY;
  }
  
  int Xdif = x2 - x1;
  int Ydif = y2 - y1;
  //println(Ydif);
  int d = (int)(dikte); // gewijzigd naar niet delen door 2. Anders wordt de lijn niet wat je verwacht.
  int x,y,dx,dy;
  float fy;
  
  if(Xdif != 0 && Ydif != 0)
  {
    for(x = 0; x<Xdif; x++)
    {
      fy = (x*Ydif)/Xdif;
      println(x);
      //println(fy);
      y = int(fy);
      //println(y);
      for(dy = -d; dy<d; dy++)
      {
        for(dx = -d; dx<d;dx++)
        {
          set((x+dx)+x1,(y+dy)+y1,c);
        }
      }
    }
  }
  else
  {
    if(Xdif == 0)
    {
      int i;
      for(i = 0; i<Ydif; i++)
      {
        for(dx = -d; dx<d;dx++)
        {
          set((x1+dx),y1+i,c);
        }
      }
    }
    if(Ydif == 0)
    {
      int i;
      for(i = 0; i<Xdif; i++)
      {
        for(dy = -d; dy<d; dy++)
        { 
          set((x1+i),(y1+dy),c);
        }
      }
    }
  }
}

void Ellipse(int x, int y, int radius_x, int radius_y, int t_color) 
{
  int x_cor;
  float y_cor;
  float X_kwadraat = 0; 
  float A_kwadraat= 0;
  float B_kwadraat = 0;
  float y_new;
  
  B_kwadraat = (int)pow(radius_y,2);
  A_kwadraat = (int)pow(radius_x,2);

  for (x_cor=0; x_cor<=radius_x; x_cor++)
  {
    X_kwadraat = (int)pow(x_cor,2);

    y_cor = ((float)radius_y/radius_x)*(sqrt(A_kwadraat-X_kwadraat));
    
    set(x_cor+x,(int)y_cor+y,t_color);
    set(x-x_cor,(int)y_cor+y,t_color);
    set(x_cor+x,y-(int)y_cor,t_color);
    set(x-x_cor,y-(int)y_cor,t_color);  
  }
}

void Rechthoek(int x1, int y1, int x2, int y2, int c)
{
  int x3,x4,y3,y4;
  int d = 1;
  
  x3 = x1;
  y3 = y2;
  x4 = x2;
  y4 = y1;
  
  Line(x1,y1,x3,y3,d,c);
  Line(x3,y3,x2,y2,d,c);
  Line(x4,y4,x2,y2,d,c);
  Line(x1,y1,x4,y4,d,c);
}

void Driehoek(int x1, int  y1, int x2, int y2, int x3, int y3, int c)
{
  int d = 1;
  
  Line(x3,y3,x1,y1,d,c);
  Line(x2,y2,x3,y3,d,c);
  Line(x2,y2,x1,y1,d,c);
}

void Bitmap(int n, int x, int y)
{
  int r;
  int c;
  int startX = x-(bitmap_SizeX/2);
  int startY = y-(bitmap_SizeY/2);
  
  for(r=0;r<bitmap_SizeY;r++)
  {
    for(c=0;c<bitmap_SizeX;c++)
    {
      if(bitmap[n][r][c] == 1)
      {
        set(startX+c, startY+r, Yellow);
      }
    }  
  }    
}

void Clearscreen(int c)
{
  background(c);
}

void Wacht()
{
  //Wacht(msec);
}
