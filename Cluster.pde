public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        
        for (int i = 0; i < 7; i++){ // loop is to display the beginning 7 lines, each with a random direction (angle)
          Tendril bob = new Tendril(len, (int)(Math.random()*2*Math.PI), x, y);
          // (len, angle between 0 to 2pi, x, y);
          bob.show();
        }
    }
}
