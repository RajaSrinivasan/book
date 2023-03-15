-- codemd: begin segment=env caption=Predefined Language Environment
with Ada.Command_Line;    use Ada.Command_Line;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- codemd: end


procedure Lister is
   Inpfile : Ada.Text_IO.File_Type;
   Line    : String (1 .. 256);
   Linelen : Natural;
   Lineno  : Integer := 0;
begin

-- codemd: begin segment=cmdline caption=Retrieve command line arguments
   if Ada.Command_Line.Argument_Count < 1 then
      Put_Line ("usage: lister <filename>");
      return;
   end if;
-- codemd: end

-- codemd: begin segment=mainloop caption=Main loop
   Open (Inpfile, In_File, Ada.Command_Line.Argument (1));
   while not End_Of_File (Inpfile) loop
      Get_Line (Inpfile, Line, Linelen);
      Lineno := Lineno + 1;
      Put (Lineno, Width => 4);
      Put (" : ");
      Put_Line (Line (1 .. Linelen));
   end loop;
   Ada.Text_IO.Close (Inpfile);
-- codemd: end
end Lister;
