LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY Temperature_alarm_tb IS 
END Temperature_alarm_tb; 
ARCHITECTURE behavior OF Temperature_alarm_tb IS   
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT Temperature_alarm 
    PORT( 
         D : IN  std_logic; 
         B3 : IN  std_logic; 
         B2 : IN  std_logic; 
         B1 : IN  std_logic; 
         B0 : IN  std_logic; 
         Normal : OUT  std_logic; 
         Warning : OUT  std_logic; 
         Alarm : OUT  std_logic 
        ); 
    END COMPONENT;     
   --Inputs 
   signal D : std_logic := '0'; 
   signal B3 : std_logic := '0'; 
   signal B2 : std_logic := '0'; 
   signal B1 : std_logic := '0'; 
   signal B0 : std_logic := '0'; 
   --Outputs 
   signal Normal : std_logic; 
   signal Warning : std_logic; 
   signal Alarm : std_logic; 
   
BEGIN  
   -- Instantiate the Unit Under Test (UUT) 
   uut: Temperature_alarm PORT MAP ( 
          D => D, 
          B3 => B3, 
          B2 => B2, 
          B1 => B1, 
          B0 => B0, 
          Normal => Normal, 
          Warning => Warning, 
          Alarm => Alarm 
        ); 
-- Stimulus 
B0 <= not B0 after 50 ns; 
B1 <= not B1 after 100 ns; 
B2 <= not B2 after 200 ns; 
B3 <= not B3 after 400 ns; 
D <= not D after 800 ns; 
END; 
