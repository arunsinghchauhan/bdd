import java.util.Scanner;

public class Assignment6 {
 int number;
 int[] arr;
 int counter;
 public void takeinput()
 {
  System.out.println("Enter the size of the array");
  Scanner read = new Scanner(System.in);
  number = read.nextInt();
  arr = new int[number]; // can not declare the array here, needs to split the declaration and initialization
 }
 
 public void insertingvalues()
 {
 for( counter = 0;counter < number; counter++)
 {
  System.out.println("Enter your values");
  Scanner read = new Scanner(System.in);
  arr[counter] = read.nextInt();
  //read.close(); // Statement causing problems in program
 }
 }
 public void printarray()
 {
  for( counter = 0; counter<number; counter++)
  {
   System.out.println(arr[counter]);
  }
 }
// public void sortarrray()
// {
//  for (int counter = 0; counter<number; counter++)
//  {
//   for (int counter2 = counter+1; counter2<number; counter2++)
//   {
//    if(arr[counter]>arr[counter2]) //if(arr[0]>arr[1])
//    {
//     int temp;
//     temp = arr[counter];
//     arr[counter] = arr[counter2];
//     arr[counter2] = temp;
//    }
//   }
//  }
// }
 

public static void main(String[] args)
{
 Assignment6 A = new Assignment6();
 A.takeinput();
 A.insertingvalues();
 System.out.println("Your original array was ");
 A.printarray();
 //A.sortarrray();
 //System.out.println("\nYour sorted array is ");
 //A.printarray();
}
}