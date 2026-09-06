----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2026 15:25:54
-- Design Name: 
-- Module Name: tb_mux2to1_4bit - Behavioral
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


entity tb_mux2to1_4bit is

end tb_mux2to1_4bit;

architecture Behavioral of tb_mux2to1_4bit is

        signal tb_A : std_logic_vector (3 downto 0):= "0101";
        signal tb_B : std_logic_vector (3 downto 0):= "1001";
        signal tb_sel : std_logic := '0';
        signal tb_Y : std_logic_vector (3 downto 0);

begin
    uut: entity work.mux2to1_4bit
        port map (
            A_in => tb_A,
            B_in => tb_B,
            sel => tb_sel,
            Y_out => tb_Y
         );

    stim_proc: process
        begin 
            wait for 20 ns;
            
            tb_sel <= '1';
            wait for 20 ns;
            
            tb_sel <= '0';
            wait for 20 ns;
            
         wait;
      end process;
        
        
end Behavioral;
