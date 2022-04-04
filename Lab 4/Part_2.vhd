library ieee;
use ieee.std_logic_1164.all;

entity Part_2 is

	port(
	
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	y: out std_logic
	);
	
	end Part_2;
	
	architecture behavior of Part_2 is
	
	begin
	
	y <= (not A and B) or (A nand C);
	
	end behavior;