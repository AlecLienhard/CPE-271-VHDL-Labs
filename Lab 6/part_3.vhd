library ieee;
use ieee.std_logic_1164.all;

entity part_3 is

port(

A: in std_logic;
B: in std_logic;
C: in std_logic;
D: in std_logic;

S: in std_logic_vector(1 downto 0);

F: out std_logic
);

end part_3;

architecture behavior of part_3 is
begin

process(A,B,C,D,S)
begin

if(S(0) = '0' and S(1) = '0') then
F <= A;

elsif(S(0) = '1' and S(1) = '0') then
F <= B;

elsif(S(0) = '0' and S(1) = '1') then
F <= C;

else
F <= D;

end if;
end process;
end behavior; 
