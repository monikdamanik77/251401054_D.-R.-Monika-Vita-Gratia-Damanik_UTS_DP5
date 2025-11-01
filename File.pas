Kode no 1
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

