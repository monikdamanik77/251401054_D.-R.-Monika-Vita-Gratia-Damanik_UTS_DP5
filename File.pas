SOAL NO 1 (CICI PUNYA TOKO)
program CiciPunyaToko;  //judul soal no 1
uses crt;  //daftar unit   
var  // bagian deklarasi
    buku, pulpen, pensil, penghapus, penggaris: integer; //pakai integer karena type datanya menyatakan jlh barang
    totalBelanja, diskon, totalAkhir, pajak, potongan: real;  // pakai real karena type datanya menyatakan desimal
    metode: string;  //pakai string karena metode menyatakan sebuah kumpulan karakter (QRIS/tunai) 
begin  //statement-statement
 clrscr; // biar tampilan kodenya bersih    
    writeln('Pembelian barang pada Cici Punya Toko'); // bagian input pada soal
    write('Masukkan jumlah Buku        = '); readln(buku); 
    write('Masukkan jumlah Pulpen      = '); readln(pulpen);
    write('Masukkan jumlah Pensil      = '); readln(pensil);
    write('Masukkan jumlah Penghapus   = '); readln(penghapus);
    write('Masukkan jumlah Penggaris   = '); readln(penggaris);
    // total belanja seluruh barang yg dibeli
    totalBelanja:= (buku*25.000) + (pulpen*5.000) + (pensil*3.000) + (penghapus*2.000) + (penggaris*4.000);
    if totalBelanja >= 100.000 then  // pada soal, diskon 10% jika total >= 100.000
        diskon:= totalBelanja*0.1  //jika memenuhi syarat, total belanja dikali 10%
    else // perintah lain jika kondisi tidak memenuhi
        diskon:= 0; //jika tidak memenuhi, tidak dapat diskon
    //metode pembayaran yg dipilih
    writeln;
    write('Metode Pembayaran (QRIS/Tunai) = '); readln(metode); //agar muncul input metode pembayaran 
        if (metode = 'QRIS') or (metode = 'qris') then // pakai if karena QRIS/qris adalah pilihan
          potongan := 5.000 //jika memenuhi syarat, dapat potongan 5.000
        else //perintah lain jika kondisi tidak memenuhi
          potongan := 0; //jika tidak memenuhi, tidak dapat potongan
    //dipisah dengan qris karena qris dikenai potongan sedangkan tunai dikenai pajak
        if (metode = 'Tunai') or (metode = 'tunai') then // pakai if karena Tunai/tunai adalah pilihan
          pajak := totalBelanja * 0.05 //jika memenuhi syarat, dapat pajak 5%
        else //perintah lain jika kondisi tidak memenuhi
          pajak := 0; //jika tidak memenuhi, tidak dapat pajak
    //total akhir seluruh belanja termasuk yg dikenai diskon, potongan, dan pajak
    totalAkhir := totalBelanja - diskon - potongan + pajak; 
    writeln('Total harga sebelum diskon = ', totalBelanja :0:3); //output yg diminta pada soal
    writeln('Seluruh potongan dan diskon  = ', diskon+potongan :0:3);  //output yg diminta pada soal
    writeln('Total akhir                  = ', totalAkhir :0:3);  //output yg diminta pada soal
end.  



SOAL NO 2 (TEBAK ANGKA RAHASIA)
program TebakAngkaRahasia;  //judul soal no 2
uses crt; //daftar unit
var  // bagian deklarasi
    x: integer;  //pakai integer karena x menyatakan sebuah angka
begin //statement-statement
 clrscr;  // biar tampilan kodenya bersih  
       //angka rahasia adalah 7
    repeat  //pakai repeat karena soal meminta input sebuah angka hingga angka yg diinput benar 
    write('Masukkan tebakan: '); readln(x);  //bagian input pada soal
    if x>7 then //jika diinput angka yg lebih besar dari 7
        writeln('Terlalu besar') //tampilan pesan
    else if x<7 then //jika diinput angka yg lebih kecil dari 7
        writeln('Terlalu kecil'); //tampilan pesan
    until x=7; //jika diinput angka 7 (angka rahasia adalah 7)
        writeln('Selamat, kamu benar!'); //tampilan pesan
end. 



SOAL NO 3 (BINTANG IDAMANKU)
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



SOAL NO 4 (DERET FIBONACCI)
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

