----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:58 05/26/2020 
-- Design Name: 
-- Module Name:    full_rtl - Behavioral 
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

entity full_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC;
           CY : out  STD_LOGIC);
end full_rtl;

architecture Behavioral of full_rtl is

begin

S <= (C and ((not A and not B) or (A and B))) or ((not C) and ((not A and B) or (A and not B)));
CY <= (A and B) or (B and C) or (A and C);

end Behavioral;

