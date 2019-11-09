#include <iostream>
#include <conio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
using namespace std;

int main()
{
	clrscr();			//Hapus Layar
	
	const int MAKS = 10;
	int data [MAKS];
	int maks;
	int maka;
	int i;
	
	//Memperoleh Data Secara Acak
	//randomize(data);
	
	for (int i = 0; i < MAKS; i++)
	data [i] =rand();
	
	//Menampilkan Data dan Mencari Data Terbesar

	cout << "Data :"<< endl;
	cout << data [0]<< endl;
	maka = data [0]; 	
	
	//Isi Dengan Data Pertama
	
	for (i = 1; i < MAKS; i++)
	{
		cout<< data [i]<<endl;
		
		if  (data [i] > maka)
		maka = data [i];
	}
	
	cout << "Data Terbesar = " << maka << endl;
	
	return 0;
}