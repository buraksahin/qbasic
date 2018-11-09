CLS
SCREEN 12
' GCD Finder
DIM SHARED Va1 AS INTEGER
DIM SHARED Va2 AS INTEGER
DECLARE FUNCTION GCD (MIN, MAX)
DECLARE FUNCTION FAC(NUM AS INTEGER)
DIM Result AS DOUBLE
DIM NumFac AS INTEGER

' GCD
INPUT "Enter value (1): ", Va1
INPUT "Enter value (2): ", Va2
PRINT "GCD of "; Va1; " and "; Va2; " is "; GCD(Va1, Va2)

' FAC
INPUT "Enter number: ", NumFac
Result# = FAC(NumFac)
PRINT "Factorial of "; NumFac; " is "; Result#

' Calculate GCD
FUNCTION GCD (MIN, MAX)
    IF MAX > MIN THEN
        IF MIN > 0 THEN
            GCD = GCD(MAX MOD MIN, MIN)
        ELSE
            GCD = MAX
        END IF
    END IF

    IF MIN > MAX THEN
        IF MAX > 0 THEN
            GCD = GCD(MIN MOD MAX, MAX)
        ELSE
            GCD = MIN
        END IF
    END IF
    IF MAX = MIN THEN
        GCD = MAX
    END IF
END FUNCTION

' Calculate factorial
FUNCTION FAC (NUM AS INTEGER)
    IF NUM > 0 THEN
        FAC = NUM * FAC(NUM - 1)
    ELSE
        FAC = 1
    END IF
END FUNCTION
