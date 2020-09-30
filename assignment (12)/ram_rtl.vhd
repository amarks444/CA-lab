----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:16 05/13/2020 
-- Design Name: 
-- Module Name:    ram_rtl - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_rtl is
    Port ( clock : in  STD_LOGIC;
           read_enable : in  STD_LOGIC;
           write_enable : in  STD_LOGIC;
           address : in  STD_LOGIC_VECTOR (7 downto 0);
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end ram_rtl;

architecture Behavioral of ram_rtl is

type ram_type is array (0 to (2**8 - 1)) of STD_LOGIC_VECTOR(7 downto 0);
signal ram: ram_type;

begin

process(clock) is

	begin

		if(rising_edge(clock)) then
			if(read_enable = '1') then
				data_out <= ram(conv_integer(unsigned(address)));
			elsif(write_enable = '1') then
				ram(conv_integer(unsigned(address))) <= data_in;
			end if;
		end if;
	end process;

end Behavioral;

