----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2026 09:08:29 PM
-- Design Name: 
-- Module Name: First_FSM - Behavioral
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

entity First_FSM is
  Port ( 
        clk : in std_logic;
        rst : in std_logic;
        seq_in : in std_logic; 
        
        match : out std_logic 
  );
  
end First_FSM;

architecture Behavioral of First_FSM is 
    
            type state_type is (S_IDLE, S_1, S_11, S_110, S_1101);
            signal current_state : state_type;
begin
        process (clk)
        begin
                if rising_edge(clk) then
                    if rst = '1' then
                            current_state <= S_IDLE;
                    else 
                              case current_state is 
                                when S_IDLE => 
                                    if seq_in = '1' then
                                        current_state <= S_1;
                                     else
                                        current_state <= S_IDLE;
                                     end if;
                                     
                                 when S_1 => 
                                    if seq_in = '1' then
                                        current_state <= S_11;
                                     else 
                                        current_state <= S_IDLE;
                                     end if;
                                     
                                  when S_11 => 
                                    if seq_in = '0' then
                                        current_state <= S_110;
                                    else 
                                        current_state <= S_11;
                                    end if;
                                   
                                  when S_110 =>
                                    if seq_in = '1' then
                                        current_state <= S_1101;
                                    else 
                                        current_state <= S_IDLE;
                                    end if;
                                  
                                  when S_1101 =>
                                    if seq_in = '1' then
                                        current_state <= S_1;
                                    else 
                                        current_state <= S_IDLE;
                                    end if;
                                  
                                  when others => 
                                            current_state <= S_IDLE;
                          
                               end case;       
                    end if;
                end if;
        end process;
        
        match <= '1' when current_state = S_1101 else '0';
        
end Behavioral;
