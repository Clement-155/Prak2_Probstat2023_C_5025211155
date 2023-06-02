# Prak2_Probstat2023_C_5025211155

## No 1

![Alt text](./Screenshots/No_1.JPG?raw=true)

### A
Setelah dicari data selisih (`data_dif`), dicari standar deviasi menggunakan fungsi `sd()`.

### B
Pertama, dicari t_value menggunakan persamaan berikut :

![Alt text](./Screenshots/No_1%20B.JPG?raw=true)

- d bar = Rata-rata data selisih
- d0 = Nilai selisih dari hipotesis yang ingin diuji 
- sd = Standar deviasi data selisih
- n = Jumlah data

Lalu dicari nilai p menggunakan persamaan `pt()` dengan `lower.tail = FALSE` agar diukur area di sebelah kanan 0 dan df = n -1 .

### C
Karena ditemukan `p-value = 0.0001373`, maka untuk : 
- Hipotesis :
    - H0: μ1 = μ2 atau μD = μ1 − μ2 = 0.
    - H1: μ1 = μ2 atau μD = μ1 − μ2 = 0.
- 𝛼 = 5%

Karena nilai p_value jauh di bawah critical value 0.5,  maka hipotesis null ditolak. Maka, menurut bukti terdapat pengaruh pada hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.


## No 2

![Alt text](./Screenshots/No_2.JPG?raw=true)

**Pengerjaan no 2 dilakukan menggunakan library `BSDA` untuk fungsi `zsum.test()`**

Yang dipercayai (H0) = Mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun.
- H0: μ >= 25000
- H1: μ < 25000

**Karena n >= 30, maka pengujian sama dengan uji normal (tidak menggunakan distribusi t) dan
sd populasi bisa digantikan sd sampel untuk mencari p-value.**


```
zsum.test(
  mean.x = sample_mean,
  sigma.x = sample_sd,
  n.x = n,
  mean.y = NULL,
  sigma.y = NULL,
  n.y = NULL,
  alternative = "less",
  mu = 25000,
  conf.level = 0.95
)
```
Argumen :
- mean.x = Mean data yang diuji
- sigma.x = Standar deviasi data yang diuji
- n.x = Jumlah data yang diuji
- mean.y, sigma.y, dan n.y = Digunakan untuk pengujian 2 populasi.
- alternative = Tipe area penolakan.
- mu = Jumlah rata-rata populasi yang diujikan pada hipotesis.
- conf.level = Tingkat keyakinan. **Karena tidak diberikan di dalam soal, digunakan 95% (𝛼 = 5%).**

### Kesimpulan
**Didapatkan hasil p-value = 2.867e-07.**

Karena p-value < 0.05, maka bisa disimpulkan bahwa menurut uji-z, hipotesis null ditolak. Maka bukti menunjukkan mobil dikemudikan rata-rata kurang dari 25000 kilometer per tahun.

## No 3

![Alt text](./Screenshots/No_3.JPG?raw=true)

**Jenis masalah = Hipotesis untuk rata-rata dengan 2 populasi, standar deviasi populasi tidak diketahui, dan diasumsikan standar deviasi kedua populasi sama.**

### A. H0 dan H1
- H0 = Tidak ada selisih pada kedua rata-rata populasi

H0: μ1 = μ2 atau μ1 − μ2 = 0.
- H1 = Terdapat perbedaan pada rata-rata populasi

H1: μ1 != μ2 atau μ1 − μ2 != 0.

### B. Hitung sampel statistik

**Diberikan dalam soal**

### C. Lakukan uji statistik (t)

Digunakan persamaan berikut untuk mencari t-value.

![Alt text](./Screenshots/No_3%20B.JPG?raw=true)

### D. Nilai kritikal

Digunakan persamaan `qt()` dengan **df = n_bali + n_bandung - 2**

### E. Keputusan
Hasil ditemukan sebagai berikut :
- **"Nilai t = 1.830446"**
- **"Batas nilai kritikal (Positif dan negatif) = 2.014103"**

Karena nilai t jatuh di luar nilai kritikal (-2.014 < 1.83 < 2.014), maka menerima hipotesis null.

### F. Kesimpulan

Maka, kesimpulannya adalah terdapat bukti bahwa tidak ada selisih antara rata-rata data dari kedua kota.

## No 4

![Alt text](./Screenshots/No_4.JPG?raw=true)

### A

Digunakan `library("ggpubr")` dan `ggboxplot()` untuk menampilkan box plot dengan :
- sumbu y = Cahaya
- sumbu x = Jenis kaca
- Pengelompokan dengan warna = Temperatur

### B

Digunakan fungsi `res.aov()` untuk melakukan uji ANOVA 2 arah + uji pengaruh temperatur terhadap hubungan tipe kaca dan cahaya.

Hasil :
- p-value temperatur = **1.96e-10**
- p-value jenis kaca = **0.0109**
- p-value pengaruh temperatur terhadap hubungan tipe kaca dan cahaya = **1.25e-14**

Kesimpulan :
- Temperatur memiliki pengaruh signifikan terhadap keluaran cahaya untuk tingkat signifikansi 0.05
- Jenis kaca memiliki pengaruh signifikan terhadap keluaran cahaya untuk tingkat signifikansi 0.05
- Nilai p menunjukkan bahwa temperatur mempengaruhi hubungan antara tipe kaca dan cahaya


### C

Digunakan fungsi `aggregate()` untuk menampilkan kedua tabel tersebut. Dilakukan fungsi `mean` dan `sd` untuk :
- Cahaya = Nilai yang dihitung agregatnya (dihitung nilai menggunakan `mean` dan `sd`).
- Temperatur + Tipe kaca = Nilai yang digunakan untuk mengelompokkan.