
DIM ox AS INTEGER
DIM oy AS INTEGER


DIM x AS SINGLE
DIM y AS SINGLE


DIM px AS INTEGER
DIM py AS INTEGER


DIM prevpx AS INTEGER
DIM prevpy AS INTEGER


DIM w AS INTEGER
DIM h AS INTEGER

DIM k AS SINGLE


DIM i AS INTEGER

' screen settings
SCREEN 10
w = 800
h = 800

'draw settings
k = 10
ox = 200
oy = 200


CLS


LINE (0, oy)-(w, oy), 7
LINE (ox, 0)-(ox, h), 7


FOR i = 0 TO w

    x = (i - ox) / k

    ' type function
    y = x ^ 2 + SIN(x ^ 3) - 7


    px = i
    py = -y * k + oy

    IF i = 0 THEN
        prevpx = px
        prevpy = py
    END IF


    LINE (prevpx, prevpy)-(px, py), 1


    prevpx = px
    prevpy = py
NEXT i

