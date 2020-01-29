1.  

   ``` replacing tabs with commas
   FIND: \t*
   
   REPLACE: , 
   ```

   

2. FIND: (\w+), (\w+), (\w+ .*)

   REPLACE: \2 \1, (\3)

   ``` moved second group of words to the front, followed by the first group, following by a comma and the university name in parentheses
   FIND: (\w+), (\w+), (\w+ .*)
   
   REPLACE: \2 \1, (\3)
   
   ```

3. FIND: (.mp3 )

   REPLACE: .mp3\n

   ``` things in parenthesis get included into 

4. FIND: (\d{4}) (\w+ .*)\.

   REPLACE: \2_\1.

   

5. FIND: (\w)\w+,(\w+),\d{2}.\d,(\d+)

   REPLACE: \1_\2,\3

   

6. FIND: (\w)\w+,(\w{4})\w+,\d+.\d,(\d+)

   REPLACE: \1_\2,\3

   

7. FIND: (\w{3})\w+,(\w{3})\w+,(\d+.\d),(\d+)

   REPLACE: \1\2, \4, \3