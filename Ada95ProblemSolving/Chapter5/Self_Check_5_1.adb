with Ada.Text_IO;

procedure Self_Check_5_1 is 
----------------------------------------------------------------------------
--| Solutions to Section 5.1 Self-Check exercises
--| (Page 162 of Ada 95 Problem Solving)
--| Author: Paul Regnier
--| Last Updated: October 2024
----------------------------------------------------------------------------

-- Exercise variables
X : Float := 15.0;
Y : Float := 25.0;
Var1 : Float := 15.0;
Var2 : Float := 25.12;

begin

-- Exercise 2
Ada.Text_IO.Put_Line(Item => "Exercise 2:" );
Ada.Text_IO.Put_Line(Item => "-----------" );
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "X /= Y  " );
Ada.Text_IO.Put(Item => Boolean'Image (X /= Y));
Ada.Text_IO.New_Line;

Ada.Text_IO.Put(Item => "X < Y  " );
Ada.Text_IO.Put(Item => Boolean'Image (X < Y));
Ada.Text_IO.New_Line;

Ada.Text_IO.Put(Item => "X >= (Y - X)  " );
Ada.Text_IO.Put(Item => Boolean'Image (X >= (Y - X)));
Ada.Text_IO.New_Line;

Ada.Text_IO.Put(Item => "X = (Y + X -Y)  " );
Ada.Text_IO.Put(Item => Boolean'Image (X = (Y + X -Y)));
Ada.Text_IO.New_Line;
Ada.Text_IO.New_Line;

-- Exercise 3
Ada.Text_IO.Put_Line(Item => "Exercise 3:" );
Ada.Text_IO.Put_Line(Item => "-----------" );
Ada.Text_IO.New_Line;

Ada.Text_IO.Put(Item => "a) ");
if 12 < 12 then
   Ada.Text_IO.Put(Item => "Never");
else
   Ada.Text_IO.Put(Item => "Always");
end if;
Ada.Text_IO.New_Line;

Ada.Text_IO.Put_Line(Item => "b) Illegal comparison (integer and float)");

Ada.Text_IO.Put_Line(Item => "c) Illegal - left operand multiplies integer and float.");

Ada.Text_IO.Put_Line(Item => "d) Illegal - left operand multiplies integer and float.");
Ada.Text_IO.New_Line;


end Self_Check_5_1;