library ieee;
use ieee.std_logic_1164.all;

entity part_1 is

port(

X0: in std_logic;
X1: in std_logic;
X2: in std_logic;
F1: out std_logic;
F0: out std_logic
);

end part_1;

architecture behavior of part_1 is

begin

process(X0, X1, X2)
begin

if(X2 = '1') then
F1 <= '1';
F0 <= '1';


elsif((X2 = '0') and (X1 = '1')) then
F1 <= '1';
F0 <= '0';

elsif((X2 = '0') and (X1 = '0') and (X0 = '1')) then
F1 <= '0';
F0 <= '1';
else
F1 <= '0';
F0 <= '0';
end if;
end process;
end behavior;