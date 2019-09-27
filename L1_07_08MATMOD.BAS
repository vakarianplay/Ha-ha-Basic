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


TXn1 = ((GX * CPX * TX0) + ((KT * F * G * CP * T0) / ((G * CP) + (KT * F)))) / (((GX * CPX) + (KT * F)) - ((KT ^ 2 * F ^ 2) / ((G * CP) + (KT * F))))
TKn1 = ((G * CP * T0) + (KT * F * TX)) / ((G * CP) + (KT * F))

Q1 = (G * CP * T0) - (G * CP * TK) + (KT * F * (TX - TK))
Q2 = (GX * CPX * TX0) - (GX * CPX * TX) + (KT * F * (TK - TX))

TXn2 = ((GX * CPX * TXn1) + ((KT * F * G * CP * T0) / ((G * CP) + (KT * F)))) / (((GX * CPX) + (KT * F)) - ((KT ^ 2 * F ^ 2) / ((G * CP) + (KT * F))))
TKn2 = ((G * CP * TKn1) + (KT * F * TX2)) / ((G * CP) + (KT * F))

PRINT "TX="; TXn1, TXn2
PRINT "TK="; TKn1, TKn2
PRINT Q1, Q2

EX = EXP(-1 * ((KT * F) / (GX * CPX)))
TXzm = ((G * CP * T0) + ((G * CP * TX0 * EX) / (1 - EX)) + (GX * CP * TX0)) / ((GX * CPX) + ((G * CP) / (1 - EX)))
TKzm = (TXzm - TX0 * EX) / (1 - EX)

PRINT "tk_zm="; TKzm
PRINT "tx_zm="; TXzm

DIM g_graph(7)
g_graph(1) = 7
g_graph(2) = 9
g_graph(3) = 11
g_graph(4) = 13
g_graph(5) = 15
g_graph(6) = 17
g_graph(7) = 19

DIM gx_graph(7)
gx_graph(1) = 15
gx_graph(2) = 20
gx_graph(3) = 25
gx_graph(4) = 30
gx_graph(5) = 35
gx_graph(6) = 40
gx_graph(7) = 45

FOR i = 1 TO 7
    TX1_graph(i) = ((GX * CPX * TX0) + ((KT * F * g_graph(i) * CP * T0) / ((g_graph(i) * CP) + (KT * F))))
    TX2_graph(i) = (((GX * CPX) + (KT * F)) - ((KT ^ 2 * F ^ 2) / ((g_graph(i) * CP) + (KT * F))))
    TX_graph(i) = TX1_graph(i) / TX2_graph(i)

    TK_graph(i) = ((g_graph(i) * CP * T0) + (KT * F * TX)) / ((g_graph(i) * CP) + (KT * F))
    PRINT "TX 1 ="; TX_graph(i);

    PRINT "TK 1 = "; TK_graph(i);

NEXT

FOR i = 1 TO 7
    TX11_graph(i) = ((gx_graph(i) * CPX * TX0) + ((KT * F * G * CP * T0) / ((G * CP) + (KT * F))))
    TX22_graph(i) = (((gx_graph(i) * CPX) + (KT * F)) - ((KT ^ 2 * F ^ 2) / ((G * CP) + (KT * F))))
    TX2_graph(i) = TX11_graph(i) / TX22_graph(i)
    TK2_graph(i) = ((G * CP * T0) + (KT * F * TX2_graph(i))) / ((G * CP) + (KT * F))
    PRINT "TX 2 ="; TX2_graph(i);
    PRINT "TK 2 = "; TK2_graph(i);

NEXT

END

