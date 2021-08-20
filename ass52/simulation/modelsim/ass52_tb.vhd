LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY ass52_tb  IS 
END ; 
 
ARCHITECTURE ass52_tb_arch OF ass52_tb IS
  SIGNAL sig_sub   :  STD_LOGIC  ; 
  SIGNAL toggle_location   :  INTEGER range -1 to 7 ; 
  SIGNAL prev_toggle_location   :  INTEGER range -1 to 7 ; 
  SIGNAL sig_add   :  STD_LOGIC  ; 
  SIGNAL mpr   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT ass52  
    PORT ( 
      sig_sub  : out STD_LOGIC ; 
      toggle_location  : out INTEGER range -1 to 7; 
      prev_toggle_location  : in INTEGER range -1 to 7; 
      sig_add  : out STD_LOGIC ; 
      mpr  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : ass52  
    PORT MAP ( 
      sig_sub   => sig_sub  ,
      toggle_location   => toggle_location  ,
      prev_toggle_location   => prev_toggle_location  ,
      sig_add   => sig_add  ,
      mpr   => mpr   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 mpr  <= "00001101"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
   Process
	Begin
	prev_toggle_location<=-1;
	wait for 100 ns ;
	prev_toggle_location<=0;
	wait for 100 ns ;
	prev_toggle_location<=1;
	wait for 100 ns ;
	prev_toggle_location<=2;
	wait for 100 ns ;
	prev_toggle_location<=4;
	wait for 100 ns ;
	prev_toggle_location<=4;
	wait for 100 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
