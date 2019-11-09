#include <iostream>
#include <conio.h>

using namespace std;
int main ()

{
	int i, x, ketemu;
	
clrscr();				//Hapus Layar
	
	int data[] = {5, 100, 20, 31, 77, 88, 99, 20, 55, 1};
	
	cout <<"Input Data yang Anda Cari : ";
	cin >> x;
	
	ketemu = 0;
	for (i = 0; i < sizeof (data) / sizeof (int) ; i++)
	{
		if (data [i] == x )
		{
			ketemu = !ketemu; 		//Ubah Menjadi Benar
			break;					//Keluar dari Nol
		}
	}
	if (ketemu)
	cout << "Data Tersebut Ada pada Posisi ke-"<< i + 1 << endl;
		else
		cout << "Data Tersebut Tidak Ada!" << endl;
		
		return 0;
}