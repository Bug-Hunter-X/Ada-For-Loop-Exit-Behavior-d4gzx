```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         exit;
      end if;
   end loop;
   --The issue is that the loop does not necessarily terminate at index 5.
   --Ada uses a loop index that is initialized before loop execution. The exit statement only terminates the loop iteration when the condition is met.
   --The variable I is only updated after the if condition is tested.
   --This means that the loop index I can reach values beyond 5 after exit
   Put_Line("I after loop: " & Integer'Image(I));
Exception
   when others =>
      Put_Line("Error");
End Example;
```