----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2026 11:01:03 PM
-- Design Name: 
-- Module Name: piso_4bit - Behavioral
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

entity piso_4bit is
  Port (
            clk : in std_logic ;
            rst : in std_logic ;
            load : in std_logic ;
            d_in : in std_logic_vector (3 downto 0);
            q_out : out std_logic
            );
            
end piso_4bit;

architecture Behavioral of piso_4bit is

            signal shift_reg : std_logic_vector (3 downto 0);
            

begin

        process(clk) 
        begin 
            if rising_edge(clk) then
                if rst = '1' then 
                    shift_reg <= (others => '0');
                 elsif load = '1' then 
                    shift_reg <= d_in;
                 else 
                    shift_reg <= shift_reg(2 downto 0) & '0';
                 end if;
            end if;
    end process;                    

    q_out <= shift_reg(3);
end Behavioral;
