CLS
SCREEN 12
RANDOMIZE TIMER / 3
DIM UserGuess AS INTEGER
DIM RandomNumber AS INTEGER
UserGuess = 0
RandomNumber = INT(RND * 10) + 1

INPUT "GUESS NUMBER (1 TO 10): ", UserGuess
GUESS:
IF UserGuess < RandomNumber THEN
    INPUT "Bigger than your guess: ", UserGuess
    GOTO GUESS
ELSEIF UserGuess > RandomNumber THEN
    INPUT "Smaller than your guess: ", UserGuess
    GOTO GUESS
ELSE
    PRINT "Number was "; RandomNumber
END IF
