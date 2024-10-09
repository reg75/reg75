with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
with Screen;

procedure house_costs_p_4_6 is
--------------------------------------------------------------------
--| Displays total costs for different houses
--| My solution to Chapter 4 Programming Project 6 (p. 152)
--| Author: Paul Regnier
--| Last modified: October 2024
--------------------------------------------------------------------

   --Create Non-negative float data type
   subtype NonNegFloat is Float range 0.0 .. Float'Last;

   --Creates variables for House A
   House_A_Cost : NonNegFloat := 67_000.00; --House A cost
   House_A_Fuel : NonNegFloat := 2_300.00; --House A annual fuel
   House_A_Tax_Rate : NonNegFloat := 0.025; --House A tax rate
   --Creates variables for House B
   House_B_Cost : NonNegFloat := 62_000.00; --House B cost
   House_B_Fuel : NonNegFloat := 2_500.00; --House B annual fuel
   House_B_Tax_Rate : NonNegFloat := 0.025; --House B tax rate
   --Creates variables for House C
   House_C_Cost : NonNegFloat := 75_000.00; --House C cost
   House_C_Fuel : NonNegFloat := 1_850.00; --House C annual fuel
   House_C_Tax_Rate : NonNegFloat := 0.02; --House C tax rate

   --Total variables (used for all 3 houses)
   Total_Fuel : NonNegFloat;
   Total_Tax : NonNegFloat;
   Total_Costs : NonNegFloat;


begin

   --Displays table header
   Screen.ClearScreen; --Clears screen
   Screen.MoveCursor (Row => 6, Column => 5);
   Ada.Text_IO.Put(Item => "Property:");
   Screen.MoveCursor (Row => 6, Column => 20);
   Ada.Text_IO.Put(Item => "Init. cost:");
   Screen.MoveCursor (Row => 6, Column => 35);
   Ada.Text_IO.Put(Item => "Fuel:");
   Screen.MoveCursor (Row => 6, Column => 50);
   Ada.Text_IO.Put(Item => "Tax:");
   Screen.MoveCursor (Row => 6, Column => 65);
   Ada.Text_IO.Put(Item => "Total:");

   --Assigns variables for house A
   Total_Fuel := House_A_Fuel * 5.0;
   Total_Tax := House_A_Cost * House_A_Tax_Rate * 5.0;
   Total_Costs := House_A_Cost + Total_Fuel + Total_Tax;

   --Displays House A results
   Screen.MoveCursor (Row => 7, Column => 5);
   Ada.Text_IO.Put(Item => "House A");
   Screen.MoveCursor (Row => 7, Column => 20);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => House_A_Cost, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 7, Column => 35);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Fuel, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 7, Column => 50);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Tax, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 7, Column => 65);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Costs, Fore=>1, Aft=>2, Exp=>0);

   --Assigns variables for house B
   Total_Fuel := House_B_Fuel * 5.0;
   Total_Tax := House_B_Cost * House_B_Tax_Rate * 5.0;
   Total_Costs := House_B_Cost + Total_Fuel + Total_Tax;

   --Displays House B results
   Screen.MoveCursor (Row => 8, Column => 5);
   Ada.Text_IO.Put(Item => "House B");
   Screen.MoveCursor (Row => 8, Column => 20);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => House_B_Cost, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 8, Column => 35);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Fuel, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 8, Column => 50);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Tax, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 8, Column => 65);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Costs, Fore=>1, Aft=>2, Exp=>0);

   --Assigns variables for house C
   Total_Fuel := House_C_Fuel * 5.0;
   Total_Tax := House_C_Cost * House_C_Tax_Rate * 5.0;
   Total_Costs := House_C_Cost + Total_Fuel + Total_Tax;

   --Displays House C results
   Screen.MoveCursor (Row => 9, Column => 5);
   Ada.Text_IO.Put(Item => "House C");
   Screen.MoveCursor (Row => 9, Column => 20);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => House_C_Cost, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 9, Column => 35);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Fuel, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 9, Column => 50);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Tax, Fore=>1, Aft=>2, Exp=>0);
   Screen.MoveCursor (Row => 9, Column => 65);
   Ada.Text_IO.Put(Item => "$");
   Ada.Float_Text_IO.Put(Item => Total_Costs, Fore=>1, Aft=>2, Exp=>0);

   Ada.Text_IO.New_Line;

end house_costs_p_4_6;