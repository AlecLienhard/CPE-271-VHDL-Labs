library ieee;
use ieee.std_logic_1164.all;
entity lab8 is
port(
X: in std_logic;
CLK: in std_logic;
Y: inout std_logic_vector(1 downto 0);
Z: out std_logic
);
end lab8;

architecture behavior of lab8 is
signal D: std_logic_vector(1 downto 0);
signal ZSignal: std_logic;
component part4 is
port(
clock_in: in std_logic;
din: in std_logic;
qout: out std_logic;
qnot_out: out std_logic
);
end component;
begin
D(1)<= (not X and Y(0)) or (not X and Y(1)) or (Y(1) and Y(0));
D(0)<= (not X and not Y(0)) or (not X and Y(1)) or (Y(1) and not Y(0));
ZSignal<= (not X and not Y(0)) or (X and Y(1));

map1: part4 port map(
clock_in => CLK,
din => D(1),
qout => Y(1)
);
map2: part4 port map(
clock_in => CLK,
din => D(0),
qout => Y(0)
);
map3: part4 port map(
clock_in => CLK,
din => Zsignal,
qout => Z
);
end behavior;