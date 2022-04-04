library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Part3Experiment2 is
generic(Width: integer := 8; Depth: integer := 32; Addr: integer := 5);
port(
clock: in std_logic;
WE: in std_logic;
read_Addr: in std_logic_vector((Addr - 1) downto 0);
data_in: in std_logic_vector((Width - 1) downto 0);
data_out: out std_logic_vector((Width - 1) downto 0)
);

END Part3Experiment2;

Architecture behavior of Part3Experiment2 is

type ram_type is array(0 to (Depth - 1)) of std_logic_vector((Width - 1) downto 0);

signal memory: ram_type := 
("00000111", "00000110", "00000101",
 "00000011", "00000010", "00000001",
 "00000000", others => (others => '1'));
 
 begin
 process(clock, WE)
 begin
 if clock' event and clock = '1' and WE = '1' then
 data_out <= memory(conv_integer(read_addr));
 end if;
 end process;
 end behavior;