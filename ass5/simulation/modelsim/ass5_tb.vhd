LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY ass5_tb  IS 
END ; 
 
ARCHITECTURE ass5_tb_arch OF ass5_tb IS
  SIGNAL mpr_in   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL toggle_position   :  INTEGER range -1 to 7;
 signal next_result: std_logic_vector(8 downto 0); 
  SIGNAL go   :  STD_LOGIC  ;
 signal add,sub: std_logic; 
 signal prev_toggle_position: integer range -1 to 7 ;
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL result   :  std_logic_vector (8 downto 0)  ; 
  SIGNAL mpd_in   :  std_logic_vector (7 downto 0)  ; 
  signal shifted_mpd: std_logic_vector(8 downto 0);
  COMPONENT ass5  
    PORT ( 
      mpd_in,mpr_in: in std_logic_vector(7 downto 0);
clk,go: in std_logic;
add,sub: out std_logic;
toggle_position: out integer range -1 to 7;
shifted_mpd: out std_logic_vector(8 downto 0);
prev_toggle_position: out integer range -1 to 7;
next_result: out std_logic_vector(8 downto 0);
result: out std_logic_vector(8 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : ass5  
    PORT MAP ( add=>add,sub=>sub,
      mpr_in   => mpr_in  ,
		shifted_mpd=>shifted_mpd,
      toggle_position   => toggle_position  ,
		prev_toggle_position=>prev_toggle_position,
      go   => go  ,
      clk   => clk  ,
		next_result=>next_result,
      result   => result  ,
      mpd_in   => mpd_in   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 mpd_in  <= "00000111"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 mpr_in  <= "00001101"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 25 ns ;
-- 25 ns, single loop till start period.
	for Z in 1 to 19
	loop
	    clk  <= '1'  ;
	   wait for 25 ns ;
	    clk  <= '0'  ;
	   wait for 25 ns ;
-- 975 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 go  <= '0'  ;
	wait for 10 ns ;
	 go  <= '1'  ;
	wait for 100 ns ;
	 go  <= '0'  ;
	wait for 850 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
