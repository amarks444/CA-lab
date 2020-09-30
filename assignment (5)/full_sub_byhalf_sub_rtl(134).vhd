----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:00 04/03/2020 
-- Design Name: 
-- Module Name:    full_sub_byhfalf_rtl - Behavioral 
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

entity full_sub_byhfalf_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end full_sub_byhfalf_rtl;

architecture Behavioral of full_sub_byhfalf_rtl is

component half_sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3: std_logic:='0';

begin
half_sub1: half_sub_rtl port map(a=>a,b=>b,dif=>temp1,  bor=>temp2);
half_sub2: half_sub_rtl port map(a=>temp1, b=>c, dif=>diff, bor=>temp3);
bor <= temp2 or temp3;


end Behavioral;

