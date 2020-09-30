----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:25 05/07/2020 
-- Design Name: 
-- Module Name:    up_down_rtl - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_down_rtl is
    Port ( up_down : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end up_down_rtl;

architecture Behavioral of up_down_rtl is

signal tempCount : std_logic_vector( 3 downto 0);

begin

process(clock, clear)

begin 

if (rising_edge(clock)) then

	if(clear = '1') then
		tempCount <= x"0";
			elsif (up_down = '1') then
				tempCount <= tempCount -x"1";
			else
				tempCount <= tempCount +x"1";
			end if;
		end if;
	end process;
	
count <= tempCount;

end Behavioral;

