----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:47 04/10/2020
-- Design Name: 
-- Module Name:    compa_4bit_rtl - Behavioral 
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

entity compa_4bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Eq : out  STD_LOGIC;
           Grt : out  STD_LOGIC;
           Lt : out  STD_LOGIC);
end compa_4bit_rtl;

architecture Behavioral of compa_4bit_rtl is

signal exn1,exn2,exn3: std_logic:='0';

begin
exn1 <= ( A(3) xnor B(3) );
exn2 <= exn1 and ( A(2) xnor B(2) );
exn3 <= exn2 and ( A(1) xnor B(1) );

Grt <= (A(3) and (not B(3))) or (exn1 and A(2) and (not B(2))) or (exn2 and A(1) and (not B(1))) or (exn3 and A(0) and (not B(0)));
Eq <= exn3 and ( A(0) xnor B(0));
Lt <= (B(3) and (not A(3))) or (exn1 and B(2) and (not A(2))) or (exn2 and B(1) and (not A(1))) or (exn3 and B(0) and (not A(0)));


end Behavioral;

