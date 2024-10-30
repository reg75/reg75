with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure self_check_5_2 is 
----------------------------------------------------------------------------
--| Exercises for Section 5.2
--| My solution to the tasks on p.165 of Ada 95 Problem Solving
--| Author: Paul Regnier
--| Last Updated: October 2024
----------------------------------------------------------------------------

-- exercise variables
X : Float := 25.0;
Y : Float := 15.0;

begin

-- Exercise 1
Ada.Text_IO.Put_Line(Item => "Exercise 1." );
Ada.Text_IO.Put_Line(Item => "-----------" );
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "a) X = " );

if Y /= (X - 10.0) then
   X := X - 10.0;
else
   X := X / 2.0;
end if;

Ada.Float_Text_IO.Put(Item => X, Fore=>1, Aft=>1, Exp=>0); -- Value 12.5 assigned to X
Ada.Text_IO.New_Line;

Ada.Text_IO.Put(Item => "b) Illegal - multiplies integer by float." );
Ada.Text_IO.New_Line;

end self_check_5_2;