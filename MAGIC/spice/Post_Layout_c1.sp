* SPICE3 file created from layc1.ext - technology: scmos
.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd

.option scale=0.09u
Vdd	vdd	gnd	'SUPPLY'

vin1 c0 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 p1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 g1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns

* SPICE3 file created from layc1.ext - technology: scmos

.option scale=0.09u

M1000 c1 c1bar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=200 ps=110
M1001 c1 c1bar vdd inverterl_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=500 ps=230
M1002 a_1_365# c0 vdd w_n13_353# CMOSP w=40 l=2
+  ad=600 pd=270 as=0 ps=0
M1003 a_1_293# c0 gnd Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1004 c1bar g1 a_1_365# w_n13_353# CMOSP w=40 l=2
+  ad=61 pd=30 as=0 ps=0
M1005 gnd g1 c1bar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=150 ps=80
M1006 vdd p1 a_1_365# w_n13_353# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 c1bar p1 a_1_293# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_1_293# gnd 0.21fF
C1 p1 w_n13_353# 0.10fF
C2 g1 w_n13_353# 0.10fF
C3 g1 c1bar 0.21fF
C4 p1 a_1_365# 0.11fF
C5 c1 c1bar 0.05fF
C6 c0 w_n13_353# 0.10fF
C7 c1 gnd 0.14fF
C8 c1 inverterl_0/w_n17_n22# 0.06fF
C9 g1 p1 0.52fF
C10 w_n13_353# vdd 0.20fF
C11 p1 c0 0.25fF
C12 c1bar vdd 0.02fF
C13 g1 c0 0.09fF
C14 a_1_365# vdd 0.96fF
C15 inverterl_0/w_n17_n22# vdd 0.10fF
C16 c1bar w_n13_353# 0.08fF
C17 c1 vdd 0.21fF
C18 a_1_293# c1bar 0.21fF
C19 a_1_365# w_n13_353# 0.24fF
C20 a_1_365# c1bar 0.61fF
C21 c1bar gnd 0.47fF
C22 inverterl_0/w_n17_n22# c1bar 0.13fF
C23 a_1_293# Gnd 0.08fF
C24 g1 Gnd 0.51fF
C25 p1 Gnd 0.44fF
C26 c0 Gnd 0.35fF
C27 w_n13_353# Gnd 1.81fF
C28 gnd Gnd 0.43fF
C29 c1 Gnd 0.07fF
C30 vdd Gnd 0.08fF
C31 c1bar Gnd 0.44fF
C32 inverterl_0/w_n17_n22# Gnd 1.56fF

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
plot v(p1) 2+v(c0)  4+v(g1) 6+v(c1) 

.endc