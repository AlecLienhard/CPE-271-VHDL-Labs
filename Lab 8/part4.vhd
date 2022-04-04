library ieee;
use ieee.std_logic_1164.all;

entity part4 is

port(
X: in std_logic;
Clk: in std_logic;
Q: inout std_logic_vector(2 downto 0)
);
end part4;

architecture behavior of part4 is
signal D: std_logic_vector(2 downto 0);
component part3
port(
CLK: in std_logic;
D: in std_logic;
Q: out std_logic;
QNOT: out std_logic
);
end component;
begin
D(0) <= not Q(0);
D(1) <= Q(1) XOR (X XOR Q(2));
D(2) <= (X AND((NOT Q(2) AND NOT Q(1) AND NOT Q(0)) OR(Q(2) AND Q(1)))) OR
((NOT X) AND (NOT Q(2) AND Q(1) AND Q(0))) OR (Q(2) AND NOT Q(1)) OR
(Q(2) AND Q(1) AND NOT Q(0));

map1: part3 port map(
CLK => Clk,
D => D(0),
Q => Q(0)
);
map2: part3 port map(
CLK => Clk,
D => D(1),
Q => Q(1)
);
map3: part3 port map(
CLK => Clk,
D => D(2),
Q => Q(2)
);
end behavior;