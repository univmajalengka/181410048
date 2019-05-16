#include<iostream>
#include<string>
#include<sstream>
using namespace std;

	struct barang
	{
		string brg;
		int harga;
	}brg1[3];

void printbarang1(barang barang1);

int main ()
{
     string gaskeun;
     int b;
             for(b=0; b<3;b++)
             {
             cout<<"Masukkan Nama Barang : ";
             getline(cin,brg1[b].brg);
             cout<<"Masukkan Harga : Rp.";
             
             getline(cin,gaskeun);
             stringstream(gaskeun)>>brg1[b].harga;                    }
             
       cout<<"\nBarang yang Telah Diinput :\n";
       for(b=0;b<3;b++)
       printbarang1(brg1[b]);   
     
return 0;

}

void printbarang1(barang barang1)
{
	cout<<barang1.brg<<"\t";
	cout<<"\tRp. "<<barang1.harga<<",-\n";
}