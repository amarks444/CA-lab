----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:57 04/21/2020 
-- Design Name: 
-- Module Name:    jk_rtl - Behavioral 
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

entity jk_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_BAR : out  STD_LOGIC);
end jk_rtl;

architecture Behavioral of jk_rtl is

begin

	process(J, K, CLK, RST)
	begin
		if(RST = '1') then
		 Q <= '0';
		 Q_BAR <= '0';
		elsif ( rising_edge(clk) ) then
			if( J /= K) then
			  Q <= J;
			  Q_BAR <= not J;
			elsif(J = '1' and K = '1') then
			  Q <= not J;
			  Q_BAR <= J;
			end if;
		end if;

	end process;

end Behavioral;

