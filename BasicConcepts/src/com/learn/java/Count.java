package com.learn.java;

public class Count {

	String[] arr= {"a","a","a","b","b","b","b","c","c","c","c","c","d","a","b","c","d"};
	int c=0;int max=0;
	public void toCount()
	{
		for(int i=0;i<arr.length;i++)
		{
			if(arr[i]=="a")
			{
				c++;
				if(c>max){
					max=c;
					
				}	    
				
				
			}
			else 
				c=0;
			   
		}
		 
			
				
		
		System.out.println("Count of max. consecutive 'a' in array is: "+max);
	}
	
	public static void main(String[] args) {

		Count ob= new Count();
		ob.toCount();
	}

}
