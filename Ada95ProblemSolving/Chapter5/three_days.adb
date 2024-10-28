with Ada.Text_IO;

procedure three_days is 
-----------------------------------------------------------------------------------
--| Finds yesterday and tomorrow, given today.
--| Author: Michael Feldman, The George Washington University
--| Last Modified: June 1998
-----------------------------------------------------------------------------------

   type Days is 
      (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   package Day_IO is new Ada.Text_IO.Enumeration_IO(Enum=>Days); 

   Yesterday : Days;
   Today : Days;
   Tomorrow : Days;

begin -- three days

   -- Prompt user to enter a day
   Ada.Text_IO.Put (Item => "Enter the name of a day of the week > ");
   Day_IO.Get(Item => Today);

   -- Find yesterday
   if Today = Days'First then
      Yesterday := Days'Last;
   else 
      Yesterday := Days'Pred(Today);
   end if;

   Ada.Text_IO.Put(Item => "Yesterday was ");
   Day_IO.Put(Item => Yesterday);
   Ada.Text_IO.New_Line;
   
   Ada.Text_IO.Put(Item => "Today is ");
   Day_IO.Put(Item => Today);
   Ada.Text_IO.New_Line;

   -- Find tomorrow
   if Today = Days'Last then
      Tomorrow := Days'First;
   else 
      Tomorrow := Days'Succ(Today);
   end if;
   
   Ada.Text_IO.Put(Item => "Tomorrow will be ");
   Day_IO.Put(Item => Tomorrow);
   Ada.Text_IO.New_Line;

end three_days;