----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2026 12:06:26
-- Design Name: 
-- Module Name: alu_4bit - Behavioral
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


entity alu_4bit is
  Port ( 
    A_in : in std_logic_vector (3 downto 0);
    B_in : in std_logic_vector (3 downto 0);
    opcode : in std_logic_vector (2 downto 0);
    ALU_out : out std_logic_vector (3 downto 0)
  
  );
end alu_4bit;

architecture Behavioral of alu_4bit is

begin
    with opcode select
        ALU_out <= std_logic_vector(unsigned(A_in) + unsigned(B_in)) when "000",
                   std_logic_vector (unsigned(A_in) - unsigned(B_in)) when "001",
                   (A_in and B_in) when "010",
                   (A_in or B_in) when "011",
                   (A_in xor B_in) when "100",
                   (not A_in) when "101",
                   "0000" when others;

end Behavioral;

