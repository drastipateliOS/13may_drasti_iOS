//
//  main.cpp
//  Single_inher
//
//  Created by MAC1 on 20/05/24.
//

#include <iostream>
class getdata
{
    public:
    int id;
    char nm[20];
    
    void input()
    {
        std::cout<<"Enter ID:";
        std::cin>>id;
        std::cout<<"Enter Name:";
        std::cin>>nm;
    }
};
class printdata:public getdata
{
    public:
    void output()
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
int main(int argc, const char * argv[]) {
    // insert code here...
    
    printdata pt;
    pt.input();
    pt.output();
    
    return 0;
}
