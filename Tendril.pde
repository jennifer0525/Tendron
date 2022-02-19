class Tendril
{
  public final static int SEG_LENGTH = 4;
  private int myNumSegments, myX, myY;
  private double myAngle;
 
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
     int startX = myX;
     int startY = myY;
     int endX= myX;
     int endY= myY;
     for(int i = 0; i < myNumSegments; i++){
       myAngle += (double)((int)(Math.random()*5)-2)/10;
       endX = startX+(int)(Math.cos(myAngle)*SEG_LENGTH);
       endY = startY+(int)(Math.sin(myAngle)*SEG_LENGTH);
       stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       line(startX, startY, endX, endY);
       startX = endX;
       startY = endY;
     }
     if(myNumSegments >= 4){
       stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
       Cluster c = new Cluster(myNumSegments/3, endX, endY);
     }
  }
}
