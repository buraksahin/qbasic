CLS
SCREEN _NEWIMAGE(600, 600, 256)
DECLARE SUB FPSLimit()
DECLARE SUB CheckKey()
RANDOMIZE TIMER / 3
DIM SHARED LastFrame AS SINGLE
DIM X AS INTEGER
DIM Y AS INTEGER
DIM Direction AS SINGLE
DIM RandColor AS INTEGER
TIMER ON
DIM SHARED MAXFPS AS INTEGER
MAXFPS = 200
DIM SHARED GAMESTATUS AS INTEGER
GAMESTATUS = 1
X = 0
Y = 600
Direction = 0
RandColor = 12
WHILE GAMESTATUS = 1
    LastFrame = TIMER
    LINE (X, Y - X)-(600, Y), RandColor
    IF Direction = 0 THEN
        X = X + 1
    ELSE
        X = X - 1
    END IF

    IF X > 600 THEN
        Direction = 1
        RandColor = INT(RND * 11) + 1
        Y = INT(RND * 600)
    END IF

    IF X < 0 THEN
        Direction = 0
        RandColor = INT(RND * 11) + 1
        Y = INT(RND * 600)
    END IF

    CheckKey
    FPSLimit
WEND

SUB FPSLimit ()
    DO
        CheckKey
    LOOP UNTIL TIMER - LastFrame > 1 / MAXFPS
END SUB

SUB CheckKey ()
    IF INKEY$ = "Q" OR INKEY$ = "q" THEN
        GAMESTATUS = 0
    ELSEIF INKEY$ = "C" OR INKEY$ = "c" THEN
        CLS
    END IF
END SUB

