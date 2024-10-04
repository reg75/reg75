with Ada.Text_IO;

procedure Translator is 
--------------------------------------------------------
--| Displays a French colour, give the English colour.
--| Author: Paul Regnier
--| Last updated September 2024
--------------------------------------------------------

   --Creates English colours enumeration type
   TYPE EnglishColours IS 
     (white, black, red, purple, blue, green, yellow, orange);
   --Creates French colours enumeration type
   TYPE FrenchColours IS 
     (blanc, noir, rouge, violet, bleu, vert, jaune, orange);
   
   --Creates English colours package
   PACKAGE English_Colour_IO IS NEW Ada.Text_IO.Enumeration_IO(Enum=>EnglishColours);
   --Creates French colours package
   PACKAGE French_Colour_IO IS NEW Ada.Text_IO.Enumeration_IO(Enum=>FrenchColours);

   --Sets up variables for input and output words
   English_Word : EnglishColours;
   French_Word : FrenchColours;
   Position : Natural;

begin

   --User inputs English colour.
   Ada.Text_IO.Put(Item => "Enter an English colour: ");
   English_Colour_IO.Get(Item => English_Word);
   
   --Finds the position of entered word in EnglishColours
   Position := EnglishColours'Pos(English_Word);

   --Finds corresponding word in FrenchColours
   French_Word := FrenchColours'Val(Position);

   --Outputs result
   Ada.Text_IO.Put(Item => "French Word: ");
   French_Colour_IO.Put(Item => French_Word,
     Set => Ada.Text_IO.Lower_Case);
   Ada.Text_IO.New_Line;

end Translator;