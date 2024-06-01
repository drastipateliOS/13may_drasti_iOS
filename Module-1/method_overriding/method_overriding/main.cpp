//
//  main.cpp
//  method_overriding
//
//  Created by MAC1 on 20/05/24.
//

#include <iostream>
class studinfo
{
    public:
    void getdata(int id,char nm[20]) //orignal
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
class first:public studinfo
{
    public:
    void getdata(int id,char nm[20]) //xerox
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
int main(int argc, const char * argv[]) {
    // insert code here...
    
    studinfo st;
    first ft;
    st.getdata(1,"Sanket");
    ft.getdata(2, "Nirav");
    
    
    return 0;
}
