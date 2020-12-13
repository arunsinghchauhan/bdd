
public class SocksEx {

	static int socks(int n, int[] ar) {

			int k;
			int count=0;
			for(int j=0;j<n;j++)
			{
			    int m=0;
			    for(k=j+1;k<n;k++)
			     { 
			       if(ar[j]==ar[k])
			       {
			        m=1;
			        break;
			       }
			      if(m!=0)
			       break;
			     }
			
			    if(m!=0)
			    {
			      int pos = k;
			      ar[j+1]=ar[pos];
			      ar[pos]=ar[j+1];
			       j++;
			       count++;
			     }
			}
			
			
			return count;


			}

}
