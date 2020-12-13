package com.basicconcepts;

public class Consective1s {

int temp=0;
int max=0;
	int[]arr= {1,0,1,1,1,0,1,0,1,1,1,1,1,1};
	public void takearr()
	{
		for(int i=0;i<arr.length;i++)
		{
			if(arr[i]==1)
			{
				temp=temp+1;
				
				
			}
			else
			{
				if(temp>max)
				{
					max=temp;
				}
				temp=0;
			}
		}
		if(temp>max)
		{
			max=temp;
		}
		System.out.println("The max count of consecutive 1's are: "+max);
	}
	public static void main(String[] args) {
		Consective1s co= new Consective1s();
		co.takearr();
	}

}
