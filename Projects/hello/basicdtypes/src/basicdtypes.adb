with Ada.Text_IO; use Ada.Text_IO;
with Interfaces; use Interfaces;
with Ada.Numerics;

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Long_Integer_Text_Io; use Ada.Long_Integer_Text_Io;
with Ada.Long_Long_Float_Text_IO;   use Ada.Long_Long_Float_Text_IO;

procedure basicdtypes is

   procedure Show( typename : String ; s  : Integer ; f , l : Long_Integer ) is
   begin
      Put(typename);
      Set_Col(24);
      Put("Size "); Put(s);
      Put(" First "); Put(f);
      Put(" Last "); Put(l);
      New_Line;
   end Show;

   procedure Show( typename : String ; s : Integer; sf, sl, ss : Long_Long_Float) is
   begin
      Put(typename);
      Set_Col(24);
      Put("Size "); Put(s);
      Put(" Safe first "); Put(sf, aft => 6 );
      Put(" Safe Last "); Put(sl , aft => 6 );
      Put(" Safe Small "); Put(ss , aft => 6 );
      New_Line;
   end Show;

   procedure Constants is
   begin
      Put("Pi"); Set_Col(8); 
      Put(Long_Long_Float(Ada.Numerics.Pi)) ;
      New_Line;
      Put("e"); Set_Col(8);
      Put(Long_Long_Float(Ada.Numerics.e)) ;
      New_Line;
   end Constants;

   procedure Integer_Types is
   begin
      Show("Integer" , Integer'Size, Long_Integer(Integer'first), Long_Integer(Integer'last) );
      Show("Short_Integer" , Short_Integer'Size, Long_Integer(Short_Integer'first), Long_Integer(Short_Integer'last) );
      Show("Short_Short_Integer" , Short_Short_Integer'Size, Long_Integer(Short_Short_Integer'first), Long_Integer(Short_Short_Integer'last) );
   end Integer_Types;

   procedure Unsigned_Integer_Types is
   begin
      Show("Unsigned_8" , Unsigned_8'Size, Long_Integer(Unsigned_8'first), Long_Integer(Unsigned_8'last) );
      Show("Unsigned_16" , Unsigned_16'Size, Long_Integer(Unsigned_16'first), Long_Integer(Unsigned_16'last) );
      Show("Unsigned_32" , Unsigned_32'Size, Long_Integer(Unsigned_32'first), Long_Integer(Unsigned_32'last) );
   end Unsigned_Integer_Types ;

   procedure Real_Types is
   begin
      Show("Float" , Float'Size , Long_Long_Float(Float'Safe_First), Long_Long_Float(Float'Safe_Last), Long_Long_Float(Float'Safe_Small));
      Show("Long_Float" , Long_Float'Size , Long_Long_Float(Long_Float'Safe_First), 
                                       Long_Long_Float(Long_Float'Safe_Last), 
                                       Long_Long_Float(Long_Float'Safe_Small));
      Show("Long_Long_Float" , Long_Long_Float'Size , Long_Long_Float(Long_Long_Float'Safe_First), 
                                            Long_Long_Float(Long_Long_Float'Safe_Last), 
                                            Long_Long_Float(Long_long_Float'Safe_Small));
   end Real_Types;

begin
   Put_Line("Constants");
   Constants;
   Put_Line("Integer Types");
   Integer_Types;
   Put_Line("Unsigned Integer Types");
   Unsigned_Integer_Types;
   Put_Line("Real Types");
   Real_Types;


end basicdtypes ;

