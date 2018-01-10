//Mario game
PImage brick;
PImage starbrick;
PImage floorbrick;
PImage man;
PImage enemy;
PImage boss;
PImage screen;
PImage man2;
PImage fireman;
PImage screen2;
PImage star;
PImage tod;
PImage cloud;
PImage fire;
PImage door;
PImage land;
PImage lose;
PImage win;
PImage violet;
PImage bf;
PImage gold;


int q=0;
int q1=0;
int q2=0;
int q3=0;
int q4=0;
int x;
int y;
int x1;
int x2=0;
int x3=0;
int y3=0;
int y1;
int y2=0;
int y4=0;
int y5=0;
int y6=0;
int X1;
int Y1;
int x4=0;
int x5=0;
int x6=0;
int o=0;
int a=0;
int o1=0;
int k=0;
int b=0;



float[]Xs=new float[50];
float[]Ys=new float[50];
float[]X1s=new float[50];
float[]Y1s=new float[50];
float[]X2s=new float[50];
float[]Y2s=new float[50];
float[]X3s=new float[50];
float[]Y3s=new float[50];

void setup()
{
  size(1200,800);
  loadImages();
  arrays();  
}

void draw()
{
   images();
   firstlines();
   scene1();
   scene2();
   lastscene();  
}
void images()
  {
   image(screen,0-o,0,1200,800);
   image(screen2,1200-o,0,1200,800);
   image(door,2250-o,600,150,150);
   image(land,2400-o+o1,0,1200,1200);
   image(boss,3000-o+o1,500,200-b,200-b);
   image(man,0+x+a,600+y,100,100);
  }
  
void firstlines()
{
  PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String z="Your mission is to save the city from Kuppa";
    String z1="Use j to move backwards and use l to move forward";
    text(z, 0+q, 70);
    text(z1, 0+q, 140);
}

void scene1()
{
  if(x+a>70)
    {
      q=-1200;
    }
    
   image(floorbrick, 0,  750, 2400, 50);
   image(floorbrick, 0, 700, 2400, 50);
   image(floorbrick,550,530+o,50,50);
   
   image(star,600,530+o,50,50);
   if(x+a>510)
   {
    PFont b= createFont("Georgina", 63);
    textFont(b);
    textSize(40);
    String z2="Press u to jump at the magic box";
    text(z2,0+q1,500);
   }
   image(floorbrick,650,530+o,50,50);
   image(star,700,530+o,50,50);
   if(x+a>600)
   {
    PFont b= createFont("Georgina", 63);
    textFont(b);
    textSize(40);
    String z3="Press i to jump at the magic box";
    text(z3,0+q2,500);
    q1=-1200;
   }
   image(floorbrick,750,530+o,50,50);
   image(star,800,530+o,50,50);
   if(x+a>710)
   {
    PFont b= createFont("Georgina", 63);
    textFont(b);
    textSize(40);
    String z4="Press o to jump at the magic box";
    text(z4,0+q3,500);
    q2=-1200;
   }
   image(floorbrick,850,530+o,50,50);
   image(cloud,-500+x2++,150,100,70);
   image(cloud,-400+x2++,200,200,100);
   image(cloud,-300+x2+++x2++,200,100,70);
   image(cloud,-400+x2++,200,200,100);
   image(cloud,-150+x2++,100,150,80);
   image(cloud,400+x2+++x2++,200,100,70);
   image(cloud,600+x2++,200,200,100);
   image(cloud,200+x2++,100,150,80);
   image(cloud,800+x2+++x2++, 100, 250,150);
   image(cloud,800+x2++, 100, 250,150);
   image(cloud,50+x2+++x2++,150, 150,100);
   
   if((50+x2+++x2++)>1150)
   {
     x2=0;
   }
  
  if(x+a>1150)
  {
    o=1200;
    q3=-1200;
    x=0;
    a=0;
    y=0;
   image(man,0+x+a,600+y,100,100);
   image(floorbrick, 0,  750, 2400, 50);
   image(floorbrick, 0, 700, 2400, 50);
   if(X1>750)
   {
     X1=0;
   }
  }
 
}

