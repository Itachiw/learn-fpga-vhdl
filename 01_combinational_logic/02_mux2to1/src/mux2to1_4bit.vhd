----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2026 15:10:42
-- Design Name: 
-- Module Name: mux2to1_4bit - Behavioral
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



entity mux2to1_4bit is
  Port (
        A_in : in std_logic_vector (3 downto 0);
        B_in : in std_logic_vector (3 downto 0);
        sel : in std_logic ;
        Y_out : out std_logic_vector (3 downto 0)
  );
end mux2to1_4bit;

architecture Behavioral of mux2to1_4bit is

begin
    Y_out <= A_in when sel = '0' else B_in;

end Behavioral;
