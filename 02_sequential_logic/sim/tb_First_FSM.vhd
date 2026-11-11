----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2026 10:01:45 PM
-- Design Name: 
-- Module Name: tb_First_FSM - Behavioral
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

entity tb_First_FSM is 

end tb_First_FSM;

architecture Behavioral of tb_First_FSM is

        signal clk : std_logic := '0';
        signal rst : std_logic := '0';
        signal seq_in : std_logic := '0';
        signal match : std_logic;

        constant clk_period : time := 10 ns;
begin

        uut: entity work.First_FSM 
            port map(
                        clk => clk,
                        rst => rst,
                        seq_in => seq_in,
                        match => match
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
                wait for 10 ns;
                
                seq_in <= '1'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                seq_in <= '0'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                
                seq_in <= '0'; wait for clk_period;
                seq_in <= '0'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                seq_in <= '0'; wait for clk_period;
                seq_in <= '1'; wait for clk_period;
                
                seq_in <= '0'; wait for 10 * clk_period;
                
            wait;
         end process;
end Behavioral;
