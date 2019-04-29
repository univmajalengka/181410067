#include <iostream>

using namespace std;

int main()
{
	int a[100],b[100],c[100],d;
	cout << "Masukkan Jumlah Array :";
	cin >> d;
	
	cout << "Masukkan Array #1 :" << endl;
	for(int i=0;i<d;i++)
	{
		cin >> a[i];
	}
	
	cout << "Masukkan Array #2 :" << endl;
	for(int i=0;i<d;i++)
	{
		cin >> b[i];
	}
	
	for(int i=0;i<d;i++)
	{
		c[i]=a[i]+b[i];
	}
	
	cout <<"\nArray yang telah di jumlah :" << endl;
	for(int i=0;i<d;i++)
	{
		cout << c[i]<<endl; 
	}
}
