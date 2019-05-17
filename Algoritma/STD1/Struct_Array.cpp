#include<iostream>
#include<cstring>
using namespace std;

int main()
{
	struct nasabah
	{
		char KodeStatus[10];
		char NamaLengkap[50];
		char AlamatRumah[100];
		char NoHp[13];
	};
	
	nasabah nab;
	strcpy (nab.KodeStatus,"181410067");
	strcpy (nab.NamaLengkap,"Riza Fachrezi");
	strcpy (nab.AlamatRumah,"Cijati");
	strcpy (nab.NoHp,"085353210708");
	
	cout<<"Kode:"
	<<nab.KodeStatus<<endl;
	cout<<"Nama:"
	<<nab.NamaLengkap<<endl;
	cout<<"Alamat:"
	<<nab.AlamatRumah<<endl;
	cout<<"NoHP:"
	<<nab.NoHp<<endl;
	return 0;
}
