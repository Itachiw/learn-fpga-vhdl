----------------------------------------------------------------------------------

-- Create Date: 09.09.2026 21:35:02

-- Module Name: counter_4bit - Behavioral
-- Description : Compteur synchrone 4 bits avec reset synchrone actif haut et validation
-- Fréquence cible : 100 Mhz
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_4bit is
  Port (
        clk : in std_logic;
        rst : in std_logic;
        en : in std_logic;
        count_out : out std_logic_vector (3 downto 0)
   );
end counter_4bit;

architecture Behavioral of counter_4bit is


        signal r_count : unsigned (3 downto 0);
        
begin

        process(clk)
        begin
            if rising_edge(clk) then 
                if rst = '1' then
                    r_count <= (others => '0');
                    elsif en = '1' then
                        r_count <= r_count + 1;
                    end if;
                end if;
           end process;
           
count_out <= std_logic_vector (r_count); 
                   


end Behavioral;
