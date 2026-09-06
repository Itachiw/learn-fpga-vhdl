----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2026 16:42:33
-- Design Name: 
-- Module Name: tb_top_mux_7seg - Behavioral
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

entity tb_top_mux_7seg is

end tb_top_mux_7seg;

architecture Behavioral of tb_top_mux_7seg is
        signal tb_A : std_logic_vector (3 downto 0) := "0011";
        signal tb_B : std_logic_vector (3 downto 0) := "1000";
        signal tb_sel : std_logic := '0';
        signal tb_segments : std_logic_vector (6 downto 0);
          
begin

    uut: entity work.top_mux_7seg
        port map (
            A_in => tb_A,
            B_in => tb_B,
            sel => tb_sel,
            segments => tb_segments
         );
     stim_proc : process 
        begin
                wait for 30 ns;
                
                tb_sel <= '1';
                wait for 30 ns;
                
                tb_B <= "0110";
                wait;
             
        end process;

end Behavioral;
