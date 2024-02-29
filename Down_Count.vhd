library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Down_Count is
port(
        CLK, RST : in std_logic;
        Count    : out std_logic_vector(3 downto 0)
);
end Down_Count;

architecture ARC of Down_Count is

signal cnt : std_logic_vector (3 downto 0):="1111";

begin

    stim : process (CLK)
    begin 
    if(rising_edge(CLK)) then
     
        if(RST ='1') then        
            cnt <= x"F";
            
        else 
            cnt <= cnt - x"1";
            
        end if;
        
    end if;
    end process;
    
    Count <= cnt;
    
end ARC;