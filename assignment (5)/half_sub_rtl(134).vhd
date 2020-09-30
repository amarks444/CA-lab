----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:01:49 04/03/2020 
-- Design Name: 
-- Module Name:    half_sub_rtl - Behavioral 
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

entity half_sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end half_sub_rtl;

architecture Behavioral of half_sub_rtl is

begin

dif <=  ( (a or b) and ((not a) or (not b)));
bor <=  (not a) and b;

end Behavioral;

