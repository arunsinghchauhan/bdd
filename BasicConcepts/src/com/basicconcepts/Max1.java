package com.basicconcepts;

public class Max1 {
	
	int array[]={1,1,1,0,1,0,0,1,1,0};
	int count=0,max=0;
	public void m3()
	{
		for(int i=0;i<array.length;i++)
		{
			if(array[i]==1)
			{
				
				count=count+1;
			}
			else
			{
				if(count>max)
				{
					max=count;
				}
				count=0;
			}
		}		
				
				
			
		
		
		System.out.println("The maximum number of consecutive 1's are "+max);
		
	}
	public static void main(String[] args) {
		Max1 m1= new Max1();
		m1.m3();
	}

}
