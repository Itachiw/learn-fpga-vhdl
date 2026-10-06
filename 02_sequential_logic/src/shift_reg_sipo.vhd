----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2026 06:59:50 PM
-- Design Name: 
-- Module Name: shift_reg_sipo - Behavioral
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

entity shift_reg_sipo is
  Port (
        clk : in std_logic;
        rst : in std_logic;
        en : in std_logic;
        din : in std_logic;
        
        dout : out std_logic_vector (3 downto 0)
         );
end shift_reg_sipo;

architecture Behavioral of shift_reg_sipo is

        signal r_reg : std_logic_vector (3 downto 0);

begin
        process(clk)
        begin 
            if rising_edge(clk) then  
               if rst = '1' then
                 r_reg <= (others => '0');
                 elsif en = '1' then
                    r_reg <= din & r_reg(3 downto 1);
                 end if;
              end if;
           end process;
        dout <= r_reg;

end Behavioral;
