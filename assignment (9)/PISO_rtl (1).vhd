----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:26 04/30/2020 
-- Design Name: 
-- Module Name:    PISO_rtl - Behavioral 
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

entity PISO_rtl is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           CLOCK : in  STD_LOGIC;
           SHIFT : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end PISO_rtl;

architecture Behavioral of PISO_rtl is

component d_rtl is
    Port ( D_IN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           D_OUT : out  STD_LOGIC);
end component;

signal q1,q2,q3,a1,a2,a3,a4,a5,a6,o1,o2,o3 : STD_LOGIC :='0';

begin

	D0: d_rtl port map(D_IN => I(3),CLK => CLOCK,RST => CLEAR,D_OUT => q1);
	a1<=q1 and SHIFT;
	a2<=(not SHIFT) and I(2);
	o1<=a1 or a2;
	D1: d_rtl port map(D_IN => o1,CLK => CLOCK,RST => CLEAR,D_OUT => q2);
	a3<=q2 and SHIFT;
	a4<=(not SHIFT) and I(1);
	o2<=a3 or a4;
	D2: d_rtl port map(D_IN => o2,CLK => CLOCK,RST => CLEAR,D_OUT => q3);
	a5<=q3 and SHIFT;
	a6<=(not SHIFT) and I(0);
	o3<=a5 or a6;
	D3: d_rtl port map(D_IN => o3,CLK => CLOCK,RST => CLEAR,D_OUT => OUTPUT);

end Behavioral;

