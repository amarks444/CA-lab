----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:14 04/30/2020 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( I : in  STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           CLEAR : in  STD_LOGIC;
           U : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is

component d_rtl is
    Port ( D_IN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           D_OUT : out  STD_LOGIC);
end component;

signal q0,q1,q2,q3: STD_LOGIC :='0';

begin

D0: d_rtl port map(D_IN => I,CLK => CLOCK,RST => CLEAR,D_OUT => q0);
D1: d_rtl port map(D_IN => q0,CLK => CLOCK,RST => CLEAR,D_OUT => q1);
D2: d_rtl port map(D_IN => q1,CLK => CLOCK,RST => CLEAR,D_OUT => q2);
D3: d_rtl port map(D_IN => q2,CLK => CLOCK,RST => CLEAR,D_OUT => q3);
U(0)<=q3;
U(1)<=q2;
U(2)<=q1;
U(3)<=q0;

end Behavioral;

