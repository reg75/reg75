with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure programming_5_2 is 
----------------------------------------------------------------------------
--| Section 5.2 Programming
--| My solution to the task on p.166 of Ada 95 Problem Solving
--| Author: Paul Regnier
--| Last Updated: October 2024
----------------------------------------------------------------------------

-- exercise variables
Item : Integer;
Product : Integer;
X : Integer;
Y : Integer;
Difference : Natural;
ZeroCount : Natural := 0;
MinusSum : Natural := 0;
PlusSum: Natural := 0;

begin

-- Takes inputs for part a.
Ada.Text_IO.Put(Item => "Enter a value for Item, then press ENTER: " );
Ada.Integer_Text_IO.Get(Item => Item);
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "Enter a value for Product, then press ENTER: " );
Ada.Integer_Text_IO.Get(Item => Product);
Ada.Text_IO.New_Line;

-- Calculutes output for part a.
if Item /= 0 then
   Product := Item * Product;
end if;

Ada.Text_IO.Put(Item => "Product = ");
Ada.Integer_Text_IO.Put(Item => Product, Width=>1);
Ada.Text_IO.New_Line;

-- Takes inputs for part b and c.
Ada.Text_IO.Put(Item => "Enter a value for X, then press ENTER: " );
Ada.Integer_Text_IO.Get(Item => X);
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "Enter a value for Y, then press ENTER: " );
Ada.Integer_Text_IO.Get(Item => Y);
Ada.Text_IO.New_Line;

-- Calculates outputs for part b.
if X >= Y then
   Difference := X - Y;
else
   Difference := Y - X;
end if;

-- Calculates outputs for part b.
if X = 0 then
   ZeroCount := ZeroCount + 1;
else
   if X > 0 then
      PlusSum := PlusSum + X;
   else
      MinusSum := MinusSum + X;
   end if;
end if; 

-- Outputs results for parts b and c.
Ada.Text_IO.Put(Item => "The difference between X and Y is " & Integer'Image(Difference));
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "ZeroCount: " & Integer'Image(ZeroCount));
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "PlusSum: " & Integer'Image(PlusSum));
Ada.Text_IO.New_Line;
Ada.Text_IO.Put(Item => "MinusSum: " & Integer'Image(MinusSum));
Ada.Text_IO.New_Line;

end programming_5_2;