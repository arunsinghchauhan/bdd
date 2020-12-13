public class Emma {
static int clouds(int[] c) {
c[0]=0;
int j=0,count=0;
int l=c.length;
while(j<l-2)
{
if(c[j+1]==0)
{
j=j+1;
if(c[j+1]==0)
{
j=j+1;
}
count++;
}
else
{
j++;
count++;
}
}
return count;


}
}