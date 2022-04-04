library ieee;
use ieee.std_logic_1164.all;
entity part3 is
port(
CLK: in std_logic;
D: in std_logic;
Q: out std_logic;
Qnot: out std_logic
);
end part3;

architecture behavior of part3 is
signal slowClock: std_logic;
component part1
port(
CLOCK: in std_logic;
D: in std_logic;
Q: out std_logic;
Qnot: out std_logic
);
end component;
component part2
port(
clock_in: in std_logic;
clock_out: out std_logic
);
end component;
begin
map1: part1 port map(
CLOCK => slowClock,
D => D,
Q =>Q,
Qnot => Qnot
);
map2: part2 port map(
clock_in => CLK,
clock_out => slowClock
);
end behavior;

