/*Program: Amazing Dynamic House
 Author:  Nicholas Mullikin
 Date:    10/19/14
 Notes:   Day does not work on Firefox.
 If you intend to trigger the bomb, you should set the maximum available memormy to around 2500MB in [Processing: Prefereces...]
 The birds come back on the other sided of the screen if you move them too far.
 Keys:
 w/Up Arrow Key - Moves the three birds up
 a/Left Arrow Key - Moves the three birds left
 s/Down Arrow Key - Moves the three birds down
 d/Right Arrow Key - Moves the three birds right
 b - detonates an atomic bomb over and over until another key is pressed
 r - initiates rain
 s - initiates snow
 
 */


/* @pjs preload="data/8c - original.png"; */
/* @pjs preload="data/bird.png"; */

/* @pjs preload="data/tmp-0.gif, data/tmp-1.gif, data/tmp-2.gif, data/tmp-3.gif, data/tmp-4.gif, data/tmp-5.gif, data/tmp-6.gif, data/tmp-7.gif, data/tmp-8.gif, data/tmp-9.gif, data/tmp-10.gif, data/tmp-11.gif, data/tmp-12.gif, data/tmp-13.gif, data/tmp-14.gif, data/tmp-15.gif, data/tmp-16.gif, data/tmp-17.gif, data/tmp-18.gif, data/tmp-19.gif, data/tmp-20.gif, data/tmp-21.gif, data/tmp-22.gif, data/tmp-23.gif, data/tmp-24.gif, data/tmp-25.gif, data/tmp-26.gif, data/tmp-27.gif, data/tmp-28.gif, data/tmp-29.gif, data/tmp-30.gif, data/tmp-31.gif, data/tmp-32.gif, data/tmp-33.gif, data/tmp-34.gif, data/tmp-35.gif, data/tmp-36.gif, data/tmp-37.gif, data/tmp-38.gif, data/tmp-39.gif, data/tmp-40.gif, data/tmp-41.gif, data/tmp-42.gif, data/tmp-43.gif, data/tmp-44.gif, data/tmp-45.gif, data/tmp-46.gif, data/tmp-47.gif, data/tmp-48.gif, data/tmp-49.gif, data/tmp-50.gif, data/tmp-51.gif, data/tmp-52.gif, data/tmp-53.gif, data/tmp-54.gif, data/tmp-55.gif, data/tmp-56.gif, data/tmp-57.gif, data/tmp-58.gif, data/tmp-59.gif, data/tmp-60.gif, data/tmp-61.gif, data/tmp-62.gif, data/tmp-63.gif, data/tmp-64.gif, data/tmp-65.gif, data/tmp-66.gif, data/tmp-67.gif, data/tmp-68.gif, data/tmp-69.gif, data/tmp-70.gif, data/tmp-71.gif, data/tmp-72.gif, data/tmp-73.gif, data/tmp-74.gif, data/tmp-75.gif, data/tmp-76.gif, data/tmp-77.gif, data/tmp-78.gif, data/tmp-79.gif, data/tmp-80.gif, data/tmp-81.gif, data/tmp-82.gif, data/tmp-83.gif, data/tmp-84.gif, data/tmp-85.gif, data/tmp-86.gif, data/tmp-87.gif, data/tmp-88.gif, data/tmp-89.gif, data/tmp-90.gif, data/tmp-91.gif, data/tmp-92.gif, data/tmp-93.gif, data/tmp-94.gif, data/tmp-95.gif, data/tmp-96.gif, data/tmp-97.gif, data/tmp-98.gif, data/tmp-99.gif, data/tmp-100.gif, data/tmp-101.gif, data/tmp-102.gif, data/tmp-103.gif, data/tmp-104.gif, data/tmp-105.gif, data/tmp-106.gif, data/tmp-107.gif, data/tmp-108.gif, data/tmp-109.gif, data/tmp-110.gif, data/tmp-111.gif, data/tmp-112.gif, data/tmp-113.gif, data/tmp-114.gif, data/tmp-115.gif, data/tmp-116.gif, data/tmp-117.gif, data/tmp-118.gif, data/tmp-119.gif, data/tmp-120.gif, data/tmp-121.gif, data/tmp-122.gif, data/tmp-123.gif, data/tmp-124.gif, data/tmp-125.gif, data/tmp-126.gif, data/tmp-127.gif, data/tmp-128.gif, data/tmp-129.gif, data/tmp-130.gif, data/tmp-131.gif, data/tmp-132.gif, data/tmp-133.gif, data/tmp-134.gif, data/tmp-135.gif, data/tmp-136.gif, data/tmp-137.gif, data/tmp-138.gif, data/tmp-139.gif, data/tmp-140.gif, data/tmp-141.gif, data/tmp-142.gif, data/tmp-143.gif, data/tmp-144.gif, data/tmp-145.gif, data/tmp-146.gif, data/tmp-147.gif, data/tmp-148.gif, data/tmp-149.gif, data/tmp-150.gif, data/tmp-151.gif, data/tmp-152.gif, data/tmp-153.gif, data/tmp-154.gif, data/tmp-155.gif, data/tmp-156.gif, data/tmp-157.gif, data/tmp-158.gif, data/tmp-159.gif, data/tmp-160.gif, data/tmp-161.gif, data/tmp-162.gif, data/tmp-163.gif, data/tmp-164.gif, data/tmp-165.gif, data/tmp-166.gif, data/tmp-167.gif, data/tmp-168.gif, data/tmp-169.gif, data/tmp-170.gif, data/tmp-171.gif, data/tmp-172.gif, data/tmp-173.gif, data/tmp-174.gif, data/tmp-175.gif, data/tmp-176.gif, data/tmp-177.gif, data/tmp-178.gif, data/tmp-179.gif, data/tmp-180.gif, data/tmp-181.gif, data/tmp-182.gif, data/tmp-183.gif, data/tmp-184.gif, data/tmp-185.gif, data/tmp-186.gif, data/tmp-187.gif, data/tmp-188.gif, data/tmp-189.gif, data/tmp-190.gif, data/tmp-191.gif, data/tmp-192.gif, data/tmp-193.gif, data/tmp-194.gif, data/tmp-195.gif, data/tmp-196.gif, data/tmp-197.gif, data/tmp-198.gif, data/tmp-199.gif, data/tmp-200.gif, data/tmp-201.gif, data/tmp-202.gif, data/tmp-203.gif, data/tmp-204.gif, data/tmp-205.gif, data/tmp-206.gif, data/tmp-207.gif, data/tmp-208.gif, data/tmp-209.gif, data/tmp-210.gif, data/tmp-211.gif, data/tmp-212.gif, data/tmp-213.gif, data/tmp-214.gif, data/tmp-215.gif, data/tmp-216.gif, data/tmp-217.gif, data/tmp-218.gif, data/tmp-219.gif, data/tmp-220.gif, data/tmp-221.gif, data/tmp-222.gif, data/tmp-223.gif, data/tmp-224.gif, data/tmp-225.gif, data/tmp-226.gif, data/tmp-227.gif, data/tmp-228.gif, data/tmp-229.gif, data/tmp-230.gif, data/tmp-231.gif, data/tmp-232.gif, data/tmp-233.gif, data/tmp-234.gif, data/tmp-235.gif, data/tmp-236.gif, data/tmp-237.gif, data/tmp-238.gif, data/tmp-239.gif, data/tmp-240.gif, data/tmp-241.gif, data/tmp-242.gif, data/tmp-243.gif, data/tmp-244.gif, data/tmp-245.gif, data/tmp-246.gif, data/tmp-247.gif, data/tmp-248.gif, data/tmp-249.gif, data/tmp-250.gif, data/tmp-251.gif, data/tmp-252.gif, data/tmp-253.gif, data/tmp-254.gif, data/tmp-255.gif, data/tmp-256.gif, data/tmp-257.gif, data/tmp-258.gif, data/tmp-259.gif, data/tmp-260.gif, data/tmp-261.gif, data/tmp-262.gif, data/tmp-263.gif, data/tmp-264.gif, data/tmp-265.gif, data/tmp-266.gif, data/tmp-267.gif, data/tmp-268.gif, data/tmp-269.gif, data/tmp-270.gif, data/tmp-271.gif, data/tmp-272.gif, data/tmp-273.gif, data/tmp-274.gif, data/tmp-275.gif, data/tmp-276.gif, data/tmp-277.gif, data/tmp-278.gif, data/tmp-279.gif, data/tmp-280.gif, data/tmp-281.gif, data/tmp-282.gif, data/tmp-283.gif, data/tmp-284.gif, data/tmp-285.gif, data/tmp-286.gif, data/tmp-287.gif, data/tmp-288.gif, data/tmp-289.gif, data/tmp-290.gif, data/tmp-291.gif, data/tmp-292.gif, data/tmp-293.gif, data/tmp-294.gif, data/tmp-295.gif, data/tmp-296.gif, data/tmp-297.gif, data/tmp-298.gif, data/tmp-299.gif, data/tmp-300.gif, data/tmp-301.gif, data/tmp-302.gif, data/tmp-303.gif, data/tmp-304.gif, data/tmp-305.gif, data/tmp-306.gif, data/tmp-307.gif, data/tmp-308.gif, data/tmp-309.gif, data/tmp-310.gif, data/tmp-311.gif, data/tmp-312.gif, data/tmp-313.gif, data/tmp-314.gif, data/tmp-315.gif, data/tmp-316.gif, data/tmp-317.gif, data/tmp-318.gif, data/tmp-319.gif, data/tmp-320.gif, data/tmp-321.gif, data/tmp-322.gif, data/tmp-323.gif, data/tmp-324.gif, data/tmp-325.gif, data/tmp-326.gif, data/tmp-327.gif, data/tmp-328.gif, data/tmp-329.gif, data/tmp-330.gif, data/tmp-331.gif, data/tmp-332.gif, data/tmp-333.gif, data/tmp-334.gif, data/tmp-335.gif, data/tmp-336.gif, data/tmp-337.gif, data/tmp-338.gif, data/tmp-339.gif, data/tmp-340.gif, data/tmp-341.gif, data/tmp-342.gif, data/tmp-343.gif, data/tmp-344.gif, data/tmp-345.gif, data/tmp-346.gif, data/tmp-347.gif, data/tmp-348.gif, data/tmp-349.gif, data/tmp-350.gif, data/tmp-351.gif, data/tmp-352.gif, data/tmp-353.gif, data/tmp-354.gif, data/tmp-355.gif, data/tmp-356.gif, data/tmp-357.gif, data/tmp-358.gif, data/tmp-359.gif, data/tmp-360.gif, data/tmp-361.gif, data/tmp-362.gif, data/tmp-363.gif, data/tmp-364.gif, data/tmp-365.gif, data/tmp-366.gif, data/tmp-367.gif, data/tmp-368.gif, data/tmp-369.gif, data/tmp-370.gif, data/tmp-371.gif, data/tmp-372.gif, data/tmp-373.gif, data/tmp-374.gif, data/tmp-375.gif, data/tmp-376.gif, data/tmp-377.gif, data/tmp-378.gif, data/tmp-379.gif, data/tmp-380.gif, data/tmp-381.gif, data/tmp-382.gif, data/tmp-383.gif, data/tmp-384.gif, data/tmp-385.gif, data/tmp-386.gif, data/tmp-387.gif, data/tmp-388.gif, data/tmp-389.gif, data/tmp-390.gif, data/tmp-391.gif, data/tmp-392.gif, data/tmp-393.gif, data/tmp-394.gif, data/tmp-395.gif, data/tmp-396.gif, data/tmp-397.gif, data/tmp-398.gif, data/tmp-399.gif, data/tmp-400.gif, data/tmp-401.gif, data/tmp-402.gif, data/tmp-403.gif, data/tmp-404.gif, data/tmp-405.gif, data/tmp-406.gif, data/tmp-407.gif, data/tmp-408.gif, data/tmp-409.gif, data/tmp-410.gif, data/tmp-411.gif, data/tmp-412.gif, data/tmp-413.gif, data/tmp-414.gif, data/tmp-415.gif, data/tmp-416.gif, data/tmp-417.gif, data/tmp-418.gif, data/tmp-419.gif, data/tmp-420.gif, data/tmp-421.gif, data/tmp-422.gif, data/tmp-423.gif, data/tmp-424.gif, data/tmp-425.gif, data/tmp-426.gif, data/tmp-427.gif, data/tmp-428.gif, data/tmp-429.gif, data/tmp-430.gif, data/tmp-431.gif, data/tmp-432.gif, data/tmp-433.gif, data/tmp-434.gif, data/tmp-435.gif, data/tmp-436.gif, data/tmp-437.gif, data/tmp-438.gif, data/tmp-439.gif, data/tmp-440.gif, data/tmp-441.gif, data/tmp-442.gif, data/tmp-443.gif, data/tmp-444.gif, data/tmp-445.gif, data/tmp-446.gif, data/tmp-447.gif, data/tmp-448.gif, data/tmp-449.gif, data/tmp-450.gif, data/tmp-451.gif, data/tmp-452.gif, data/tmp-453.gif, data/tmp-454.gif, data/tmp-455.gif, data/tmp-456.gif, data/tmp-457.gif, data/tmp-458.gif, data/tmp-459.gif, data/tmp-460.gif, data/tmp-461.gif, data/tmp-462.gif, data/tmp-463.gif, data/tmp-464.gif, data/tmp-465.gif, data/tmp-466.gif, data/tmp-467.gif, data/tmp-468.gif, data/tmp-469.gif, data/tmp-470.gif, data/tmp-471.gif, data/tmp-472.gif, data/tmp-473.gif, data/tmp-474.gif, data/tmp-475.gif"; */


