library ieee;
use ieee.std_logic_1164.all;
entity ass5 is
port(mpd_in,mpr_in: in std_logic_vector(7 downto 0);
clk,go: in std_logic;
add,sub: out std_logic;
toggle_position: out integer range -1 to 7;
shifted_mpd: out std_logic_vector(8 downto 0);
prev_toggle_position: out integer range -1 to 7;
next_result: out std_logic_vector(8 downto 0);
result: out std_logic_vector(8 downto 0));
end entity;
architecture booth of ass5 is
signal mpd,mpr: std_logic_vector(7 downto 0);
signal next_result1: std_logic_vector(8 downto 0):=(others=>'0');
signal sig_add,sig_sub: std_logic;
signal prev_toggle_location,toggle_location: integer range -1 to 7;
type state1 is (stidle,stcompute,stdone);
signal shifted_mpd1: std_logic_vector(8 downto 0):=(others=>'0');
signal state: state1:=stidle;
signal result1: std_logic_vector(8 downto 0):=(others=>'0');
component ass51 port(result: in std_logic_vector( 8 downto 0);
mpd: in std_logic_vector( 7 downto 0);
toggle_position: in integer range -1 to 7;
sig_add,sig_sub: in std_logic;
mpd3: out std_logic_vector( 8 downto 0);
next_result: out std_logic_vector(8 downto 0));
end component;
component ass52 port(mpr: in std_logic_vector( 7 downto 0); --controller_add_subtract_shift
prev_toggle_location: in integer range -1 to 7;
toggle_location: out integer range -1 to 7;
sig_add,sig_sub: out std_logic);
end component;
begin
process(clk)
begin
if(rising_edge(clk)) then
case state is
		when stidle=> if(go='1') then mpd<=mpd_in; mpr<=mpr_in; result1<= (others=>'0'); prev_toggle_location<=-1; state<=stcompute; end if;
		when stcompute=>  if(toggle_location = prev_toggle_location) then state<=stdone; prev_toggle_location<=-1;
															else 
															prev_toggle_location<=toggle_location; state<=stcompute;  result1<=next_result1;
															end if;
		when stdone=> state<=stidle;
end case;
end if;
end process;
inst1: ass52 port map(mpr,prev_toggle_location,toggle_location,sig_add,sig_sub);
inst2: ass51 port map(result1,mpd,toggle_location,sig_add,sig_sub,shifted_mpd1,next_result1);
toggle_position<=toggle_location;
shifted_mpd<=shifted_mpd1;
next_result<=next_result1;
result<=result1;
prev_toggle_position<=prev_toggle_location;
add<=sig_add;
sub<=sig_sub;
end architecture;
		

