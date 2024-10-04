with Ada.Text_IO;
with Screen;
procedure Initials_p_4_1 is
----------------------------------------------------------------------------------
--| Displays the initials PR in a box, in the centre of the terminal screen
--| Author: P. Regnier
--| Last Modified: October, 2024
----------------------------------------------------------------------------------
   
begin 

   Screen.ClearScreen;
   Screen.MoveCursor (Row => 7, Column => 30);
   Ada.Text_IO.Put (Item =>    "XXXXXXXXXXXXXXXX");
   Screen.MoveCursor (Row => 8, Column => 30);
   Ada.Text_IO.Put (Item =>    "X              X");
   Screen.MoveCursor (Row => 9, Column => 30);
   Ada.Text_IO.Put (Item =>    "X XXXX   XXXX  X");
   Screen.MoveCursor (Row => 10, Column => 30);
   Ada.Text_IO.Put (Item =>    "X X   X  X   X X");
   Screen.MoveCursor (Row => 11, Column => 30);
   Ada.Text_IO.Put (Item =>    "X X   X  X   X X");
   Screen.MoveCursor (Row => 12, Column => 30);
   Ada.Text_IO.Put (Item =>    "X XXXX   XXXX  X");
   Screen.MoveCursor (Row => 13, Column => 30);
   Ada.Text_IO.Put (Item =>    "X X      X X   X");
   Screen.MoveCursor (Row => 14, Column => 30);
   Ada.Text_IO.Put (Item =>    "X X      X  X  X");
   Screen.MoveCursor (Row => 15, Column => 30);
   Ada.Text_IO.Put (Item =>    "X X      X   X X");
   Screen.MoveCursor (Row => 16, Column => 30);
   Ada.Text_IO.Put (Item =>    "X              X");
   Screen.MoveCursor (Row => 17, Column => 30);
   Ada.Text_IO.Put (Item =>    "XXXXXXXXXXXXXXXX");

   
   
end Initials_p_4_1;