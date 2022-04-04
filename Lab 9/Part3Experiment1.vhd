Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Part3Experiment1 is
generic (width: integer := 8; depth: integer := 32; addr: integer := 5);
port(
clock: in std_logic;
read_addr: in std_logic_vector((addr - 1) downto 0);
data_out: out std_logic_vector((width - 1) downto 0)
);
end Part3Experiment1;

Architecture behavior of Part3Experiment1 is
type ram_type is array(0 to (depth - 1)) of std_logic_vector((width-1) downto 0);
signal memory: ram_type:= 
("00000111","00000110",
"00000101", "00000100",
"00000011","00000010",
"00000001","00000000",
 others => (others => '1'));
begin
process (clock)
begin
if clock'event and clock = '1' then
Data_out <= memory (conv_integer(read_addr));

end if;
end process;
end behavior;