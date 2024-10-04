with Ada.Text_IO;
with Screen;
procedure Smiley is
----------------------------------------------------------------------------------
--| Draws a "smiley face" in the centre of the terminal screen
--| Author: M.B. Feldman, The George Washington University
--| Last Modified: July 1998
----------------------------------------------------------------------------------
   
begin -- Smiley

   Screen.ClearScreen;
   Screen.Beep;
   delay 0.1;
   Screen.Beep;
   delay 0.1;
   Screen.Beep;
   delay 0.1;
   Screen.MoveCursor (Row => 7, Column => 34);
   Ada.Text_IO.Put (Item =>    "HAVE A NICE DAY!");
   Screen.MoveCursor (Row => 9, Column => 39);
   Ada.Text_IO.Put (Item =>    "_______");
   Screen.MoveCursor (Row => 10, Column => 37);
   Ada.Text_IO.Put (Item =>    "/         \");
   Screen.MoveCursor (Row => 11, Column => 36);
   Ada.Text_IO.Put (Item =>    "/           \");
   Screen.MoveCursor (Row => 12, Column => 35);
   Ada.Text_IO.Put (Item =>    "|             |");
   Screen.MoveCursor (Row => 13, Column => 35);
   Ada.Text_IO.Put (Item =>    "|   O     O   |");
   Screen.MoveCursor (Row => 14, Column => 36);
   Ada.Text_IO.Put (Item =>    "\     o     /");
   Screen.MoveCursor (Row => 15, Column => 37);
   Ada.Text_IO.Put (Item =>    "\  \___/  /");
   Screen.MoveCursor (Row => 16, Column => 38);
   Ada.Text_IO.Put (Item =>    "\       /");
   Screen.MoveCursor (Row => 17, Column => 39);
   Ada.Text_IO.Put (Item =>    "-------");
   Screen.MoveCursor (Row => 24, Column => 1);
   
end Smiley;