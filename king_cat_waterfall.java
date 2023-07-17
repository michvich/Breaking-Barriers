//program begins 

public class BreakingBarriers
{
    public static void main(String[] args) 
    {

        //initialize the array of broken barriers
        String[] barriers = new String[2000];

        //loop to set all array elements to null
        for (int i = 0; i < barriers.length; i++)
        {
            barriers[i] = null;
        }

        //loop to iterate through the array and set the barriers to "broken"
        for (int i = 0; i < barriers.length; i++)
        {
            barriers[i] = "broken";
        }

        //loop to print out the array of broken barriers
        for (int i = 0; i < barriers.length; i++)
        {
            System.out.println(barriers[i]);
        }

        //print out a message of accomplishment
        System.out.println("Congratulations! You just broke 2000 barriers!");
    }
}
//program ends