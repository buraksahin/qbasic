DIM x AS INTEGER
DIM y AS INTEGER

SCREEN _NEWIMAGE(600, 600, 256)

CLS

y = 100

WHILE INKEY$ = ""
    FOR x = 0 TO 299
        LINE (299 - x, 299 - x)-(300 + x, 300 + x), y + x, B

        IF y = 125 THEN
            y = 100
        END IF

        y = y + 1
        CLS
    NEXT x
WEND
SLEEP

