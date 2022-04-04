library ieee;
use ieee.std_logic_1164.all;

entity part1 is

port(
CLOCK: in std_logic;
D: in std_logic;
Q: out std_logic;
QNOT: out std_logic
);
end part1;


architecture behavior of part1 is

begin
process(CLOCK)
begin
if(CLOCK'EVENT and CLOCK = '1')then
Q <= not D;
end if;
end process;
end behavior;