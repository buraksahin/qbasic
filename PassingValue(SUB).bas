CLS
SCREEN 12
RANDOMIZE TIMER / 3
DIM SHARED ArraySize AS INTEGER
ArraySize = 20
DIM SHARED Array(ArraySize) AS INTEGER
PRINT "Generated Number List:"
PrepareRandomArray
DIM Num AS INTEGER
INPUT "Find number in list: ", Num
FindNumber (Num)
PrintList

' Prepare random array
SUB PrepareRandomArray ()
    FOR I = 1 TO ArraySize
        Array(I) = INT(RND * 100) + 1
    NEXT I
END SUB

' Find number if it is exist in array
SUB FindNumber (Number AS INTEGER)
    FOR K = 1 TO ArraySize
        IF Number = Array(K) THEN
            PRINT "Number exists"
            GOTO FINISH
        END IF
    NEXT K
    PRINT Number; " is not exist in the list."
    FINISH:
END SUB

' Print array list
SUB PrintList ()
    FOR T = 1 TO ArraySize
        PRINT Array(T);
        IF T MOD 5 = 0 THEN
            PRINT ""
        END IF
    NEXT T
END SUB
