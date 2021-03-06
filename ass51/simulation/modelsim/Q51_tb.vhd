LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Q51_tb  IS 
END ; 
 
ARCHITECTURE Q51_tb_arch OF Q51_tb IS
  SIGNAL sig_sub   :  STD_LOGIC  ; 
  SIGNAL next_result   :  std_logic_vector (8 downto 0)  ; 
  SIGNAL mpd   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL toggle_position   :  INTEGER range 0 to 7; 
  SIGNAL sig_add   :  STD_LOGIC  ; 
  SIGNAL result   :  std_logic_vector (8 downto 0)  ; 
  COMPONENT ass51  
    PORT ( 
      sig_sub  : in STD_LOGIC ; 
      next_result  : out std_logic_vector (8 downto 0) ; 
      mpd  : in std_logic_vector (7 downto 0) ; 
      toggle_position  : in INTEGER range 0 to 7; 
      sig_add  : in STD_LOGIC ; 
      result  : in std_logic_vector (8 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : ass51  
    PORT MAP ( 
      sig_sub   => sig_sub  ,
      next_result   => next_result  ,
      mpd   => mpd  ,
      toggle_position   => toggle_position  ,
      sig_add   => sig_add  ,
      result   => result   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 result  <= "00000000"  ;
	wait for 1 ns ;
	 result  <= "11111001"  ;
	wait for 1 ns ;
	 result  <= "00000111"  ;
	wait for 1 ns ;
	 result  <= "11101011"  ;
	wait for 1 ns ;
	 result  <= "01011011"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 mpd  <= "00000111"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 sig_add  <= '0'  ;
	wait for 1 ns ;
	sig_add <='1';
	wait for 1 ns;
	sig_add  <= '0'  ;
	wait for 1 ns ;
	sig_add  <= '1'  ;
	wait for 1 ns ;
	sig_add  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
  Process
	Begin
	 sig_sub  <= '1'  ;
	wait for 1 ns ;
	sig_sub  <= '0'  ;
	wait for 1 ns ;
	sig_sub  <= '1'  ;
	wait for 1 ns ;
	sig_sub  <= '0'  ;
	wait for 1 ns ;
	sig_sub  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;

-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 toggle_position <= 0  ;
	wait for 1 ns ;
	toggle_position <= 1  ;
	wait for 1 ns ;
	toggle_position <= 2  ;
	wait for 1 ns ;
	toggle_position <= 4  ;
	wait for 1 ns ;
	toggle_position <= 4  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
