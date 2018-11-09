DIM SW AS INTEGER
DIM SH AS INTEGER
DIM Colors AS INTEGER
DIM PicNumber AS INTEGER
DIM x AS INTEGER

SW = 1280 ' Screen Width
SH = 720 ' Screen Height

SCREEN _NEWIMAGE(SW, SH, 256)

Colors = 32


FOR x = 1 TO SW
    _LIMIT 10
    CIRCLE ((SW / 2 - x - 1), (SH / 2 / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 + x - 1), (SH / 2 / 2 - 1)), x, Colors
    CIRCLE ((SW / 2) - 1, (SH / 2 / 2 + x - 1)), x, Colors
    CIRCLE ((SW / 2 - 1), (SH / 2 / 2 - x - 1)), x, Colors

    CIRCLE ((SW / 2 - x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 + x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 - 1), (SH / 2 + x - 1)), x, Colors
    CIRCLE ((SW / 2 - 1), (SH / 2 - x - 1)), x, Colors

    CIRCLE ((SW / 2 - x - 1), (SH - SH / 2 / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 + x - 1), (SH - SH / 2 / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 - 1), (SH - SH / 2 / 2 + x - 1)), x, Colors
    CIRCLE ((SW / 2 - 1), (SH - SH / 2 / 2 - x - 1)), x, Colors


    CIRCLE ((SW / 2 / 2 - x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 / 2 + x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW / 2 / 2) - 1, (SH / 2 + x - 1)), x, Colors
    CIRCLE ((SW / 2 / 2 - 1), (SH / 2 - x - 1)), x, Colors

    CIRCLE ((SW - SW / 2 / 2 - x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW - SW / 2 / 2 + x - 1), (SH / 2 - 1)), x, Colors
    CIRCLE ((SW - SW / 2 / 2 - 1), (SH / 2 + x - 1)), x, Colors
    CIRCLE ((SW - SW / 2 / 2 - 1), (SH / 2 - x - 1)), x, Colors

    Colors = Colors + 1
    Colors = Colors MOD 100
NEXT

