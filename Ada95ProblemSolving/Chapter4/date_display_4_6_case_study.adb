with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Calendar;

procedure date_display_4_6_case_study is
---------------------------------------------------------
--| Finds and displays date in dd/mm/yyyy format
--| My solution to the case study on p. 141-143
--| Author: Paul Regnier
--| Last modified: Sep 2024
---------------------------------------------------------
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

--Displays results in DD/MM/YYYY format
Ada.Text_IO.Put(Item => "The date (DD/MM/YYYY) is ");
Ada.Integer_Text_IO.Put(Item => This_Day, Width=>0);
Ada.Text_IO.Put(Item => "/");
Ada.Integer_Text_IO.Put(Item => This_Month, Width=>0);
Ada.Text_IO.Put(Item => "/");
Ada.Integer_Text_IO.Put(Item => This_Year, Width=>0);


end date_display_4_6_case_study;