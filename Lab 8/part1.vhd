library ieee;
use ieee.std_logic_1164.all;

entity part1 is

port(
CLK: in std_logic;
D: in std_logic;
Q: out std_logic;
QNOT: out std_logic
);
end part1;


architecture behavior of part1 is

begin
process(CLK)
begin
if(CLK'EVENT and CLK = '1')then
Q <= not D;
end if;
end process;
end behavior;