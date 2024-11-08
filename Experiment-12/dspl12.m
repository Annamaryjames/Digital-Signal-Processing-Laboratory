%% 
% EXPERIMENT NO-12
% 
% Linear convolution using DSP kit

#include<math.h>
void main()
{
int *x,*h,*output
int *xl,*hl
int i,k,l,m,n
x=(int*)0x80010000;
h=(int*)0x80011000;
xl=(int*)0x80012000;
hl=(int*)0x80012004;
output=(int*)0x80013000;
l=*xl;
m=*hl;
for(i=0;i<(l+m-1);i++)
{
output[i]=0;
x[l+i]=0;
h[m+i]=0;
}
for(n=0;n<(l+m-1);n++)
{
for(k=0;k<(l+m-1);k++)
{
output[n]=output[n]+(x[k]*h[n-k]);
}
}
}
