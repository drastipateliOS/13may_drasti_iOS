//
//  main.cpp
//  overloading
//
//  Created by MAC1 on 22/05/24.
//

#include <iostream>
class student
{
    public:
    //method overloading
    void getdata(int id)
    {
        std::cout<<"\nID:"<<id;
    }
    void getdata(char nm[20])
    {
        std::cout<<"\nName:"<<nm;
    }
};
int main(int argc, const char * argv[]) {
    // insert code here...
    
    student st;
    st.getdata(101);
    st.getdata("Sanket");
    
    return 0;
}
