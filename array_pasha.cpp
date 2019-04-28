#include<iostream>
using namespace std;
int main()

{
	int a[6][3], b[6][3], c[6][3];
	
	cout<<"Nilai 1 :"<<endl;
		for (int i = 0; i < 6; i++)
	{
		for (int x = 0; x < 3; x++)
		{
			cin>>a[i][x];
		}
	}
	
	cout<<"Nilai 2:"<<endl;
		for (int i = 0; i < 6; i++)
	{
		for (int x = 0; x < 3; x++)
		{
			cin>>b[i][x];
		}
	}

	/*Hitungan*/
	for (int i = 0; i < 6; i++)
	{
		for (int x = 0; x < 3; x++) 
		{
			c[i][x] = a[i][x] + b[i][x];
		}
	}
	
	/*Keluaran*/	
	cout<<"Hasil :"<<endl;
		for (int i = 0; i < 6; i++)
	{
		for (int x = 0 ; x < 3; x++)
		{
			cout<<c[i][x]<<"|";
		}
		
		cout<<"\n";
	}
	
	return 0;
}
