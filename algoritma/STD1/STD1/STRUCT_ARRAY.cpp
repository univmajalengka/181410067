#include<iostream>
#include<string>
#include<sstream>
using namespace std;

	struct Sepeda
	{
		string sepeda;
		int harga;
	}Sp1[3];

void printSp(Sepeda Sp);

int main ()
{
     string kendaraan;
     int x;
             for(x=0; x<3;x++)
             {
             cout<<"Masukkan Nama Sepeda : ";
             getline(cin,Sp1[x].sepeda);
             cout<<"Masukkan Harga : Rp.";
             
             getline(cin,kendaraan);
             stringstream(kendaraan)>>Sp1[x].harga;                    }
             
       cout<<"\nSepeda yang Telah Diinput :\n";
       for(x=0;x<3;x++)
       printSp(Sp1[x]);   
     
return 0;

}

void printSp(Sepeda Sp)
{
	cout<<Sp.sepeda<<"\t";
	cout<<"\tRp. "<<Sp.harga<<",-\n";
}

