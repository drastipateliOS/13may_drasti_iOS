//
//  main.cpp
//  OOP1
//
//  Created by MAC1 on 20/05/24.
//

#include <iostream>
class studinfo
{
    int id;
    char nm[10];
    
    public:
    void getdata()
    {
        std::cout<<"Enter your ID:";
        std::cin>>id;
        std::cout<<"Enter your Name:";
        std::cin>>nm;
    }
    void printdata()
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
    
};
int main(int argc, const char * argv[]) {
    // insert code here...
    studinfo st;
    st.getdata();
    st.printdata();
    return 0;
}
