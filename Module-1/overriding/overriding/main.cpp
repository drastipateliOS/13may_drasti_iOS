//
//  main.cpp
//  overriding
//
//  Created by MAC1 on 22/05/24.
//

#include <iostream>
class master
{
    public:
    void getdata(int id,char nm[10]) //original
    {
        std::cout<<"ID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
class home:public master
{
public:
    void getdata(int id,char nm[10]) //xerox
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
class about:public master
{
public:
    void getdata(int id,char nm[10]) //xerox
    {
        std::cout<<"\nID:"<<id;
        std::cout<<"\nName:"<<nm;
    }
};
int main(int argc, const char * argv[]) {
   
    master ms;
    home h;
    about a;
    ms.getdata(1, "Sanket");
    h.getdata(2, "Nirav");
    a.getdata(3, "Mitesh");
    
    return 0;
}
