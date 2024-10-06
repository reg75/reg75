with Ada.Text_IO; use Ada.Text_IO;


procedure french_eng_days_p_4_4 is

-----------------------------------------------------------------------
--| Translates days of the week from English to French
--| My solution to Ada95 Problem Solving Chp 4 Prog Project 4 (p.152) 
--| Author: Paul Regnier
--| Last modified: Oct 2024
-----------------------------------------------------------------------

   --Creates English days enumeration type.
   type EnglishDays is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

   --Creates French days enumeration type.
   type FrenchDays is 
     (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);
  
   --Creates English days IO package
   package English_Days_IO is new Ada.Text_IO.Enumeration_IO(Enum=>EnglishDays);
   --Creates French colours package
   package French_Days_IO is new Ada.Text_IO.Enumeration_IO(Enum=>FrenchDays);

   --Sets up variables for input and output words
   English_Word : EnglishDays;
   French_Word : FrenchDays;
   Position : Natural;

begin

   --User inputs English colour.
   Ada.Text_IO.Put(Item => "Enter a day of the week in English: ");
   English_Days_IO.Get(Item => English_Word);
   
   --Finds the position of entered word in EnglishColours
   Position := EnglishDays'Pos(English_Word);

   --Finds corresponding word in FrenchColours
   French_Word := FrenchDays'Val(Position);

   --Outputs result
   Ada.Text_IO.Put(Item => "This day in French is: ");
   French_Days_IO.Put(Item => French_Word,
     Set => Ada.Text_IO.Lower_Case);
   Ada.Text_IO.New_Line;

end french_eng_days_p_4_4;

