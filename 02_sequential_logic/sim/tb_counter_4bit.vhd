----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.09.2026 22:00:34
-- Design Name: 
-- Module Name: tb_counter_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_counter_4bit is

end tb_counter_4bit;

architecture Behavioral of tb_counter_4bit is
    
    signal clk          : std_logic := '0';
    signal rst          : std_logic := '0';
    signal en           : std_logic := '0';
    signal count_out    : std_logic_vector (3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
begin
        
        uut: entity work.counter_4bit
            port map (
                clk => clk,
                rst => rst,
                en => en,
                count_out => count_out
            );
            
            
    clk_process : process
    begin 
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
     end process;
     
     stim_proc : process
     begin
        
        rst <= '1';
        en <= '0';
        wait for 20 ns;
        
        rst <= '0';
        wait for 20 ns;
        
        en <= '1';
        wait for 200 ns;
        
        en <= '0';
        wait for 40 ns;
        
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        
        wait;
     end process;

end Behavioral;
