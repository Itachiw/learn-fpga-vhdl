----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2026 11:22:23 PM
-- Design Name: 
-- Module Name: tb_piso_4bit - Behavioral
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

entity tb_piso_4bit is

end tb_piso_4bit;

architecture Behavioral of tb_piso_4bit is
    
    constant clk_period : time := 10 ns;
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal load : std_logic := '0';
    signal d_in : std_logic_vector (3 downto 0);
    signal q_out : std_logic := '0';
    
begin

    uut: entity work.piso_4bit
        port map(
            clk => clk,
            rst => rst,
            load => load,
            d_in => d_in,
            q_out => q_out
         );
         
         clk_process : process
            begin 
                clk <= '0';
                wait for clk_period / 2;
                clk <= '1';
                wait for clk_period / 2;
             end process;
             
          stim_proc : process
          begin
                rst <= '1';
                wait for 20 ns;
                
                rst <= '0';
                wait for clk_period;
                
                d_in <= "1001";
                load <= '1';
                wait for clk_period;
                
                load <= '0';
                wait for 5 * clk_period;
                
          wait;
       end process;
          
    
end Behavioral;
