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

Signal C1: std_logic;
Signal C2: std_logic;

begin

f1 <= x1 XOR x4;
C1 <= x1 AND x4;
f2 <= (x2 XOR x5) XOR C1;
C2 <= (x2 AND x5) or (C1 and (x2 XOR x5));
f3 <= (x3 XOR x6) XOR C2;
f4 <= (x3 and x6) or (C2 and (x3 XOR x6));

end behavior;