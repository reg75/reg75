with Ada.Text_IO;

procedure first_letter is 
----------------------------------------------------------------------------
--| Reads three letters and finds the first alphabetically
--| My solution to the case study on p.163-165 of Ada 95 Problem Solving
--| Author: Paul Regnier
--| Last Updated: October 2024
----------------------------------------------------------------------------

-- input variables
Ch1, Ch2, Ch3 : Character; -- input - three letters
AlphaFirst : Character; -- output - first letter

begin -- first_letter

-- Read three letters
Ada.Text_IO.Put_Line(Item => "Enter any three letters, then press ENTER: " );
Ada.Text_IO.Get(Item => Ch1);
Ada.Text_IO.Get(Item => Ch2);
Ada.Text_IO.Get(Item => Ch3);
Ada.Text_IO.New_Line;

-- Save the smaller of Ch1 and Ch2 in Alphafirst
if Ch1 < Ch2 then
   AlphaFirst := Ch1; -- Ch1 comes before Ch2
else
   AlphaFirst := Ch2; -- Ch2 comes before Ch1
end if;

-- Save the smaller of Ch3 and Alphafirst in Alphafirst
if Ch3 < AlphaFirst then
   AlphaFirst := Ch3; -- Ch3 comes before Alphafirst
end if;

-- Display result
Ada.Text_IO.Put(Item => AlphaFirst);
Ada.Text_IO.Put(Item => " is the first letter alphabetically");
Ada.Text_IO.New_Line;

end first_letter;