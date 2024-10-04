package Screen is
-------------------------------------------------------------------------------
--| Procedures for drawing pictures on ANSI Terminal Screen
--| Author: M.B. Feldman, The George Washington University
--| Last Modified: July 1998
-------------------------------------------------------------------------------

-- constants; the number of rows and columns on the terminal

ScreenDepth : CONSTANT Integer := 24;
ScreenWidth : CONSTANT Integer := 80;

-- subtypes giving the ranges of acceptable inputs
-- to the cursor-positioning operation

subtype Depth is Integer range 1..ScreenDepth;
subtype Width is Integer range 1..ScreenWidth;

procedure Beep;
-- Pre: None
-- Post: Terminal makes its beep sound once

procedure ClearScreen;
-- Pre: None
-- Post: Terminal Screen is cleared

procedure MoveCursor (Column : Width; Row : Depth);
-- Pre: Column and Row have been assigned values
-- Post: Cursor is moved to the given spot on the screen

end Screen;