with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Float_Text_IO;  use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure numlib is

   x_max : constant Float := Ada.Numerics.Pi / 4.0;
   x_delta : constant float := 0.1;
   procedure basic_functions is
      x     : Float := 0.1;
   begin
      Put_Line("Basic Functions=========================================");
--      Put_Line
--     ("  x   |Sqrt(x)| Log(x)   |Log10(x)| exp(x)|      x^3   |     x^x");
-- codemd: begin segment=basic caption=Basic Numeric functions
      while x <= x_max loop
         Put (x, Aft => 2, Exp => 0); Put (" | ");
         Put (Sqrt (x), Aft => 2, Exp => 0); Put (" | ");
         Put (Log (x), Exp => 0);  Put (" | ");
         Put (Log (x, Base => 10.0), Aft => 2, Exp => 0);  Put ("  | ");
         Put (Exp (x), Aft => 2, Exp => 0); Put (" | ");
         Put ( "**" (x, 3.0), Aft => 7, Exp => 0);  Put (" | ");
         Put (x ** x, Aft => 8, Exp => 0);
         New_Line;
         x := x + x_delta ;
      end loop;
   end basic_functions;
-- codemd: end

   procedure trigonometric_functions is
      x     : Float := 0.1;
   begin
      Put_Line("Trigonometric Functions=========================================");

      Set_Col(12) ; Put("x") ;
      Set_Col(22) ; Put("Sin(x)");
      Set_Col(32) ; Put("ArcSin") ;
      Set_Col(42) ; Put("Cos(x)");
      Set_Col(52) ; Put("ArcCos");
      Set_Col(63) ; Put("Tan(x)");
      Set_Col(71) ; Put("ArcTan");
      Put(" Cotan(x)");
      New_Line;
      while x <= x_max loop
         Set_Col(10); Put (x, Aft => 2, Exp => 0); 

         Set_Col(20); Put (Sin (x), Exp => 0); 
         Set_Col(30); Put (ArcSin (Sin(x)), Exp => 0); 
         Set_Col(40); Put (Cos (x), Exp => 0);
         Set_Col(50); Put (ArcCos (Cos(x)), Exp => 0);
         Set_Col(60); Put (Tan (x), Exp => 0);
         Set_Col(70); Put (ArcTan (Tan(x)), Exp => 0); Put(" ");
         Put (Cot (x), Exp => 0);
         New_Line;
         x := x + x_delta ;
      end loop;
   end trigonometric_functions;

   procedure hyperbolic_functions is
      x     : Float := 0.1;
   begin
      Put_Line("Hyperbolic Functions=========================================");

      Set_Col(12) ; Put("x") ;
      Set_Col(20) ; Put("Sinh(x)");
      Set_Col(42) ; Put("Cosh(x)");
      Set_Col(63) ; Put("Tanh(x)");
      New_Line;

      while x <= x_max loop
         Set_Col(10); Put (x, Aft => 2, Exp => 0); 

         Set_Col(20); Put (Sinh (x), Exp => 0); 

         Set_Col(40); Put (Cosh (x), Exp => 0);

         Set_Col(60); Put (Tanh (x), Exp => 0);
         New_Line;
         x := x + x_delta;
      end loop;
   end hyperbolic_functions;

begin
   basic_functions;
   trigonometric_functions;
   hyperbolic_functions;
end numlib ;
