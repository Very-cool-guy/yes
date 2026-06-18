/**
 * this is like, a cool program
*/
public class Hi
{
        public static void main(String[] args)
        {
                System.out.println("hi"); // this says hi
                                          
                double yoMamaWeight = 12022222.0;
                yoMamaWeight += 4;
                double oldWeight = yoMamaWeight++;
                double newWeight = ++yoMamaWeight;
                int nWeight = (int) newWeight;
                boolean weightChanged = true;
                boolean fatMama = newWeight > oldWeight && weightChanged;
                double fatterWeight = fatMama ? newWeight : oldWeight;

                final double EARTH_WEIGHT = 1.0;
                double badNumber = -1;
                double gudNumber = Math.sqrt(Math.pow(badNumber, 2));

                String meow = trademark.substring(0,4);
                String based = meow + " is stupid";
                boolean runOuttaNames = based.equals("JAVA IS STUPID");
                int n = based.length();
                char first = based.charAt(4);
        }
        public static final String trademark = "Java\u2122";
}
