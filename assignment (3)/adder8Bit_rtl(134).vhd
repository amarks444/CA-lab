----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:54 03/18/2020
-- Design Name: 
-- Module Name:    adder8Bit_rtl - Behavioral 
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

entity adder8Bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           CIN : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (7 downto 0);
           COUT : out  STD_LOGIC);
end adder8Bit_rtl;

architecture Behavioral of adder8Bit_rtl is
component fullAdder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end component;

signal c1,c2,c3,c4,c5,c6,c7: std_logic := '0';

begin

FA0: fullAdder_rtl port map(A=>A(0),B=>B(0),C=>CIN,Sum =>SUM(0),Carry=>c1);
FA1: fullAdder_rtl port map(A=>A(1),B=>B(1),C=>c1,Sum =>SUM(1),Carry=>c2);
FA2: fullAdder_rtl port map(A=>A(2),B=>B(2),C=>c2,Sum =>SUM(2),Carry=>c3);
FA3: fullAdder_rtl port map(A=>A(3),B=>B(3),C=>c3,Sum =>SUM(3),Carry=>c4);
FA4: fullAdder_rtl port map(A=>A(4),B=>B(4),C=>c4,Sum =>SUM(4),Carry=>c5);
FA5: fullAdder_rtl port map(A=>A(5),B=>B(5),C=>c5,Sum =>SUM(5),Carry=>c6);
FA6: fullAdder_rtl port map(A=>A(6),B=>B(6),C=>c6,Sum =>SUM(6),Carry=>c7);
FA7: fullAdder_rtl port map(A=>A(7),B=>B(7),C=>c7,Sum =>SUM(7),Carry=>COUT);

end Behavioral;