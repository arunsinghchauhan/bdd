
class Outer_Demo{
   int num=10;
   //inner class
   private class Inner_Demo{
      public void print(){	   
      System.out.println("This is an inner class");
      }
   }
   //Accessing the inner class from the method within
   void display_Inner(){
      Inner_Demo inner = new Inner_Demo();
      inner.print();
   }
}
   
public class My_class{
   public static void main(String args[]){
      //Instantiating the outer class 
      Outer_Demo outer=new Outer_Demo();
      //Accessing the display_Inner() method.
      outer.display_Inner();
     // System.out.println(num);//it does not recognize num because it is a variable present in other class
   }

}