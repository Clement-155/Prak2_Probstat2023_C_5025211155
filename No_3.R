# Asumsi varians kedua populasi sama
# POIN A
# H0 = Tidak ada selisih pada kedua rata-rata populasi
print("H0: μ1 = μ2 atau μ1 − μ2 = 0.")
# H1 = Terdapat perbedaan pada rata-rata populasi
print("H1: μ1 != μ2 atau μ1 − μ2 != 0.")
# critical_value = 0.05
# POIN B
n_bandung = 20
n_bali = 27
x_bandung = 3.64
x_bali = 2.79
s_bandung = 1.67
s_bali = 1.5
# POIN C
# Uji statistik, untuk 2 populasi, varians tidak diketahui tapi asumsi sama.
sp = sqrt((((n_bandung-1)*(s_bandung^2))+((n_bali-1)*(s_bali^2)))/(n_bali+n_bandung-2))
t = (x_bandung - x_bali)/(sp*sqrt((1/n_bandung)+(1/n_bali)))
# POIN D
# Distribusi t dan normal simetris, maka terdapat critical region untuk 0.25 dan -0.25
df = n_bali + n_bandung - 2
kritikal = qt(0.025, df)
# KEPUTUSAN
sprintf("Nilai t = %f", t)
sprintf("Batas nilai kritikal (Positif dan negatif) = %f", abs(kritikal))
# Karena nilai t jatuh di luar nilai kritikal (-2.014 < 1.83 < 2.014), maka menerima hipotesis null
# KESIMPULAN
# Maka, kesimpulannya adalah terdapat bukti bahwa tidak ada selisih antara rata-rata data dari kedua kota.