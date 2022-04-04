Library ieee;
use ieee.std_logic_1164.all;

entity part2 is
port(

clock_in : in std_logic;
clock_out : out std_logic
);
end part2;

architecture behavior of part2 is
signal clock_tmp: std_logic;
begin

process(clock_in)
variable x : integer := 0;
begin
if(clock_in'EVENT and clock_in = '1')then

x:= x+1;
if x= 50000000 then
x:=0;
clock_tmp <= not clock_tmp;
clock_out <= clock_tmp;
end if;
end if;
end process;
end behavior;