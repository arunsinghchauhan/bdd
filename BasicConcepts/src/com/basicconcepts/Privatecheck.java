package com.basicconcepts;


import com.learn.java.Hello1;

//class Hello
//{
//public int a=20;  
//public void show()
//{
//System.out.println("Hello java");
//}  
//}  
  
public class Privatecheck extends Hello1
{  
 public static void main(String args[])
 {  
  Privatecheck obj= new Privatecheck();
  //Hello1 obj=new Hello1();  
  System.out.println(obj.a); //Compile Time Error, you can't access private data  
  obj.show();   //Compile Time Error, you can't access private methods
 }
}