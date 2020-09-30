----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:55 04/24/2020 
-- Design Name: 
-- Module Name:    d_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_rtl is
    Port ( D_IN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           D_OUT : out  STD_LOGIC);
end d_rtl;

architecture Behavioral of d_rtl is

begin
	process(RST,CLK,d_IN)
	begin
		if (RST = '1') then
		D_OUT <= '0';
		elsif(rising_edge(CLK)) then
		D_OUT <= D_IN;
		end if;
	end process;

end Behavioral;

