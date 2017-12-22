# Accurate V-Ref

@todo writeme

First select Rs with Equation 7
Irmin < Lr < Irmax
Where Irmax = 15mA
Vin range is about 3.0 - 4.0V say *worst case*
Rs large enough to maintain Ir < Irmax 
If unsure try using 0.1mA <= Ir <= 1mA


Load is very small < 1mA Lets say 0.01mA
Vout = 1.65
Vinmax = 4.0
Vinmin = 2.9
Iloadmin = 0.001mA
Iloadmax = 10mA
Irmin = 0.1mA
Irmax = 1mA

Rsmin = (Vinmax - Vout) / (Iloadmin + Irmax)
Rsmin = (4.0 - 1.65) / (0.00001 + 0.001)
= 2326.732673267327

Rsmax = (Vinmin - Vout) / (Iloadmax + Irmin)
Rsmax = (2.9 - 1.65) / (0.001 + 0.0001)
= 1136.363636363636

@todo those numbers wont work. Need to create spreadsheet and try adifferent numbers






