```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   Index_Found : Integer := 0;
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         Index_Found := I;
         exit;
      end if;
   end loop;
   Put_Line("Index where 5 was found: " & Integer'Image(Index_Found));
Exception
   when others =>
      Put_Line("Error");
End Example_Solution;
```