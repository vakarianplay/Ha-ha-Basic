
G = 11!
CP = 2600!
T0 = 403!
GX = 45!
CPX = 4240!
TX0 = 293!
KT = 400!
F = 70!
CLS

TX1 = ((GX * CPX * TX0) + ((KT * F * G * CP * T0) / ((G * CP) + (KT * F))))
TX2 = (((GX * CPX) + (KT * F)) - ((KT ^ 2 * F ^ 2) / ((G * CP) + (KT * F))))
TX = TX1 / TX2


TK = ((G * CP * T0) + (KT * F * TX)) / ((G * CP) + (KT * F))

Q1 = (G * CP * T0) - (G * CP * TK) + (KT * F * (TX - TK))
Q2 = (GX * CPX * TX0) - (GX * CPX * TX) + (KT * F * (TK - TX))


PRINT "TX="; TX
PRINT "TK="; TK
PRINT Q1, Q2



END

