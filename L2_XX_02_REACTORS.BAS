'......EXE SNODU......
'sys09¶°30×9Ò³ÚÐûÂ¿´Ç102802605¶°±¿ÇÁ78900%½°%8430032
'
'_Gruppa_______F.I.O.___________N__
'
'  XX-13 txw   ......
'
DECLARE SUB FDY (t!, CY!(), FC!(), NE%)
DEFINT I-K, M-N
INPUT "N="; N
INPUT "NP="; NP
INPUT "K="; K
INPUT "HTM="; HTM
DIM Y(N), F(N), W0(N), Y2(N), F1(N), F2(N)

FOR j = 1 TO N
    INPUT W0(j)
    Y(j) = W0(j)
NEXT j

ip = 0
X = 0!

PRINT "  X        ARRAY Y"
S99:
'Ca = 1 * EXP((-0.5) * X)

PRINT USING "##.####"; X;
FOR j = 1 TO N
    PRINT USING "##.####"; Y(j);
    ' PRINT USING "##.####"; Ca;
NEXT j
PRINT
S100:
FOR jk = 1 TO K
    CALL FDY(X, Y(), F1(), N)

    FOR jn = 1 TO N
        Y2(jn) = Y(jn) + HTM * F1(jn)
    NEXT jn

    X = X + HTM
    CALL FDY(X, Y2(), F2(), N)
    FOR j = 1 TO N
        Y(j) = Y(j) + HTM * (F1(j) + F2(j)) / 2!
    NEXT j
NEXT jk
ip = ip + 1

ON (NP + 1 - ip) GOTO S300
GOTO S99
S300:
FOR j = 1 TO N
    PRINT "X="; X; "Y("; j; ")="; Y(j);
NEXT j
PRINT

END
'..........PODPROGRAMMA......

SUB FDY (t, CY(), FC(), NE)

    FC(1) = -1 * CY(1) + 0.5 * CY(1)
    FC(2) = 1 * CY(1) + (-0.75) * CY(2) + 0.25 * CY(3) + (-0.5) * CY(2)
    FC(3) = 0.75 * CY(2) + (-0.25) * CY(3)


END SUB