float x = 0;
float y = 0;
int c=8;
int px = 400;//point x
int py = 400;//point y
int r = 400;//radius
float x1 =0;
float y1 = 0;
float t = millis()/1000;
int click = 0;
float x2=random(300, 500);
float x3 =0;
float x4 = random(-100, 100);
float x5 = 0;
float x6 = random(500, 700);
float x7 = 0;
int d=1;
PImage photo;
PImage bird;
PImage tj;
float stx = random(5);

int bC=1000;
float[] circleX = new float [bC];
float[] circleY = new float [bC];

float[] circlX = new float [bC];
float[] circlY = new float [bC];

float speedY = 3;
float diam=10;
float dia=2;

float sx[]= new float[50];
float sy[]= new float[50];

float sm1 =0;
float sm2 =50;
float sm3 = 0;

float rain1; 
float rain2;

float snow1;
float snow2;

int chs = 0;
int chr = 0;

int sch = 4;

int numFrames = 480;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
int x_key=0;
int y_key=0;

void setup()
{
  smooth();
  size(800, 500);
  noStroke();

  for (int i = 0; i <=475; i++)
  {
    images[i] = loadImage("data/tmp-"+i+".gif");
  }

  photo = loadImage("data/8c - original.png");
  bird = loadImage("data/bird.png");

  for (int i=0; i<bC; i++) {
    circleX[i]=random(800);
    circleY[i]=random(-1000, 0);
    circlX[i]=random(800);
    circlY[i]=random(-1000, 0);
  } 

  for (int i=0; i<50; i++) {
    sx[i]=random(800);
    sy[i]=random(800);

    ellipse(sx[i], sy[i], random(5), random(5));
  }
}//end of setup
void draw() {

  if (x==799)
  {
    click++;
  }

  //frameRate(30);

  float t = millis()/1000.0; // speed
  float x = (int)(px+r*cos(t));//x of sun/moon
  float y = (int)(py+r*sin(t));//y of sun/moon

  x1=y-140;

  if (x>0&&y<801)
  {  
    background(18+cos(x1), 232-x1, 234-x1);
  }//sky
  //println(y=799);
  if (y == 799 || key == 'g')
  {
    c=c+1;
  }//sun/moon counter

  if ((c/8)%2==0)
  {  
    fill(255, 242, 0);
    image(bird, 400, 400);
  } // daytime

  else
  {
    background(0, 0, 0);
    for (int i=0; i<50; i++) {
      fill(255);
      ellipse(sx[i], sy[i], random(5), random(5));
      //    fill(255,242, 0);
    }
  }



  ellipse(x, y, 90, 90);//sun/moon


  //if (key == 'b')
  //{
  //  frameRate(20);
  // currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
  //  //for (int x = -100; x < width; x += images[0].width) { 
  //    println(currentFrame+" "+numFrames);
  //    images[currentFrame].resize(850,640);
  //    image(images[currentFrame], 0, -130);
  //    
  //  if (currentFrame >=450)
  //  {
  //    currentFrame = 0;
  //    
  //  }
  //  
  //}


  for (int fx = 0; fx <800; fx=fx+26) {
    fill(255);
    rect(fx, 400, 20, 100);
    triangle(0+fx, 400, 10+fx, 385, 20+fx, 400);//fence
  }
  if (y == 799)
  {
    x3=random(-4, 4);
    x5=random(-4, 4);
    x7=random(-4, 4);
    stx = random(5);
  }
  x2=x3+x2;
  x4=x4+x5;
  x6=x6+x7;
  if (x2>=700)
  {
    x2=-100;
  }
  if (x2<-100)
  {
    x2=700;
  }

  if (x4>=700)
  {
    x4=-100;
  }
  if (x4<-100)
  {
    x4=700;
  }

  if (x6>=700)
  {
    x6=-100;
  }
  if (x6<-100)
  {
    x6=700;
  }

  if (y==0&&((c/8)%2==0)) {
    for (int i=0; i<50; i++) {//rain
      sx[i]=random(800);
      sy[i]=random(500);
    }
  }

  fill(100, 50);//clouds
  ellipse(100+x2, 120, 100, 100);
  ellipse(140+x2, 120, 100, 100);
  ellipse(160+x2, 120, 100, 100);
  ellipse(130+x2, 100, 100, 100);

  fill(100, 50);//clouds
  ellipse(100+x4, 240, 100, 100);
  ellipse(140+x4, 240, 100, 100);
  ellipse(160+x4, 240, 100, 100);
  ellipse(130+x4, 220, 100, 100);

  fill(100, 50);//clouds
  ellipse(100+x6, 160, 100, 100);
  ellipse(140+x6, 160, 100, 100);
  ellipse(160+x6, 160, 100, 100);
  ellipse(130+x6, 140, 100, 100);


  fill(116, 71, 48);//house
  rect(180, 180, 370, 195);
  rect(500, 90, 40, 90);
  triangle(180, 180, 350, 100, 550, 180);


  if (click%2==0)
  {
    if (click%4==0)
    {
      fill(153, 217, 234);
    } else if (click%4==2)
      fill(240, 232, 196);  

    //fill(153, 217, 234);
    rect(230, 270, 40, 60);//house
    rect(470, 270, 40, 60);
    if (click%4==0)
    {
      image(photo, 474, 280);
    } else if (click%4==2)
      image(photo, 234, 280);
  } else
  {
    fill(0, 0, 0); 
    rect(230, 270, 40, 60);//house
    rect(470, 270, 40, 60);
  }



  //rect(230,270,40,60);//house
  //rect(470,270,40,60);

  fill(185, 122, 87);
  rect(330, 260, 50, 115);

  fill(34, 177, 76);
  rect(0, 375, 800, 500);

  fill(185, 122, 87);
  rect(630, 240, 50, 135);

  fill(34, 177, 76);
  ellipse(650, 200, 180, 85);

  for (int fx = 0; fx <800; fx=fx+26) {
    fill(255);
    rect(fx, 400, 20, 100);
    triangle(0+fx, 400, 10+fx, 385, 20+fx, 400);//fence
    //triangle();
  }

  rect(0, 430, 800, 5);//fence
  rect(0, 470, 800, 5);


  fill(20, 100);
  ellipse(530, 75-sm1*2, 30+sm1, 30+sm1);//smoke
  sm1=sm1+2;
  if (sm1>100)
  {
    sm1=0;
  }

  sm2=sm2+3;
  ellipse(515, 75-sm2*2, 30+sm2, 30+sm2); //smoke
  if (sm2>150)
  {
    sm2=0;
  }


  sm3=sm3+4;
  ellipse(515, 75-sm3*2, 30+sm3, 30+sm3);//smoke
  if (sm3>150)
  {
    sm3=0;
  }


  image(bird, 600-x/31.9+x_key, 180+y/35+y_key);
  image(bird, 620+x/31.1+x_key, 175+y/35+y_key);
  image(bird, 610+x/31+x_key, 185+y/35+y_key);
  if (x_key>300)
  {
    x_key = -600;
  }
  if (x_key<-600)
  {
    x_key = 300;
  }
  if (y_key>300)
  {
    y_key = -400;
  }
  if (y_key<-400)
  {
    y_key = 300;
  }

  if (y==799&&c/8%4==0)//sets time between rain/snow interval 
  {
    snow1= random(500000, 550000);
    snow2= random(600000, 650000);
    rain1= random(6000, 10000);
    rain2= random(12000, 14000);
  }



  if ((millis()%1000000<snow1&& millis()%1000000>snow2) ||( chs %2==1)) {//snow&clouds
    fill(255, 255);
    for (int i=0; i<bC; i++) {//snow
      circlY[i] += speedY;
      diam=random(3, 5);
      dia=random(3, 5);
      ellipse(circlX[i], circlY[i], dia, diam);

      if (circlY[i]>height) {
        circlY[i]=random(-500, 0);//snow
      }
    }
    for (int i=0; i<50; i++)//clouds
    {
      fill(100, 200);
      ellipse(25+61*i, 30, 100, 100);
      ellipse(61*i, 45, 100, 100);

      fill(70, 70, 70, random(2, 5));
      rect(0, 0, 800, 500);
    }
  } else
  {
    for (int i=0; i<bC; i++)
    {
      circlY[i]=random(-500, 0);
    }
  }

  if ((millis()%20000>rain1&& millis()%20000<rain2 )||( chr %2==1)) {
    fill(100, 150);
    for (int i=0; i<bC; i++) {
      circleY[i] += speedY*2;
      diam=random(3, 5);
      dia=random(2, 4);
      ellipse(circleX[i], circleY[i], dia, diam);

      if (circleY[i]>height) {
        circleY[i]=random(-500, 0);
      }
    }
    for (int i=0; i<50; i++)
    {
      fill(100, 200);
      ellipse(25+61*i, 30, 100, 100);
      ellipse(61*i, 45, 100, 100);

      fill(70, 70, 70, random(2, 5));
      rect(0, 0, 800, 500);
    }
  } else
  {
    for (int i=0; i<bC; i++)
    {
      circleY[i]=random(-500, 0);
    }
  }










  if (sch%2==1)
  {
    for (int i = 0; i < width; i = i+1) {
      for (int e = 0; e < width; e = e+1) {
        color c=get(i, e);
        float red1=red(c);
        float green1=green(c);
        float blue1=blue(c);
        if ((blue1==0&&green1==0&&red1==0)||(blue1==255&&green1==255&&red1==255))
        {
          blue1=random(200);
          red1=random(200);
          green1=random(200);
        }
        if (click%3==1)
        {
          if (millis()%3==1) {
            set(i, e, color(green1, red1, blue1));
          }
          if (millis()%3==2) {
            set(i, e, color(blue1, green1, red1));
          }
          if (millis()%3==3) {
            set(i, e, color(green1, blue1, red1));
          }
        }
        if (click%3==2)
        {
          if (millis()%3==1) {
            set(i, e, color(green1*2, red1*2, blue1*2));
          }
          if (millis()%3==2) {
            set(i, e, color(blue1*2, green1*2, red1*2));
          }
          if (millis()%3==3) {
            set(i, e, color(green1*2, blue1*2, red1*2));
          }
        }
        if (click%3==0)
        {
          if (millis()%3==1) {
            set(i, e, color(green1/2, red1/2, blue1/2));
          }
          if (millis()%3==2) {
            set(i, e, color(blue1/2, green1/2, red1/2));
          }
          if (millis()%3==3) {
            set(i, e, color(green1/2, blue1/2, red1/2));
          }
        }
      }
    }
  }
  // println(x+" "+y);
  if (key == 'b')
  {
    frameRate(20);
    currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
    //for (int x = -100; x < width; x += images[0].width) { 
    //println(currentFrame+" "+numFrames);
    images[currentFrame].resize(850, 640);
    image(images[currentFrame], 0, -62);

    if (currentFrame >=450)
    {
      currentFrame = 0;
    }
  }
}//end
void keyPressed()
{
  if (key == 'r') {
    chr++;
  }
  if (key == 't') {
    chs++;
  }
  if (key == 'w' || keyCode == UP) {
    y_key+= -5;
  }
  if (key == 'a' || keyCode == LEFT) {
    x_key+= -5;
  }
  if (key == 's' || keyCode == DOWN) {
    y_key+= 5;
  }
  if (key == 'd' || keyCode == RIGHT) {
    x_key+= 5;
  }

  if (key == 'p')
  {
    sch++;
  }
}
void mouseClicked()
{
  click=click+1;
}
