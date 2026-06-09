.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd

.option scale=0.09u
Vdd	vdd	gnd	'SUPPLY'

vin1 c0 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 p1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 g1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a3 p3 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a4 p4 0 pulse 0 1.8 0ns 0ns 0ns 20ns 52ns

vin_a2 p2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_b2 g2 0 pulse 1.8 0 0ns 0ns 0ns 4ns 23ns
vin_b3 g3 0 pulse 1.8 0 0ns 0ns 0ns 8ns 23ns
vin_b4 g4 0 pulse 1.8 0 0ns 0ns 0ns 9ns 23ns

* SPICE3 file created from layc4.ext - technology: scmos

.option scale=0.09u

M1000 c4 c4bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=620 ps=308
M1001 c4 c4bar vdd inverterl_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=1640 ps=716
M1002 vdd p2 a_n42_n27# w_n108_n41# CMOSP w=50 l=2
+  ad=0 pd=0 as=1250 ps=530
M1003 vdd p3 a_7_n27# w_n108_n41# CMOSP w=33 l=2
+  ad=0 pd=0 as=1165 ps=496
M1004 a_n94_n27# c0 vdd w_n108_n41# CMOSP w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1005 a_n42_n27# g1 a_n94_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 a_7_n27# g2 a_n42_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 vdd p1 a_n94_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 gnd g1 a_n67_n164# Gnd CMOSN w=25 l=2
+  ad=0 pd=0 as=625 ps=280
M1009 a_30_n129# p3 a_n14_n149# Gnd CMOSN w=50 l=2
+  ad=565 pd=256 as=580 ps=262
M1010 c4bar p4 a_30_n129# Gnd CMOSN w=50 l=2
+  ad=300 pd=140 as=0 ps=0
M1011 gnd g2 a_n14_n149# Gnd CMOSN w=16 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 a_n94_n174# c0 gnd Gnd CMOSN w=50 l=2
+  ad=500 pd=220 as=0 ps=0
M1013 a_n67_n164# p1 a_n94_n174# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 a_51_n27# g3 a_7_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=1125 pd=480 as=0 ps=0
M1015 gnd g3 a_30_n129# Gnd CMOSN w=13 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 a_n14_n149# p2 a_n67_n164# Gnd CMOSN w=50 l=2
+  ad=0 pd=0 as=0 ps=0
M1017 c4bar g4 a_51_n27# w_n108_n41# CMOSP w=100 l=2
+  ad=500 pd=210 as=0 ps=0
M1018 vdd p4 a_51_n27# w_n108_n41# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 gnd g4 c4bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_30_n129# a_n14_n149# 0.52fF
C1 vdd inverterl_0/w_n17_n22# 0.10fF
C2 gnd a_n94_n174# 0.52fF
C3 p3 g1 0.09fF
C4 a_51_n27# w_n108_n41# 0.37fF
C5 a_51_n27# a_7_n27# 1.03fF
C6 p4 g4 2.34fF
C7 a_51_n27# vdd 0.38fF
C8 g2 g1 0.09fF
C9 p4 g3 2.80fF
C10 c4 vdd 0.21fF
C11 p2 g1 1.16fF
C12 p1 a_n94_n174# 0.03fF
C13 p1 g4 0.09fF
C14 p1 g3 0.09fF
C15 a_n94_n27# a_n42_n27# 1.03fF
C16 p3 c0 0.09fF
C17 w_n108_n41# g4 0.11fF
C18 a_n67_n164# a_n14_n149# 0.52fF
C19 g3 w_n108_n41# 0.11fF
C20 c0 g2 0.09fF
C21 p2 a_n42_n27# 0.08fF
C22 c4bar inverterl_0/w_n17_n22# 0.13fF
C23 p2 c0 0.09fF
C24 a_30_n129# g3 0.09fF
C25 p1 p4 0.09fF
C26 p3 g2 2.19fF
C27 a_51_n27# c4bar 1.03fF
C28 p3 p2 0.09fF
C29 c4 c4bar 0.05fF
C30 p4 w_n108_n41# 0.55fF
C31 p3 a_n14_n149# 0.04fF
C32 a_30_n129# gnd 0.16fF
C33 g4 g1 0.09fF
C34 g3 g1 0.09fF
C35 p2 g2 1.90fF
C36 a_30_n129# p4 0.03fF
C37 a_n14_n149# g2 0.09fF
C38 p1 w_n108_n41# 0.11fF
C39 a_n67_n164# a_n94_n174# 0.52fF
C40 w_n108_n41# a_7_n27# 0.38fF
C41 g4 c4bar 0.21fF
C42 w_n108_n41# vdd 0.64fF
C43 p4 g1 0.09fF
C44 a_7_n27# vdd 0.48fF
C45 c0 g4 0.09fF
C46 g3 c0 0.09fF
C47 a_n67_n164# gnd 0.28fF
C48 c4 inverterl_0/w_n17_n22# 0.06fF
C49 gnd c4bar 0.19fF
C50 p1 g1 0.90fF
C51 p3 g4 0.09fF
C52 gnd c0 0.04fF
C53 p3 g3 2.51fF
C54 w_n108_n41# g1 0.11fF
C55 p4 c0 0.09fF
C56 g4 g2 0.09fF
C57 g3 g2 0.09fF
C58 p2 g4 0.09fF
C59 p2 g3 0.09fF
C60 p3 p4 0.09fF
C61 p1 c0 0.52fF
C62 w_n108_n41# c4bar 0.15fF
C63 w_n108_n41# a_n42_n27# 0.41fF
C64 gnd a_n14_n149# 0.16fF
C65 vdd c4bar 0.02fF
C66 c0 w_n108_n41# 0.11fF
C67 a_7_n27# a_n42_n27# 1.03fF
C68 p4 g2 0.09fF
C69 a_30_n129# c4bar 0.52fF
C70 p1 p3 0.09fF
C71 a_n42_n27# vdd 0.68fF
C72 p4 p2 0.09fF
C73 p1 a_n94_n27# 0.06fF
C74 p3 w_n108_n41# 0.50fF
C75 a_n94_n27# w_n108_n41# 0.49fF
C76 p1 g2 0.09fF
C77 p3 a_7_n27# 0.08fF
C78 gnd c4 0.14fF
C79 p1 p2 0.09fF
C80 a_n67_n164# g1 0.08fF
C81 a_n94_n27# vdd 2.24fF
C82 w_n108_n41# g2 0.11fF
C83 p4 a_51_n27# 0.09fF
C84 p2 w_n108_n41# 0.40fF
C85 c0 g1 0.09fF
C86 g3 g4 0.09fF
C87 a_30_n129# Gnd 0.24fF
C88 a_51_n27# Gnd 0.00fF
C89 a_n14_n149# Gnd 0.26fF
C90 a_7_n27# Gnd 0.00fF
C91 a_n67_n164# Gnd 0.29fF
C92 a_n94_n174# Gnd 0.16fF
C93 a_n42_n27# Gnd 0.00fF
C94 a_n94_n27# Gnd 0.00fF
C95 g4 Gnd 1.00fF
C96 p4 Gnd 0.95fF
C97 g3 Gnd 1.02fF
C98 p3 Gnd 0.90fF
C99 g2 Gnd 1.01fF
C100 p2 Gnd 0.86fF
C101 g1 Gnd 0.97fF
C102 p1 Gnd 0.77fF
C103 c0 Gnd 0.77fF
C104 w_n108_n41# Gnd 26.49fF
C105 gnd Gnd 2.93fF
C106 c4 Gnd 0.04fF
C107 vdd Gnd 1.77fF
C108 c4bar Gnd 0.55fF
C109 inverterl_0/w_n17_n22# Gnd 1.56fF

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
plot v(p4) 2+v(g4) 4+v(c4) 

.endc