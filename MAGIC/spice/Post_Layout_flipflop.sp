.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd	vdd	gnd	'SUPPLY'

Vclk clk 0 pulse(1.8 0 0 0 0 10u 20u)
Vd d gnd pulse( 0 1.8  0 0 0 15u 60u)


* SPICE3 file created from layff.ext - technology: scmos

.option scale=0.09u

M1000 q qbar gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=151 ps=91
M1001 q qbar vdd Inverterl_0/w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=400 ps=200
M1002 a_1_n56# clk a_1_n10# w_n17_n22# CMOSP w=20 l=2
+  ad=100 pd=50 as=200 ps=100
M1003 a_1_n56# d gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 vdd a_34_n56# qbar w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1005 gnd a_34_n56# a_107_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1006 a_34_n56# a_1_n56# a_27_n56# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=100 ps=60
M1007 a_107_n56# clk qbar Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1008 gnd clk a_27_n56# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_1_n10# d vdd w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 vdd clk a_34_n56# w_n17_n22# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
C0 a_34_n56# w_n17_n22# 0.20fF
C1 clk d 0.08fF
C2 qbar w_n17_n22# 0.06fF
C3 a_1_n56# w_n17_n22# 0.06fF
C4 vdd q 0.21fF
C5 gnd q 0.14fF
C6 qbar q 0.05fF
C7 clk w_n17_n22# 0.43fF
C8 vdd a_34_n56# 0.21fF
C9 qbar vdd 0.21fF
C10 Inverterl_0/w_n17_n22# q 0.06fF
C11 gnd qbar 0.05fF
C12 qbar a_34_n56# 0.15fF
C13 Inverterl_0/w_n17_n22# vdd 0.10fF
C14 gnd a_1_n56# 0.10fF
C15 a_1_n56# a_34_n56# 0.11fF
C16 Inverterl_0/w_n17_n22# qbar 0.13fF
C17 d w_n17_n22# 0.13fF
C18 vdd clk 0.27fF
C19 a_1_n10# w_n17_n22# 0.12fF
C20 a_34_n56# clk 0.57fF
C21 qbar clk 0.13fF
C22 a_1_n56# clk 0.27fF
C23 gnd a_107_n56# 0.10fF
C24 gnd a_27_n56# 0.46fF
C25 a_27_n56# a_34_n56# 0.17fF
C26 a_107_n56# qbar 0.16fF
C27 gnd d 0.05fF
C28 a_27_n56# a_1_n56# 0.04fF
C29 vdd a_1_n10# 0.21fF
C30 a_1_n56# d 0.05fF
C31 a_1_n56# a_1_n10# 0.21fF
C32 vdd w_n17_n22# 0.37fF
C33 a_107_n56# Gnd 0.09fF
C34 a_27_n56# Gnd 0.19fF
C35 a_1_n56# Gnd 0.34fF
C36 a_1_n10# Gnd 0.00fF
C37 a_34_n56# Gnd 0.73fF
C38 clk Gnd 0.78fF
C39 d Gnd 0.30fF
C40 w_n17_n22# Gnd 7.79fF
C41 gnd Gnd 1.16fF
C42 q Gnd 0.12fF
C43 vdd Gnd 0.83fF
C44 qbar Gnd 0.45fF
C45 Inverterl_0/w_n17_n22# Gnd 1.56fF


.tran 1n 100u


.control
set color0=white
set color1=green
set color2=red
set color3=blue
set color4=blue
set color5=blue
set color6=blue
set color7=blue
run
set curplottitle="Mounika Mylavarapu-2024102006"
plot v(clk) 2+v(D)  4+v(q)

.endc