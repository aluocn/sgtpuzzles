# -*- makefile -*-

MINES_EXTRA = tree234

mines    : [X] GTK COMMON mines MINES_EXTRA mines-icon|no-icon

mines    : [G] WINDOWS COMMON mines MINES_EXTRA mines.res|noicon.res

mineobfusc :    [U] mines[STANDALONE_OBFUSCATOR] MINES_EXTRA STANDALONE
mineobfusc :    [C] mines[STANDALONE_OBFUSCATOR] MINES_EXTRA STANDALONE

ALL += mines[COMBINED] MINES_EXTRA

!begin gtk
GAMES += mines
!end

!begin >list.c
    A(mines) \
!end

!begin >wingames.lst
mines.exe:Mines
!end
