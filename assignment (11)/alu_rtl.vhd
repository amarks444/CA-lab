----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:20 05/07/2020 
-- Design Name: 
-- Module Name:    alu_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_rtl is
    Port ( inp_a : in signed (3 downto 0);
           inp_b : in signed (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           alu_out : out signed (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

begin

process( inp_a, inp_b, sel)

begin

	case sel is
			when "000" => alu_out <= inp_a + inp_b;
			when "001" => alu_out <= inp_a - inp_b;
			when "010" => alu_out <= inp_a - 1;
			when "011" => alu_out <= inp_a + 1;
			when "100" => alu_out <= inp_a and inp_b;
			when "101" => alu_out <= inp_a or inp_b;
			when "110" => alu_out <= not inp_a;
			when "111" => alu_out <= inp_a xor inp_b;
			when others => NULL;
	end case;
end process;

end Behavioral;

