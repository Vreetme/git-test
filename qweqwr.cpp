#include <iostream>
#include <math.h>
#include <stdio.h>
#include <cstdlib>
#include <time.h>
using namespace std;
int pr=1,otr=0,n,m,k,z,v=4,g=4,v1=4,g1=4,a[20][20],b[20][20];

int otric()
{
for (n=0; n<v; n++)
{
for (m=0; m<g; m++)
if (a[n][m]<0) 
    {   
    otr++;
    }
}
cout <<"Количество отрицательных элементов матрицы A: "<<otr<< endl;
otr=0;
for (k=0; k<v1; k++)
{
for (z=0; z<g1; z++)
if (b[k][z]<0) 
    {   
    otr++;
    }
}
cout <<"Количество отрицательных элементов матрицы B: "<<otr<< endl;
}



int proizv()
{
for (n=2; n<v;)
    for (m=0; m<g; m++)
    if (v=1 && a[n][m]>0) 
            {
                pr*=a[n][m];
            } 
cout <<"Произведение положительных элементов третьей строки матрицы А: "<<pr<< endl;
    pr=1;
for (k=2; k<v1;)
    for (z=0; z<g1; z++)
    if (v1=1 && b[k][z]>0) 
            {
                pr*=b[k][z];
            } 
cout <<"Произведение положительных элементов третьей строки матрицы B: "<<pr<< endl;
}



void matrix()
{
    srand(time(0));
setlocale (LC_ALL, "RUS");
for (n=0; n<v; n++)
    for (m=0; m<g; m++)
a[n][m] = rand()%100+(-50);
cout<<"Матрица A: \n";
for (n=0; n<v; n++)
    {
for (m=0; m<g; m++)
cout<<a[n][m]<<"\t"; 
cout<<endl;
    }
for (k=0; k<v1; k++)
    for (z=0; z<g1; z++)
b[k][z] = rand()%100+(-50);
cout<<"Матрица B: \n";
for (k=0; k<v1; k++)
    {
for (z=0; z<g1; z++)
cout<<b[k][z]<<"\t"; 
cout<<endl;
    } 
}



int main()
{
  matrix();
  otric();
  proizv();  
}