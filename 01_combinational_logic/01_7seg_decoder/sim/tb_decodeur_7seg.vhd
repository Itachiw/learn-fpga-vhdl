----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2026 20:46:28
-- Design Name: 
-- Module Name: tb_decodeur_7seg - Behavioral
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
use IEEE.numeric_std.ALL; 

entity tb_decodeur_7seg is
end tb_decodeur_7seg;

architecture Behavioral of tb_decodeur_7seg is

    signal s_B_in       : std_logic_vector (3 downto 0) := "0000";
    signal s_seg_out    : std_logic_vector (6 downto 0);

begin

    uut : entity work.decodeur_7seg
        port map (
            B_in    => s_B_in,
            seg_out => s_seg_out
            );
            
    sitm_proc : process
    begin 
    
        for i in 0 to 15 loop
        
            s_B_in <= std_logic_vector(to_unsigned(i, 4));
            
            wait for 10 ns;
         end loop;
         
         wait;
      end process;
                  
end Behavioral;
