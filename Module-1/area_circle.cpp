#include<stdio.h>
#define pi 3.14 //global
main()
{
	int r;
	float area;
	printf("Enter value of r:");
	scanf("%d",&r);
	area=pi*r*r;
	printf("\nArea of Circle:%f",area);
}
