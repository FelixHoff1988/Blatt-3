--a function  that  receives  a rational  number valued 
--length  in  km and returns  the  same length  in  miles. 
--example : 2km  =  1.242742mi 
kmToMtle :: Float  -> Float 
kmToMtle x = x * 0.621371 

--a  functton  that  receives  a rational  number valued 
--length  tn  miles  and returns  the  same length  in  km. 
--example: 2mi = 3.218688km 
mtleToKm :: Float  ->  Float 
mtleToKm x = x * 1.609344