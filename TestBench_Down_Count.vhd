library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std;
use ieee.std_logic_unsigned.all;

entity TestBench_Down_Count is
end TestBench_Down_Count;

architecture ARC of TestBench_Down_Count is
component Down_Counter
port(
        CLK, RST : in std_logic;
        Count    : out std_logic_vector(3 downto 0)
);
end component;

signal clk, rst : std_logic ;
signal Count    : std_logic_vector(3 downto 0);

begin

    dev_test : Down_Counter 
    port map 
    (
        CLK   => clk, 
        RST   => rst, 
        Count => Count
    );
    
    stim1 : process
    begin 
    clk <= '0';
    wait for 10ns;
    clk <= '1';
    wait for 10ns;
    end process;
    
    stim2 : process
    begin 
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait for 290ns;
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait;
    end process;

end ARC;
