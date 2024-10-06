with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Calendar;

procedure world_dates_p_4_5 is
--------------------------------------------------------------------
--| Finds and displays date in different formats
--| My solution to Chapter 4 Programming Project 5 (p. 152)
--| Author: Paul Regnier
--| Last modified: October 2024
--------------------------------------------------------------------
   
   --Creates Roman Numeral enumeration type (for German dates)
   type RomanNumerals is (I, II, III, IV, V, VI, VII, VIII, IX, X, XI, XII);

   --Creates Roman Numerals IO package
   package Roman_Numerals_IO is new Ada.Text_IO.Enumeration_IO(Enum=>RomanNumerals);
   
   --Creates time variables
   Right_Now : Ada.Calendar.Time; --Gets current time
   This_Year : Ada.Calendar.Year_Number;
   This_Month : Ada.Calendar.Month_Number;
   This_Day : Ada.Calendar.Day_Number;


begin

   --Assigns time variables
   Right_Now := Ada.Calendar.Clock;
   This_Year := Ada.Calendar.Year (Right_Now);
   This_Month := Ada.Calendar.Month (Right_Now);
   This_Day := Ada.Calendar.Day (Right_Now);

   --Displays results in UK format
   Ada.Text_IO.Put(Item => "In the UK, today's date would be shown as: ");
   Ada.Integer_Text_IO.Put(Item => This_Day, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Month, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Year, Width=>0);
   Ada.Text_IO.New_Line;

   --Displays results in US format
   Ada.Text_IO.Put(Item => "In the USA, today's date would be shown as: ");
   Ada.Integer_Text_IO.Put(Item => This_Month, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Day, Width=>0);
   Ada.Text_IO.Put(Item => "/");
   Ada.Integer_Text_IO.Put(Item => This_Year, Width=>0);
   Ada.Text_IO.New_Line;

--Displays results in German format
   Ada.Text_IO.Put(Item => "In Germany, today's date would be shown as: ");
   Ada.Integer_Text_IO.Put(Item => This_Day, Width=>0);
   Ada.Text_IO.Put(Item => ".");
   Roman_Numerals_IO.Put(Item=>RomanNumerals'Val(This_Month -1));
   Ada.Text_IO.Put(Item => ".");
   Ada.Integer_Text_IO.Put(Item => This_Year, Width=>0);
   Ada.Text_IO.New_Line;


end world_dates_p_4_5;