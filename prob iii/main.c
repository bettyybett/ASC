#include <stdio.h>
#include <stdlib.h>
/*int aplica(int (*f)(int),int x){
return (*f)(x);
}
int f1(int y){return y+y;}
int f2(int y){return y*y;}
int f3(int y){return -y;}
int (*vf[])={f1,f2,f3},v[3];
void main(){
register int i;
for(i=0;i<3;++i)
    {v[i]=aplica(vf[i],1+i);
    printf("%d,",v[i]);}
}
//in final v[0]=2,v[1]=4,v[2]=-3;*/
int main(){
int i=1;
printf("%d",i+i);
i++;
printf("%d",i*i);
i++;
printf("-%d",i);
return 0;}

