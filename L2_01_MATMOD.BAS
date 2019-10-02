CLS
DIM X(5)
X(1) = -2
X(2) = -1
X(3) = 0
X(4) = 1
X(5) = 2

DIM Y(5)
Y(1) = 0
Y(2) = 0
Y(3) = -1
Y(4) = 1
Y(5) = 3

n = 5
SUMY = 0
SUMX = 0
SUMX2 = 0
SUMXY = 0

FOR i = 1 TO n
    SUMY = SUMY + Y(i)
    SUMX = SUMX + X(i)
    SUMX2 = SUMX2 + X(i) ^ 2
    SUMXY = SUMXY + X(i) * Y(i)
    B0 = ((SUMY * SUMX2) - (SUMX * SUMXY)) / ((n * SUMXY) - (SUMX) ^ 2)
    B1 = ((n * SUMXY) - (SUMX * SUMY)) / ((n * SUMX2) - (SUMX) ^ 2)
NEXT

PRINT SUMY, SUMX, SUMX2, SUMXY
PRINT B0, B1

