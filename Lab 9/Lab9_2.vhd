library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Lab9_2 is
port(
clock: in std_logic;
A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
ALUOp: in std_logic_vector(1 downto 0);
output: out std_logic_vector(4 downto 0)
);
end Lab9_2;

Architecture behavior of Lab9_2 is
signal C: std_logic_vector(4 downto 0);
signal D: std_logic_vector(4 downto 0);

begin
C <= '0' &A;
D <= '0' &B;

process(A, B, ALUOp, clock)
begin

if clock' event and clock = '1' THEN

case ALUOp is

when "00" => output <= C + D;
when "01" => output <= C - D;
when "10" => output <= C NAND D;
when "11" => output <= "00000";

END CASE;
END IF;
END process;
END behavior;

