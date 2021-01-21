#include <iostream>

using namespace std;

int main()
{
    int i,n,s;
    cin>>n;
    i=1;
    s=0;
    while(i<=n/2)
    {
        if(n%i==0)
        s=s+i;
    i++;
    }
    s=s+n;
    cout<<s;
    return 0;
}
