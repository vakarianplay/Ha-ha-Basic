INPUT "N="; N
DIM X(5), Y(5), N(5)
X(1) = -2
X(2) = -1
X(3) = 0
X(4) = 1
X(5) = 2

Y(1) = 4
Y(2) = 3
Y(3) = 2
Y(4) = 2
Y(5) = 1

N(1) = 1
N(2) = 2
N(3) = 3
N(4) = 4
N(5) = 5

SUMMY = 0
SUMMX = 0
SUMMXY = 0
SUMMX2 = 0
FOR i = 1 TO 5
    SUMMY = SUMMY + Y(i)
    SUMMX = SUMMX + X(i)
    SUMMXY = SUMMXY + Y(i) * X(i)
    SUMMX2 = SUMMX2 + X(i) ^ 2

    B0 = ((SUMMY * SUMMX2) - (SUMMX * SUMMXY)) / ((N * SUMMX2) - (SUMMX) ^ 2)
    B1 = ((N * SUMMXY) - (SUMMX * SUMMY)) / ((N * SUMMX2) - (SUMMX) ^ 2)
NEXT
PRINT "B0="; B0
PRINT "B1="; B1

FOR i = 1 TO 5
    Qe(i) = B0 + B1 * X(i)
    PRINT "Qe="; Qe(i)
NEXT i
SUMMQ2 = 0
FOR i = 1 TO 5
    SUMMQ2 = SUMMQ2 + (Qe(i) - Y(i)) ^ 2
NEXT i
PRINT "SUMMQ2="; SUMMQ2
So = SUMMQ2 / 3
PRINT "So="; So

DIM Yv(4)
Yv(1) = -0.85
Yv(2) = -0.9
Yv(3) = -1.15
Yv(4) = -1.1

SUMMY = 0
SUMMY2 = 0
SUMMYo = 0
FOR i = 1 TO 4
    SUMMYv = SUMMYv + Yv(i)
    Ycp = SUMMYv / 4
NEXT
FOR i = 1 TO 4
    SUMMYv2 = SUMMYv2 + (Yv(i) - Ycp) ^ 2
    Sv = SUMMYv2 / 3
NEXT

PRINT "SUMMYv="; SUMMYv
PRINT "Ycp="; Ycp
PRINT "SUMMYv2="; SUMMYv2
PRINT "Sv="; Sv

Fr = So / Sv

PRINT "Fr="; Fr
END

