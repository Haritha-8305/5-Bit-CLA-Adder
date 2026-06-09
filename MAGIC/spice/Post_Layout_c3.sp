.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd

.option scale=0.09u
Vdd	vdd	gnd	'SUPPLY'

vin1 c0 0 pulse 0 1.8 0ns 0ns 0ns 13ns 26ns
vin2 p1 0 pulse 0 1.8 0ns 0ns 0ns 15ns 30ns
vin3 g1 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns
vin_a3 p3 0 pulse 0 1.8 0ns 0ns 0ns 9ns 20ns

vin_a2 p2 0 pulse 0 1.8 0ns 0ns 0ns 8ns 16ns
vin_b2 g2 0 pulse 1.8 0 0ns 0ns 0ns 4ns 23ns
vin_b3 g3 0 pulse 1.8 0 0ns 0ns 0ns 8ns 23ns

* SPICE3 file created from layc3.ext - technology: scmos
* SPICE3 file created from layc3.ext - technology: scmos

.option scale=0.09u

M1000 c3 n gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=465 ps=236
M1001 c3 n vdd inv_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=1230 ps=542
M1002 k c0 vdd w_n23_n72# CMOSP w=80 l=2
+  ad=1200 pd=510 as=0 ps=0
M1003 a_62_n211# g2 gnd Gnd CMOSN w=13 l=2
+  ad=465 pd=216 as=0 ps=0
M1004 l g1 k w_n23_n72# CMOSP w=80 l=2
+  ad=1000 pd=430 as=0 ps=0
M1005 vdd p3 m w_n23_n72# CMOSP w=26 l=2
+  ad=0 pd=0 as=930 ps=402
M1006 vdd p2 l w_n23_n72# CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 n g3 gnd Gnd CMOSN w=10 l=2
+  ad=250 pd=120 as=0 ps=0
M1008 a_62_n211# p2 p Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=500 ps=230
M1009 vdd p1 k w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 m g2 l w_n23_n72# CMOSP w=80 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 n g3 m w_n23_n72# CMOSP w=80 l=2
+  ad=400 pd=170 as=0 ps=0
M1012 p p1 q Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=400 ps=180
M1013 q c0 gnd Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 p g1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 n p3 a_62_n211# Gnd CMOSN w=40 l=2
+  ad=0 pd=0 as=0 ps=0
C0 g3 w_n23_n72# 0.24fF
C1 g1 p1 1.19fF
C2 vdd w_n23_n72# 0.42fF
C3 g3 g1 0.08fF
C4 p q 0.54fF
C5 w_n23_n72# k 0.49fF
C6 n inv_0/w_n17_n22# 0.13fF
C7 inv_0/w_n17_n22# c3 0.06fF
C8 p g1 0.08fF
C9 g3 p1 0.08fF
C10 n gnd 0.21fF
C11 c3 gnd 0.14fF
C12 n c3 0.05fF
C13 c0 p3 0.08fF
C14 a_62_n211# g3 0.03fF
C15 p3 g2 1.31fF
C16 p2 p3 0.08fF
C17 vdd m 0.27fF
C18 k p1 0.08fF
C19 w_n23_n72# p3 0.56fF
C20 p2 l 0.08fF
C21 a_62_n211# p 0.60fF
C22 q gnd 0.55fF
C23 l w_n23_n72# 0.48fF
C24 n w_n23_n72# 0.19fF
C25 g1 p3 0.08fF
C26 vdd k 1.65fF
C27 c0 g2 0.08fF
C28 p2 c0 0.08fF
C29 p2 g2 1.79fF
C30 w_n23_n72# c0 0.24fF
C31 w_n23_n72# g2 0.24fF
C32 p2 w_n23_n72# 0.48fF
C33 p3 p1 0.08fF
C34 m p3 0.08fF
C35 g3 p3 1.88fF
C36 g1 c0 0.08fF
C37 g1 g2 0.08fF
C38 p2 g1 1.52fF
C39 vdd inv_0/w_n17_n22# 0.10fF
C40 m l 0.90fF
C41 n m 0.92fF
C42 a_62_n211# gnd 0.21fF
C43 g1 w_n23_n72# 0.24fF
C44 n g3 0.32fF
C45 n a_62_n211# 0.41fF
C46 c0 p1 0.82fF
C47 p1 g2 0.08fF
C48 p2 p1 0.08fF
C49 p gnd 0.60fF
C50 vdd l 0.41fF
C51 w_n23_n72# p1 0.24fF
C52 vdd c3 0.21fF
C53 g3 c0 0.08fF
C54 g3 g2 0.08fF
C55 l k 0.89fF
C56 p2 g3 0.08fF
C57 m w_n23_n72# 0.55fF
C58 a_62_n211# g2 0.10fF
C59 a_62_n211# Gnd 0.31fF
C60 g3 Gnd 1.34fF
C61 p3 Gnd 0.52fF
C62 m Gnd 0.00fF
C63 p Gnd 0.51fF
C64 q Gnd 0.22fF
C65 g2 Gnd 0.44fF
C66 p2 Gnd 0.37fF
C67 l Gnd 0.00fF
C68 k Gnd 0.00fF
C69 g1 Gnd 1.01fF
C70 p1 Gnd 0.29fF
C71 c0 Gnd 0.22fF
C72 w_n23_n72# Gnd 1.23fF
C73 gnd Gnd 2.48fF
C74 c3 Gnd 0.13fF
C75 vdd Gnd 1.13fF
C76 n Gnd 0.91fF
C77 inv_0/w_n17_n22# Gnd 1.56fF

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
plot v(p3) 2+v(g3) 4+v(c3) 

.endc