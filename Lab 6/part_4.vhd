library ieee;
use ieee.std_logic_1164.all;

entity part_4 is

port(
X: in std_logic_vector(1 downto 0);
S: in std_logic_vector(1 downto 0);
F: out std_logic_vector(1 downto 0)
);
end part_4;
architecture behavior of part_4 is
signal sig: std_logic_vector(2 downto 0);

Component part_3
port(
A: in std_logic;
B: in std_logic;
C: in std_logic;
D: in std_logic;

S: in std_logic_vector(1 downto 0);

F: out std_logic
);

end component;
begin
sig(0) <= (X(1) and X(0));
sig(1) <= (X(1) or X(0));

map1: part_3 port map
(S(0) => S(0),
S(1) => S(1),
A => sig(0),
B => sig(1),
C => X(0),
D => X(1),
F => sig(2));

F(0) <= not sig(2);
F(1) <= sig(2);

end behavior;