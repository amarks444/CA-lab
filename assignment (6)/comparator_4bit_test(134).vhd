--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:47 04/10/2020
-- Design Name:   
-- Module Name:   /home/Downloads/Aditya_134/comparator_4bit_rtl/compa_4bit_test.vhd
-- Project Name:  compa_4bit_rtl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compa_4bit_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY compa_4bit_test IS
END compa_4bit_test;
 
ARCHITECTURE behavior OF compa_4bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compa_4bit_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Eq : OUT  std_logic;
         Grt : OUT  std_logic;
         Lt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Eq : std_logic;
   signal Grt : std_logic;
   signal Lt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compa_4bit_rtl PORT MAP (
          A => A,
          B => B,
          Eq => Eq,
          Grt => Grt,
          Lt => Lt
        );



   -- Stimulus process
   stim_proc: process
   begin		
	A <= "1111" ; B <= "1110"; wait for 1 ps;
	A <= "0011" ; B <= "0111"; wait for 1 ps;
	A <= "0000" ; B <= "0001"; wait for 1 ps;
	A <= "0011" ; B <= "0011"; wait for 1 ps;
   end process;

END;
