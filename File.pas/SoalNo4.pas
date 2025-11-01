program DeretFibonacci;  //judul soal no 4
uses crt;   //daftar unit
var   //bagian deklarasi
  n, i, suku1, suku2, sukuBaru, jumlah: integer;  //variabelnya menggunakan integer      

begin
 clrscr;   //biar tampilan kodenya bersih  
  
    write(' N = ');   readln(n);  //input yang diminta pada soal

  //membuat suku pertama dan kedua
  suku1 := 0;  //angka fibonacci pertama
  suku2 := 1;  //angka fibonacci kedua
  jumlah := 0;   //untuk menyimpan total semua suku

    write('Sequence = ');   //output yang diminta pada soal
  //perulangan untuk mencetak deret hingga suku ke-n
  for i := 1 to n do //menghitung dan menampilkan seluruh suku hingga suku ke-n
  begin
    if i = 1 then //jika suku yang sedang dihitung adalah suku pertama, maka langsung ambil nilai suku1 (biasanya 0)
      sukuBaru := suku1   //sukuBaru digunakan untuk menampung suku saat ini agar bisa ditampilkan dan dijumlahkan
    else if i = 2 then  //jika suku yang dihitung adalah suku kedua, maka ambil nilai suku2 (biasanya 1)
      sukuBaru := suku2   //sukuBaru digunakan untuk menampung suku saat ini agar bisa ditampilkan dan dijumlahkan
    else
    begin
      sukuBaru := suku1 + suku2;  //suku berikutnya = jumlah 2 suku sebelumnya
      suku1 := suku2;              //suku sebelumnya menjadi suku kedua
      suku2 := sukuBaru;           //suku kedua menjadi suku yang baru saja dihitung
    end;

    write(sukuBaru, ' ');  //menampilkan suku Fibonacci saat ini di layar
    jumlah := jumlah + sukuBaru;    //menambahkan suku baru ke total jumlah seluruh suku Fibonacci
  end; //akhir dari blok loop for

  writeln;    //agar outputnya pindah ke bawah
  writeln('Total = ', jumlah);   //menampilkan jumlah total semua suku Fibonacci yang sudah dijumlahkan 

end.



