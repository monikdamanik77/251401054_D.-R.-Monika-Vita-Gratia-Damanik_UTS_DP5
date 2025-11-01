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
    