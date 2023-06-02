library(BSDA)

sample_mean = 23500
sample_sd = 3000
n = 100
# Yang dipercayai (H0) = Mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun.
# H0: μ >= 25000
# H1: μ < 25000
# Karena n >= 30, maka pengujian sama dengan uji normal (tidak menggunakan distribusi t) dan
# sd populasi bisa digantikan sd sampel untuk mencari p-value

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

print("Karena p-value < 0.05, maka bisa disimpulkan bahwa menurut uji-z, hipotesis null ditolak. Maka bukti menunjukkan mobil dikemudikan rata-rata kurang dari 25000 kilometer per tahun.")