void scene2()
{
  if(x+a>800)
 {
 image(fire,1000,600,100+x3,100+y3);
 }
 if(x+a>1005)
 {
   x3=-100;
   y3=-100;
 }
 if(a+x>2150-o)
   {
    PFont a= createFont("Georgina", 63);
    textFont(a);
    textSize(40);
    String o="Do you want go through the door?";
    String o1="Press z";
    text(o, 0+k, 500);
    text(o1, 0+k, 580);
   }
    if(a+x>1350-o)
   {
     q4=-1200;
   }
   
   if(a+x>1150-o)
   {
     x4=x4-20;
     x5=x5-15;
     x6=x6-10;
   
   image(enemy,2000-o+x4,650,50,50+y4);
   image(enemy,2050-o+x5,650,50,50+y5);
   image(enemy,2100-o+x6,650,50,50+y6);
   
   if((2000-o+x4-x-a)<60)
   {
     if(key=='k')
     {
       y4=-50;
     }
     
    if((2050-o+x5-x-a)<60)
   {
     if(key=='k')
     {
       y5=-50;
     }
     
     if((2100-o+x6-x-a)<60)
   {
     if(key=='k')
     {
       y6=-50;
     }
  
   }
   }
   }  
   
   
   }
}
  
void lastscene()
{
  if(200-b<10)
   {
     image(win,0,0,1200,1200);
     o1=1000;
     
   for (int i=0; i<40; i++)
   {
     image(gold, Xs[i], Ys[i], 50, 50);
    image(violet, X1s[i], Ys[i], 50, 50);
     image(bf, X2s[i], Y2s[i], 50, 50);
     image(fire,X3s[i], Y3s[i], 50, 50);
    
    }    
}
  PFont a= createFont("Georgina", 63);
    textFont(a);
    textSize(40);
    String o7="You have gained skill: fire";
    String o8="Press k to use fire when the goombas come close";
    text(o7, 1200-o+q4, 500);
    text(o8, 1200-o+q4, 580);
    
   PFont b= createFont("Georgina", 63);
    textFont(b);
    textSize(40);
    String o9="Kuppa is trying to destroy the city";
    String o10="stop kuppa before he shoots";
    String o11="press f many times to stop kuppa";
    text(o9, 2400-o+o1, 400);
    text(o10, 2400-o+o1, 480);
    text(o11, 2400-o+o1, 560);
}


void arrays()
{
   for (int i=0; i<50; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }
  for (int i=0; i<50; i++)
  {
    X1s[i]=random(width);
    Y1s[i]=random(height);
  }
  for (int i=0; i<50; i++)
  {
    X2s[i]=random(width);
    Y2s[i]=random(height);
  }
  for (int i=0; i<50; i++)
  {
    X3s[i]=random(width);
    Y3s[i]=random(height);
  }
}



void loadImages()
{
  floorbrick=loadImage("floor.png");
  starbrick=loadImage("star.png");
  man=loadImage("men.png");
  screen=loadImage("blue.png");
  man2=loadImage("men2.png");
  fireman=loadImage("fireman.png");
  screen2=loadImage("green.jpeg");
  star=loadImage("star.png");
  tod=loadImage("tod.png");
  cloud=loadImage("cloud.png");
  fire=loadImage("fire.png");
  boss=loadImage("boss.png");
  enemy=loadImage("enemy.png");
  door=loadImage("door.png");
  land=loadImage("land.jpeg");
  lose=loadImage("lose.jpg");
  win=loadImage("win.png");
  bf=loadImage("bf.png");
  gold=loadImage("gold.png");
  violet=loadImage("violet.png");
  
}

void keyPressed()
{
  if(key=='l')
  {
    x=x+50;
    image(man2,50+X1+a,600,50,100);
    X1=X1+50;
  }
  if(key=='j')
  {
    x=x-50;
    image(man2,0+X1+a,600,50,100);
    X1=X1-50;
  }
  if(key=='k')
  {
    image(fireman,10+x+a,600+y,100,100);
   //image(enemy,2000-o+x4,650,50,50);
   //image(enemy,1900-o+x5,650,50,50);
   //image(enemy,1800-o+x6,650,50,50);
   
    
  }
  if(key=='i')
  {
    Y1=Y1-25;
    y=0;
    image(man2,50+X1+a,600+Y1,50,100);
    Y1=0;
    a=a+50; 
    image(fire,700,480+o,50,50);
  }
  if(key=='u')
  {
    Y1=Y1-25;
    y=0;
    image(man2,50+X1+a,600+Y1,50,100);
    Y1=0;
    a=a+50; 
    image(fire,600,480+o,50,50);
    
  }
  if(key=='o')
  {
    Y1=Y1-25;
    y=0;
    image(man2,50+X1+a,600+Y1,50,100);
    Y1=0;
    a=a+50; 
    image(fire,800,480+o,50,50);
  }
  if(key=='z')
  {
    o1=-1200;
    k=-1200;
    x=10000;
    a=10000;
  }
  
  if(key=='f')
  {
    b=b+5;
  }
}