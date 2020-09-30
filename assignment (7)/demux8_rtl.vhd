----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:33:30 04/14/2020 
-- Design Name: 
-- Module Name:    demux8_rtl - Behavioral 
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

entity demux8_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y0 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y5 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y6 : out  STD_LOGIC_VECTOR (2 downto 0);
           Y7 : out  STD_LOGIC_VECTOR (2 downto 0));
end demux8_rtl;

architecture Behavioral of demux8_rtl is

begin

Y0 <= D when S="000" else "000";
Y1 <= D when S="001" else "000";
Y2 <= D when S="010" else "000";
Y3 <= D when S="011" else "000";
Y4 <= D when S="100" else "000";
Y5 <= D when S="101" else "000";
Y6 <= D when S="110" else "000";
Y7 <= D when S="111" else "000";

end Behavioral;

