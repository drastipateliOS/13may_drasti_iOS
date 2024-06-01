//
//  main.cpp
//  Multiple_inher
//
//  Created by MAC1 on 20/05/24.
//

#include <iostream>
class bca
{
    public:
    int bca_id;
    char bca_nm[20];
    
    void bca_getdata()
    {
        std::cout<<"Enter BCA ID:";
        std::cin>>bca_id;
        std::cout<<"Enter BCA F_name:";
        std::cin>>bca_nm;
    }
};
class bba
{
    public:
    int bba_id;
    char bba_nm[20];

    void bba_getdata()
    {
        std::cout<<"Enter BBA ID:";
        std::cin>>bba_id;
        std::cout<<"Enter BBA F_name:";
        std::cin>>bba_nm;
    }
};
class mca
{
    public:
    int mca_id;
    char mca_nm[20];

    void mca_getdata()
    {
        std::cout<<"Enter MCA ID:";
        std::cin>>mca_id;
        std::cout<<"Enter MCA F_name:";
        std::cin>>mca_nm;
    }
};
class college:public bca,public bba,public mca
{
    public:
    void printdata()
    {
        std::cout<<"\n----BCA Info----";
        std::cout<<"\nBCA_ID"<<bca_id;
        std::cout<<"\nBCA_Name:"<<bca_nm;
        
        std::cout<<"\n----BBA Info----";
        std::cout<<"\nBBA_ID"<<bba_id;
        std::cout<<"\nBBA_Name:"<<bba_nm;
        
        std::cout<<"\n----MCA Info----";
        std::cout<<"\nMCA_ID"<<mca_id;
        std::cout<<"\nMCA_Name:"<<mca_nm;
    }
};
int main(int argc, const char * argv[]) {
    // insert code here...
    
    college cl;
    cl.bca_getdata();
    cl.bba_getdata();
    cl.mca_getdata();
    cl.printdata();
    
    
    return 0;
}
