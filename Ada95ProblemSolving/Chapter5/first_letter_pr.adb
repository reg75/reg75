with Ada.Text_IO;

procedure first_letter_pr is 
----------------------------------------------------------------------------
--| Reads three letters and finds the first alphabetically
--| My solution to the case study on p.163-165 of Ada 95 Problem Solving
--| Author: Paul Regnier
--| Last Updated: October 2024
----------------------------------------------------------------------------

-- input variables
Ch1 : Character;
Ch2 : Character;
Ch3 : Character;

--output variable
AlphaFirst : Character;

begin

-- Reads input characters
Ada.Text_IO.Put_Line(Item => "Type any three letters, then press ENTER: " );
Ada.Text_IO.Get(Item => Ch1);
Ada.Text_IO.Get(Item => Ch2);
Ada.Text_IO.Get(Item => Ch3);
Ada.Text_IO.New_Line;

-- Finds first letter
if Ch1 <= Ch2 then
   Alphafirst := Ch1;
else
   Alphafirst := Ch2;
end if;

if Ch3 < Alphafirst then
   Alphafirst := Ch3;
end if;

-- Displays result
Ada.Text_IO.Put(Item => "The first letter alphabetically is: ");
Ada.Text_IO.Put(Item => Alphafirst);
Ada.Text_IO.New_Line;

end first_letter_pr;