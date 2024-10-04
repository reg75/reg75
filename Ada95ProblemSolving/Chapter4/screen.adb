with Ada.Characters.Latin_1;
with Ada.Text_IO;
With Ada.Integer_Text_IO;

package body Screen is
-------------------------------------------------------------------------------
--| Body of screen handling package
--| Author: M.B. Feldman, The George Washington University
--| Last Modified: July 1998
-------------------------------------------------------------------------------

procedure Beep is
begin
   Ada.Text_IO.Put (Item => Ada.Characters.Latin_1.BEL);
   Ada.Text_IO.Flush;
end Beep;

procedure ClearScreen is 
begin
   Ada.Text_IO.Put (Item => Ada.Characters.Latin_1.ESC);
   Ada.Text_IO.Put (Item => "[2J");
   Ada.Text_IO.Flush;
end ClearScreen;

procedure MoveCursor (Column : Width; Row : Depth) is
begin
   Ada.Text_IO.Flush;
   Ada.Text_IO.Put (Item => Ada.Characters.Latin_1.ESC);
   Ada.Text_IO.Put ("[");
   Ada.Integer_Text_IO.Put (Item => Row, Width => 1);
   Ada.Text_IO.Put (Item => ';');
   Ada.Integer_Text_IO.Put (Item => Column, Width => 1);
   Ada.Text_IO.Put (Item => 'f');
end MoveCursor;

end Screen;