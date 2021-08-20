library ieee;
use ieee.std_logic_1164.all;
entity ass52 is
port(mpr: in std_logic_vector( 7 downto 0);
prev_toggle_location: in integer range -1 to 7;
toggle_location: out integer range -1 to 7;
sig_add,sig_sub: out std_logic);
end entity;
architecture controller_add_subtract_shift of ass52 is
signal mpr1: std_logic_vector( 9 downto 0);
begin
mpr1(8 downto 1)<=mpr(7 downto 0);
mpr1(0)<='0';
mpr1(9)<='0';
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
else
toggle_location<=prev_toggle_location;
sig_add<='0';
sig_sub<='0';
end if;

elsif(mpr1(prev_toggle_location+1)='1') then
if(mpr1(prev_toggle_location+2)='0') then
toggle_location<=prev_toggle_location+1;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+3)='0') then
toggle_location<=prev_toggle_location+2;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+4)='0') then
toggle_location<=prev_toggle_location+3;
sig_add<='1';
sig_sub<='0';
elsif(mpr1(prev_toggle_location+5)='0') then
toggle_location<=prev_toggle_location+4;
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

