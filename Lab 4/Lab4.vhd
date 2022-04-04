library ieee;
use ieee.std_logic_1164.all;

entity BinaryAddition is

port(
x1: in std_logic;
x2: in std_logic;
x3: in std_logic;
x4: in std_logic;
x5: in std_logic;
x6: in std_logic;
f1: out std_logic;
f2: out std_logic;
f3: out std_logic;
f4: out std_logic
);
end BinaryAddition;

ArchitEcture behavior of BinaryAddition is

Signal c1: std_logic;
Signal c2: std_logic;

begin

f1 <= x1 XOR x4;
c1 <= x1 AND x4;
f2 <= (x2 XOR x5) XOR c1;
c2 <= (x2 AND x5) or (c1 AND (x2 XOR x5));
f3 <= (x3 XOR x6) XOR c2;
f4 <= (x3 AND x6) or (c2 AND (x3 XOR x6));

end behavior;