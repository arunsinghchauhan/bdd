import java.util.Scanner;

public class FlourPacker {
public static void main (String args[])
{
Scanner sc=new Scanner (System.in);
int b,s, total;
System.out.println("Enter value for b");
b= sc.nextInt();
System.out.println("Enter value for s");
s= sc.nextInt();
System.out.println("Enter the value for total");
total=sc.nextInt();

System.out.println(canPack(b,s,total));
}


static boolean canPack (int bigCount,int smallCount,int goal)
{
int big= bigCount*5;
int small= smallCount*1;
int sum= big+small;
if(big>goal)
return false;
else if(big==goal)
return true;
else if (small==goal)
return true;
else if (small>goal)
return true; 
else if(sum>goal)
return true;
else
return false;
}

}