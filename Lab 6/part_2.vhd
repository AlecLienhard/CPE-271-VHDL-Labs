library ieee;
use ieee.std_logic_1164.all;

entity part_2 is

port(a: in STD_LOGIC_VECTOR(2 downto 0);
b: out STD_LOGIC_VECTOR(7 downto 0));

end part_2;

architecture behavior of part_2 is
begin

process(a)

begin

if(a = "000") then
b <= "00000001";

elsif(a = "001") then
b <= "00000010";

elsif(a = "010") then
b <= "00000100";

elsif(a = "011") then
b <= "00001000";

elsif(a = "100") then
b <= "00010000";

elsif(a = "101") then
b <= "00100000"; 

elsif(a = "110") then
b <= "01000000";

elsif(a = "111") then
b <= "10000000";

else
b <= "00000000";

end if;

end process;
 end behavior;


