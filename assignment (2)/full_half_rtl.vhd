----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:13 05/26/2020 
-- Design Name: 
-- Module Name:    full_half_rtl - Behavioral 
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

entity full_half_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_in : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           C_out : out  STD_LOGIC);
end full_half_rtl;

architecture Behavioral of full_half_rtl is

component half_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           CY : out  STD_LOGIC);
end component;

signal temp, c1, c2 : STD_LOGIC := '0';

begin

HA01: half_rtl port map(A=>A, B=>B, S=>temp, CY=>c1);
HA02: half_rtl port map(A=>temp, B=>C_in, S=>SUM, CY=>c2);
C_out <= c1 or c2;

end Behavioral;

