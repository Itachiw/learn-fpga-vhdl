----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.09.2026 20:11:35
-- Design Name: 
-- Module Name: decodeur_7seg - Behavioral
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

entity decodeur_7seg is
  Port (
        B_in : in std_logic_vector (3 downto 0);
        seg_out : out std_logic_vector (6 downto 0)
     );
end decodeur_7seg;

architecture Behavioral of decodeur_7seg is

begin


        with B_in select 
            seg_out <= "0111111" when "0000", --0
                       "0000110" when "0001", --1
                       "1011011" when "0010", --2
                       "1001111" when "0011", --3
                       "1100110" when "0100", --4
                       "1101101" when "0101", --5
                       "1111101" when "0110", --6
                       "0000111" when "0111", --7
                       "1111111" when "1000", --8
                       "1101111" when "1001", --9
                       "1110111" when "1010", --A
                       "1111100" when "1011", --b
                       "0111001" when "1100", --C
                       "1011110" when "1101", --d
                       "1111001" when "1110", --E
                       "1110001" when "1111", --F
                       "0000000" when others; 

end Behavioral;
