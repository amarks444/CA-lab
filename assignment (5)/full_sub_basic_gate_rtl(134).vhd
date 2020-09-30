----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:32 04/03/2020
-- Design Name: 
-- Module Name:    full_sub_basic_rtl - Behavioral 
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

entity full_sub_basic_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end full_sub_basic_rtl;

architecture Behavioral of full_sub_basic_rtl is

signal temp,temp1,temp3: std_logic:='0';

begin
temp <= (a or b) and ((not a) or (not b));
diff <= (temp or c) and ((not temp) or (not c));
temp1 <= (not a) and b;
temp3 <= (not temp) and c;
bor <= temp1 or temp3;

end Behavioral;

