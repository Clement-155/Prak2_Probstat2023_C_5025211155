# Pengamatan berpasangan
data_prev = c(78, 75, 67,77,70,72,78,70,77)
data_after = c(100, 95, 70, 90, 90, 90, 89, 100, 100)
data_dif = data_after - data_prev


# POIN A
#Note, coba ubah jadi manual?
#Unbiased sample sd untuk (X1, X2, ... ,XN):
#(Sum(1 - n)(mean - Xn)^2)/(n-1)  
dif_sd = sd(data_dif)
sprintf("SD = %f", dif_sd)
# Hipotesis :
# H0: μ1 = μ2 atau μD = μ1 − μ2 = 0.
# H1: μ1 = μ2 atau μD = μ1 − μ2 = 0.
# POIN B 
dif_mean = mean(data_dif)
n = 9
df = n - 1
t_value = (dif_mean - 0)/(dif_sd/sqrt(n))
p_value = pt(t_value, df, lower.tail = FALSE) 
sprintf("t value = %f", t_value)
sprintf("t value = %f", p_value)
# POIN C
# NOTE : Nilai p_value hasil t.test berbeda dengan nilai p_value pt(6.8039, df = 9, lower.tail = FALSE)
t.test(x = data_prev, y = data_after, paired = TRUE)

print("Karena nilai p_value jauh di bawah critical value 0.5,  maka hipotesis null ditolak. Maka, menurut bukti terdapat pengaruh pada hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.")