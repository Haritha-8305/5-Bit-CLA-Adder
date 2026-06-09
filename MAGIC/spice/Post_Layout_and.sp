.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'


vin1 a 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 b 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns

* SPICE3 file created from andl.ext - technology: scmos

.option scale=0.09u

M1000 inverterl_0/invo b gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1001 inverterl_0/invo b vdd inverterl_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M1002 s b a Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1003 s inverterl_0/invo gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 s inverterl_0/invo a w_72_39# CMOSP w=20 l=2
+  ad=100 pd=50 as=100 ps=50
C0 s inverterl_0/invo 0.07fF
C1 inverterl_0/w_n17_n22# b 0.13fF
C2 inverterl_0/invo b 0.05fF
C3 s w_72_39# 0.08fF
C4 s a 0.79fF
C5 inverterl_0/invo inverterl_0/w_n17_n22# 0.06fF
C6 b a 0.05fF
C7 inverterl_0/invo w_72_39# 0.11fF
C8 vdd b 0.31fF
C9 s gnd 0.10fF
C10 w_72_39# a 0.05fF
C11 vdd inverterl_0/w_n17_n22# 0.10fF
C12 inverterl_0/invo vdd 0.21fF
C13 b gnd 0.05fF
C14 inverterl_0/invo gnd 0.19fF
C15 s Gnd 0.21fF
C16 a Gnd 0.15fF
C17 w_72_39# Gnd 0.42fF
C18 gnd Gnd 0.49fF
C19 inverterl_0/invo Gnd 0.36fF
C20 vdd Gnd 0.24fF
C21 b Gnd 1.13fF
C22 inverterl_0/w_n17_n22# Gnd 1.56fF

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