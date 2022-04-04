library ieee;
use ieee.std_logic_1164.all;

entity Lab5 is

port(

x1: in std_logic;

x2: in std_logic;

f: out std_logic

);

end Lab5;

architecture behavior of Lab5 is

begin

f <= x1 XNOR x2;

end behavior;