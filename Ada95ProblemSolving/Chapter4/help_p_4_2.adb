with Ada.Text_IO;
with Screen;
procedure help_p_4_2 is
----------------------------------------------------------------------------------
--| Beeps and flashes "HELP" in the centre of the terminal screen
--| Author: Paul Regnier
--| Last Modified: October 2024
----------------------------------------------------------------------------------
   
begin -- Help

   Screen.ClearScreen; --Clears screen
   
   --First Flash
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "HELP");
   delay 1.0;
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "    ");
   delay 1.0;

   --Second Flash
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "HELP");
   delay 1.0;
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "    ");
   delay 1.0;

   --Third Flash
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "HELP");
   delay 1.0;
   Screen.Beep;
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Text_IO.Put (Item => "    ");
   delay 1.0;
   
end help_p_4_2;