LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY ass5new_tb  IS 
END ; 
 
ARCHITECTURE ass5new_tb_arch OF ass5new_tb IS
  SIGNAL add   :  STD_LOGIC  ; 
  SIGNAL mpr_in   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL prev_toggle_position   :  INTEGER range -1 to 7 ; 
  SIGNAL toggle_position   :  INTEGER  range -1 to 7 ;
  SIGNAL sub   :  STD_LOGIC  ; 
  SIGNAL go   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  signal next_result: std_logic_vector(16 downto 0);
  signal result: std_logic_vector(16 downto 0); 
  SIGNAL shifted_mpd   :  std_logic_vector (16 downto 0)  ; 
  SIGNAL mpd_in   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT ass5new  
    PORT ( 
     mpd_in,mpr_in: in std_logic_vector(7 downto 0);
clk,go: in std_logic;
add,sub: out std_logic;
toggle_position: out integer range -1 to 7;
shifted_mpd: out std_logic_vector(16 downto 0);
prev_toggle_position: out integer range -1 to 7;
result: out std_logic_vector(16 downto 0);
next_result: out std_logic_vector(16 downto 0)); 
  END COMPONENT ; 
BEGIN
  DUT  : ass5new  
    PORT MAP ( 
		next_result=>next_result,
      add   => add  ,
      mpr_in   => mpr_in  ,
      prev_toggle_position   => prev_toggle_position  ,
      toggle_position   => toggle_position  ,
      sub   => sub  ,
		result=>result,
      go   => go  ,
      clk   => clk  ,
      shifted_mpd   => shifted_mpd  ,
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
	wait for 890 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
