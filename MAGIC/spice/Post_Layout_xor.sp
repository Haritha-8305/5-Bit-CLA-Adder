.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'

vin1 a 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 b 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

* SPICE3 file created from layxor.ext - technology: scmos

.option scale=0.09u

M1000 bbar b gnd Gnd CMOSN w=10 l=2
+  ad=51 pd=31 as=50 ps=30
M1001 bbar b vdd inverterl_1/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 s a bbar Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1003 s a b w_276_32# CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1004 s bbar a Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1005 s b a w_276_32# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 vdd inverterl_1/w_n17_n22# 0.10fF
C1 vdd b 0.95fF
C2 w_276_32# b 0.29fF
C3 b inverterl_1/w_n17_n22# 0.13fF
C4 gnd b 0.05fF
C5 s bbar 0.42fF
C6 a bbar 0.28fF
C7 vdd bbar 0.21fF
C8 a s 0.90fF
C9 w_276_32# s 0.14fF
C10 w_276_32# a 0.19fF
C11 bbar inverterl_1/w_n17_n22# 0.06fF
C12 gnd bbar 0.19fF
C13 b bbar 0.05fF
C14 s b 0.26fF
C15 s Gnd 0.15fF
C16 a Gnd 0.60fF
C17 w_276_32# Gnd 0.60fF
C18 gnd Gnd 0.20fF
C19 bbar Gnd 0.72fF
C20 vdd Gnd 0.45fF
C21 b Gnd 0.16fF
C22 inverterl_1/w_n17_n22# Gnd 1.56fF

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
plot v(a) 2+v(b)  4+v(s) 

.endc