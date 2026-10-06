----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2026 10:22:57 PM
-- Design Name: 
-- Module Name: tb_shift_reg_sipo - Behavioral
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

entity tb_shift_reg_sipo is

end tb_shift_reg_sipo;

architecture Behavioral of tb_shift_reg_sipo is
    
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal en : std_logic := '0';
    signal din : std_logic := '0'; 
    
    signal dout : std_logic_vector (3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
begin
    
    uut : entity work.shift_reg_sipo
        port map (
            clk => clk,
            rst => rst,
            en => en,
            din => din,
            dout => dout
         );
         
         clk_process : process
         begin 
            
            clk <= '0';
            wait for (CLK_PERIOD / 2);
            clk <= '1';
            wait for (CLK_PERIOD / 2);
         end process;
         
         
      stim_proc : process
      begin
      
         rst <= '1';
         en <= '0';
         wait for 20 ns;
         
         rst <= '0';
         wait for 20 ns;
         
         en <= '1';
         din <= '1';
         wait for CLK_PERIOD;
         
         din <= '1';
         wait for CLK_PERIOD;
         
         din <= '0';
         wait for CLK_PERIOD;
         
         din <= '0';
         wait for CLK_PERIOD;
         
         din <= '1';
         wait for CLK_PERIOD;
         
         wait;
      end process;
         
            
end Behavioral;
