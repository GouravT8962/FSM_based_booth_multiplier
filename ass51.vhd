library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ass51 is
port(result: in std_logic_vector( 8 downto 0);
mpd: in std_logic_vector( 7 downto 0);
toggle_position: in integer range -1 to 7;
sig_add,sig_sub: in std_logic;
mpd3: out std_logic_vector( 8 downto 0);
next_result: out std_logic_vector(8 downto 0));
end entity;
architecture alu_with_shift of ass51 is
signal next_result1: std_logic_vector(8 downto 0):=(others=>'0');
begin
process(result,mpd,toggle_position,sig_add,sig_sub)
variable mpd1: std_logic_vector(12 downto 0);
variable mpd2: std_logic_vector(8 downto 0):=(others=>'0');
begin
mpd1:='0' & mpd & ("0000");
if(toggle_position=0)then
mpd2:=mpd1(12 downto 4);
elsif(toggle_position=1) then
mpd2:=mpd1(11 downto 3);
elsif(toggle_position=2) then
mpd2:=mpd1(10 downto 2);
elsif(toggle_position=3) then
mpd2:=mpd1(9 downto 1);
elsif(toggle_position=4) then
mpd2:=mpd1(8 downto 0);
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


