program BintangIdamanku;  //judul soal no 3
uses crt; //daftar unit
var  //bagian deklarasi
  x, y: integer;  //pakai integer karena x,y menyatakan sebuah angka

begin   //statement-statement
 clrscr;  // biar tampilan kodenya bersih  

     // Bintang naik dari 1 sampai 3
  for x := 1 to 3 do     //Perulangan luar (x) mengatur jumlah baris dari 1 sampai 3
  begin
    for y := 1 to x do     //Perulangan dalam (y) mencetak bintang sebanyak nilai x
      write('*');     //Mencetak bintang tanpa pindah baris
    writeln;    // Pindah ke baris berikutnya setelah satu baris selesai
  end;

     // Bintang menurun dari 8 ke 6
  for x := 8 downto 6 do     //Perulangan luar (x) dimulai dari 8 dan menurun ke 6
  begin
    for y := 1 to x do     //Perulangan dalam (y) mencetak bintang sebanyak nilai x
      write('*');     //Mencetak bintang tanpa pindah baris
    writeln;    // Pindah ke baris berikutnya setelah satu baris selesai
  end;

  // Bintang naik lagi dari 7 ke 8
  for x := 7 to 8 do       //Perulangan luar (x) mengatur jumlah baris dari 7 sampai 8
  begin
    for y := 1 to x do     //Perulangan dalam (y) mencetak bintang sebanyak nilai x
      write('*');     //Mencetak bintang tanpa pindah baris
    writeln;     // Pindah ke baris berikutnya setelah satu baris selesai
  end;

end.

