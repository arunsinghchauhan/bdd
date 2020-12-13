import java.io.IOException;
import java.util.Scanner;

public class Special {
public static void main (String args[]) throws IOException
{
char ar[]=new char[100];
Scanner inputs=new Scanner(System.in);
System.out.println("Enter the length of array");
int n=inputs.nextInt();

for(int i=0;i<n;i++)
{
char c=inputs.next().charAt(0);
ar[i]= c;
}
char arr[]= new char [1000];
int k=0;
int m=ar.length;
for(int j=0;j<m; j++)
{
if(((int)(ar[j]))>=65 &&((int)(ar[j])<=90))
{
arr[k++]=ar[j];
}
else if(((int)(ar[j]))>=97 &&((int)(ar[j])<=122))
{
arr[k++]=ar[j];
}
else if(((int)(ar[j]))>=48 &&((int)(ar[j])<=57))
{
arr[k++]=ar[j];
}
else 
continue;
}
for(int p=0; p<n;p++)
{
System.out.print(arr[p]+" ");
}

}}