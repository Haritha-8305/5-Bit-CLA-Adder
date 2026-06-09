.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd

.option scale=0.09u
Vdd	vdd	gnd	'SUPPLY'

vin1 c0 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 p1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 g1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns

vin_a2 p2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_b2 g2 0 pulse 1.8 0 0ns 0ns 0ns 4ns 23ns

* SPICE3 file created from layc2.ext - technology: scmos

.option scale=0.09u

M1000 c2 c2bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=325 ps=170
M1001 c2 c2bar vdd inverterl_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=850 ps=380
M1002 a_202_n71# c0 vdd w_185_n97# CMOSP w=60 l=2
+  ad=900 pd=390 as=0 ps=0
M1003 gnd g2 c2bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=200 ps=100
M1004 c2bar p2 a_235_n179# Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=375 ps=180
M1005 a_270_n71# g1 a_202_n71# w_185_n97# CMOSP w=60 l=2
+  ad=750 pd=330 as=0 ps=0
M1006 c2bar g2 a_270_n71# w_185_n97# CMOSP w=60 l=2
+  ad=300 pd=130 as=0 ps=0
M1007 a_235_n179# p1 a_202_n189# Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=300 ps=140
M1008 vdd p1 a_202_n71# w_185_n97# CMOSP w=60 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_202_n189# c0 gnd Gnd CMOSN w=30 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 gnd g1 a_235_n179# Gnd CMOSN w=15 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 vdd p2 a_270_n71# w_185_n97# CMOSP w=30 l=2
+  ad=0 pd=0 as=0 ps=0
C0 inverterl_0/w_n17_n22# c2 0.06fF
C1 g1 p2 1.22fF
C2 g1 a_235_n179# 0.14fF
C3 c0 g1 0.14fF
C4 g2 g1 0.10fF
C5 c2bar c2 0.05fF
C6 c0 p2 0.12fF
C7 g2 p2 1.45fF
C8 vdd w_185_n97# 0.53fF
C9 a_235_n179# gnd 0.18fF
C10 c0 g2 0.10fF
C11 c0 gnd 0.02fF
C12 vdd inverterl_0/w_n17_n22# 0.10fF
C13 p1 w_185_n97# 0.18fF
C14 a_202_n71# vdd 1.24fF
C15 gnd c2 0.14fF
C16 a_202_n71# w_185_n97# 0.45fF
C17 a_270_n71# vdd 0.31fF
C18 c2bar w_185_n97# 0.15fF
C19 p1 a_202_n189# 0.03fF
C20 a_270_n71# w_185_n97# 0.30fF
C21 a_202_n71# p1 0.08fF
C22 c2bar inverterl_0/w_n17_n22# 0.13fF
C23 g1 w_185_n97# 0.18fF
C24 p1 g1 0.88fF
C25 a_270_n71# a_202_n71# 0.62fF
C26 a_270_n71# c2bar 0.62fF
C27 w_185_n97# p2 0.36fF
C28 c0 w_185_n97# 0.18fF
C29 g2 w_185_n97# 0.18fF
C30 p1 p2 0.12fF
C31 c0 p1 0.50fF
C32 a_202_n189# a_235_n179# 0.31fF
C33 g2 p1 0.10fF
C34 a_202_n189# gnd 0.31fF
C35 vdd c2 0.21fF
C36 c2bar a_235_n179# 0.31fF
C37 a_270_n71# p2 0.06fF
C38 g2 c2bar 0.23fF
C39 c2bar gnd 0.37fF
C40 a_235_n179# Gnd 0.27fF
C41 a_202_n189# Gnd 0.14fF
C42 a_270_n71# Gnd 0.00fF
C43 a_202_n71# Gnd 0.00fF
C44 g2 Gnd 0.82fF
C45 p2 Gnd 0.87fF
C46 g1 Gnd 0.94fF
C47 p1 Gnd 0.66fF
C48 c0 Gnd 0.55fF
C49 w_185_n97# Gnd 18.91fF
C50 gnd Gnd 2.16fF
C51 vdd Gnd 2.03fF
C52 c2bar Gnd 0.67fF
C53 inverterl_0/w_n17_n22# Gnd 1.56fF

.tran 0.1n 100n

.control
set color0=white
set color1=green
set color2=red
set color3=blue
set color4=blue
set color5=blue
set color6=blue

run
set curplottitle="Mounika Mylavarapu-2024102006"
plot v(p2) 2+v(g2) 4+v(c2) 

.endc