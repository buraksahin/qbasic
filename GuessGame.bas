CLS
SCREEN 12
RANDOMIZE TIMER / 3
DIM UserGuess AS INTEGER
DIM RandomNumber AS INTEGER
UserGuess = 0
RandomNumber = INT(RND * 10) + 1

INPUT "GUESS NUMBER (1 TO 10): ", UserGuess
WHILE UserGuess <> RandomNumber
    IF UserGuess < RandomNumber THEN
        INPUT "Bigger than your guess: ", UserGuess
    ELSE
        INPUT "Smaller than your guess: ", UserGuess
    END IF
WEND

IF UserGuess = RandomNumber THEN
    PRINT "Number was "; RandomNumber
END IF
