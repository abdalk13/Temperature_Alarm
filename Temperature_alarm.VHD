library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity Temperature_alarm is 
    Port ( D : in  STD_LOGIC; 
           B3 : in  STD_LOGIC; 
           B2 : in  STD_LOGIC; 
           B1 : in  STD_LOGIC; 
           B0 : in  STD_LOGIC; 
           Normal : out  STD_LOGIC; 
           Warning : out  STD_LOGIC; 
           Alarm : out  STD_LOGIC); 
end Temperature_alarm; 
architecture Dataflow of Temperature_alarm is 
begin 
   Normal <= (not D and not B3 and not B2) or (not D and not B3 and 
not B1) or (not D and not B3 and not B0); 
   Warning <= (not D and not B3 and B2 and B1 and B0) or (not D and 
B3 and not B2 and not B1 and not B0); 
   Alarm <= (B3 and B0) or (B3 and B1) or (B3 and B2) or D; 
end Dataflow; 
