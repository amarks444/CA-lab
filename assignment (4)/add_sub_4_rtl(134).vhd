----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:19 03/26/2020 
-- Design Name: 
-- Module Name:    add_sub_4_rtl - Behavioral 
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

entity add_sub_4_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M_in : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end add_sub_4_rtl;

architecture Behavioral of add_sub_4_rtl is

component fulladder_basic_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           c0 : out  STD_LOGIC);
end component;

signal b1,b2,b3,b4,c1,c2,c3: std_logic:='0';

begin
b1 <= M_in xor B(0) ;
op1: fulladder_basic_rtl port map(a=>A(0), b=>b1, c=>M_in, s=>outp(0), c0=>c1) ;

b2 <= M_in xor B(1) ;
op2: fulladder_basic_rtl port map(a=>A(1), b=>b2, c=>c1, s=>outp(1), c0=>c2) ;

b3 <= M_in xor B(2) ;
op3: fulladder_basic_rtl port map(a=>A(2), b=>b3, c=>c2, s=>outp(2), c0=>c3) ;

b4 <= M_in xor B(3) ;
op4: fulladder_basic_rtl port map(a=>A(3), b=>b4, c=>c3, s=>outp(3), c0=>cout) ;

end Behavioral;

