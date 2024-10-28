with Ada.Text_IO;

procedure three_days_pr is 
-----------------------------------------------------------------------------------
--| Displays yesterday an today, for a given day of the week.
--| My solution to case study 5.1, p.154-157 of Ada95 Problem Solving
--| Author: Paul Regnier
--| Last Modified: October, 2024
-----------------------------------------------------------------------------------

   -- Sets up Days enumberation type
   type Days is 
      (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   package Day_IO is new Ada.Text_IO.Enumeration_IO(Enum=>Days); 

   -- Problem inputs
   Today : Days;

   -- Problem outputs
   Yesterday : Days;
   Tomorrow : Days;

begin -- three days (pr)

   -- Takes user input
   Ada.Text_IO.Put(Item => "Type the day of the week, then press ENTER: ");
   Day_IO.Get(Item => Today);
   Ada.Text_IO.New_Line;

   -- Calculates output variables
   if Today = Days'First then
      Yesterday := Days'Last;
   else 
      Yesterday := Days'Pred(Today);
   end if;

   if Today = Days'Last then
      Tomorrow := Days'First;
   else 
      Tomorrow := Days'Succ(Today);
   end if;

   -- Outputs results
   Ada.Text_IO.Put(Item => "Today is ");
   Day_IO.Put(Item => Today);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put(Item => "Yesterday was ");
   Day_IO.Put(Item => Yesterday);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put(Item => "Tomorrow will be ");
   Day_IO.Put(Item => Tomorrow);
   Ada.Text_IO.New_Line;

end three_days_pr;