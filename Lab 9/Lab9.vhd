library ieee;
use ieee.std_logic_1164.all;

entity Lab9 is
port(
clk: in std_logic;
reset: in std_logic;
input1: in std_logic;
output1: out std_logic
);
end Lab9;

ARCHITECTURE rt1 of Lab9 is
TYPE state_type is (state0, state1, state2, state3);
SIGNAL state: state_type;

BEGIN
PROCESS(clk, reset)
BEGIN

IF reset = '1' then
state <= state0;

ELSIF
clk' event and clk = '1' THEN

CASE state IS 
WHEN state0 => 
IF input1 = '1' THEN
state <= state1;
output1 <= '0';
ELSE
state <= state0;
output1 <= '0';
END IF;

WHEN state1 =>
IF input1 = '1' THEN
state <= state2;
output1 <= '0';
ELSE
state <= state2;
output1 <= '0';
END IF;

WHEN state2 =>
IF input1 = '0' THEN
state <= state3;
output1 <= '0';
ELSE
state <= state2;
output1 <= '0';
END IF;

WHEN state3 =>
IF input1 ='1' THEN
state <= state1;
output1 <= '0';

END IF;
END CASE;
END IF;
END PROCESS;
END;




