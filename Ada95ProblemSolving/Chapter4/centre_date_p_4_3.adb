with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Calendar;
with Screen;
procedure centre_date_4_3 is

-----------------------------------------------------------------------
--| Displays date in dd/mm/yyyy format in the centre of the screen
--| My solution to Ada95 Problem Solving Chp 4 Prog Project 3 (p.152) 
--| Author: Paul Regnier
--| Last modified: Oct 2024
-----------------------------------------------------------------------

   --Creates time variables
   Right_Now : Ada.Calendar.Time; --Gets current time
   This_Year : Ada.Calendar.Year_Number; 
   This_Month : Ada.Calendar.Month_Number;
   This_Day : Ada.Calendar.Day_Number;


begin -- Centre Screen

   --Assigns time variables
   Right_Now := Ada.Calendar.Clock;
   This_Year := Ada.Calendar.Year (Right_Now);
   This_Month := Ada.Calendar.Month (Right_Now);
   This_Day := Ada.Calendar.Day (Right_Now);

   --Displays date in the centre of the screen
   Screen.ClearScreen; --Clears screen
   Screen.MoveCursor (Row => 12, Column => 36);
   Ada.Integer_Text_IO.Put(Item => This_Day, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Month, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Year, Width=>0);

   
end centre_date_4_3;