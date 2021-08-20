
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ass5new is
port(mpd_in,mpr_in: in std_logic_vector(7 downto 0);
clk,go: in std_logic;
add,sub: out std_logic;
toggle_position: out integer range -1 to 7;
shifted_mpd: out std_logic_vector(16 downto 0);
prev_toggle_position: out integer range -1 to 7;
result: out std_logic_vector(16 downto 0);
next_result: out std_logic_vector(16 downto 0));
end entity;
architecture booth of ass5new is
signal mpd,mpr: std_logic_vector(7 downto 0);
signal next_result1: std_logic_vector(16 downto 0);
signal sig_add,sig_sub: std_logic;
signal prev_toggle_location,toggle_location: integer range -1 to 7 ;
type state1 is (stidle,stcompute,stdone);
signal shifted_mpd1: std_logic_vector(16 downto 0):=(others=>'0');
signal state: state1:=stidle;
signal result1: std_logic_vector(16 downto 0):=(others=>'0');
component ass51new port(result: in std_logic_vector( 16 downto 0);
mpd: in std_logic_vector( 7 downto 0);
toggle_position: in integer  range -1 to 7;
sig_add,sig_sub: in std_logic;
mpd3: out std_logic_vector( 16 downto 0);
next_result: out std_logic_vector(16 downto 0));
end component;
component ass52new port(mpr: in std_logic_vector( 7 downto 0); --controller_add_subtract_shift
prev_toggle_location: in integer range -1 to 7 ;
toggle_location: out integer range -1 to 7 ;
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
inst1: ass52new port map(mpr,prev_toggle_location,toggle_location,sig_add,sig_sub);
inst2: ass51new port map(result1,mpd,toggle_location,sig_add,sig_sub,shifted_mpd1,next_result1);
toggle_position<=toggle_location;
shifted_mpd<=shifted_mpd1;

next_result<=next_result1;
prev_toggle_position<=prev_toggle_location;
add<=sig_add;
sub<=sig_sub;
result<=result1;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ass51new is
port(result: in std_logic_vector( 16 downto 0);
mpd: in std_logic_vector( 7 downto 0);
toggle_position: in integer range -1 to 7;
sig_add,sig_sub: in std_logic;
mpd3: out std_logic_vector( 16 downto 0);
next_result: out std_logic_vector(16 downto 0));
end entity;
architecture alu_with_shift of ass51new is
signal next_result1: std_logic_vector(16 downto 0):=(others=>'0');
begin
process(result,mpd,toggle_position,sig_add,sig_sub)
variable mpd1: std_logic_vector(24 downto 0);
variable mpd2: std_logic_vector(16 downto 0):=(others=>'0');
begin
mpd1:=("000000000") & mpd & ("00000000");
if(toggle_position=0)then
mpd2:=mpd1(24 downto 8);
elsif(toggle_position=1) then
mpd2:=mpd1(23 downto 7);
elsif(toggle_position=2) then
mpd2:=mpd1(22 downto 6);
elsif(toggle_position=3) then
mpd2:=mpd1(21 downto 5);
elsif(toggle_position=4) then
mpd2:=mpd1(20 downto 4);
elsif(toggle_position=5)then
mpd2:=mpd1(19 downto 3);
elsif(toggle_position=6) then
mpd2:=mpd1(18 downto 2);
elsif(toggle_position=7) then
mpd2:=mpd1(17 downto 1);
end if;
mpd3<=mpd2;
if(sig_add='1') then
next_result1<=std_logic_vector(signed(result)+signed(mpd2));
end if;
if(sig_sub='1') then
next_result1<=std_logic_vector(signed(result)-signed(mpd2));
end if;
end process;
next_result<=next_result1;
end architecture;
 
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ass52new is
port(mpr: in std_logic_vector( 7 downto 0);
prev_toggle_location: in integer range -1 to 7 ;
toggle_location: out integer  range -1 to 7 ;
sig_add,sig_sub: out std_logic);
end entity;
architecture controller_add_subtract_shift of ass52new is
signal mpr1: std_logic_vector( 16 downto 0);
begin
mpr1(8 downto 1)<=mpr(7 downto 0);
mpr1(0)<='0';
mpr1(16 downto 9)<=(others=>'0');
process(mpr1,prev_toggle_location)
begin
if (mpr1(prev_toggle_location+1)='0') then
if(mpr1(prev_toggle_location+2)='1') then
toggle_location<=prev_toggle_location+1;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+3)='1') then
toggle_location<=prev_toggle_location+2;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+4)='1') then
toggle_location<=prev_toggle_location+3;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+5)='1') then
toggle_location<=prev_toggle_location+4;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+6)='1') then
toggle_location<=prev_toggle_location+5;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+7)='1') then
toggle_location<=prev_toggle_location+6;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+8)='1') then
toggle_location<=prev_toggle_location+7;
sig_add<='0';
sig_sub<='1';
elsif(mpr1(prev_toggle_location+9)='1') then
toggle_location<=prev_toggle_location+8;
sig_add<='0';
sig_sub<='1';
else
toggle_location<=prev_toggle_location;
sig_add<='0';
sig_sub<='0';
end if;

elsif(mpr1(prev_toggle_location+1)='1') then
if(mpr1(prev_toggle_location+2)='0' and prev_toggle_location<7) then
toggle_location<=prev_toggle_location+1;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+3)='0'and prev_toggle_location<6) then
toggle_location<=prev_toggle_location+2;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+4)='0'and prev_toggle_location<5) then
toggle_location<=prev_toggle_location+3;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+5)='0'and prev_toggle_location<4) then
toggle_location<=prev_toggle_location+4;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+6)='0'and prev_toggle_location<3) then
toggle_location<=prev_toggle_location+5;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+7)='0'and prev_toggle_location<2) then
toggle_location<=prev_toggle_location+6;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+8)='0'and prev_toggle_location<1) then
toggle_location<=prev_toggle_location+7;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+9)='0'and prev_toggle_location<0) then
toggle_location<=prev_toggle_location+8;
sig_add<='1';
sig_sub<='0';
else
toggle_location<=prev_toggle_location;
sig_add<='0';
sig_sub<='0';
end if;
end if;
end process;
end architecture;