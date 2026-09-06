----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2026 12:22:55
-- Design Name: 
-- Module Name: tb_alu_4bit - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


entity tb_alu_4bit is
end tb_alu_4bit;

architecture Behavioral of tb_alu_4bit is
        signal tb_A_in : std_logic_vector (3 downto 0) := "0110";
        signal tb_B_in : std_logic_vector (3 downto 0) := "0011";
        signal tb_opcode : std_logic_vector (2 downto 0) := "000";
        signal tb_ALU_out : std_logic_vector (3 downto 0);

begin
    uut : entity work.alu_4bit
        port map ( 
            A_in => tb_A_in,
            B_in => tb_B_in,
            opcode => tb_opcode,
            ALU_out => tb_ALU_out
         );
         
      stim_proc : process 
      begin 
            tb_opcode <= "000";
            wait for 20 ns;
            assert (tb_ALU_out = "1001")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
            
            tb_opcode <= "001";
            wait for 20 ns;
            assert (tb_ALU_out = "0011")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
            
            tb_opcode <= "010";
            wait for 20 ns;
            assert (tb_ALU_out = "0010")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
            
            tb_opcode <= "011";
            wait for 20 ns;
            assert (tb_ALU_out = "0111")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
            
            tb_opcode <= "100";
            wait for 20 ns;
            assert (tb_ALU_out = "0101")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
            
            tb_opcode <= "101";
            wait for 20 ns;
            assert (tb_ALU_out = "1001")
                report "ERREUR : addition 6+3 a echoue !"
                severity error;
                
            report "Tous les tests ont réussi sans erreur"
                severity note;
            
            wait;
         end process;

end Behavioral;
