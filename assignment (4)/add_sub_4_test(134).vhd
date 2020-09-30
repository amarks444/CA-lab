--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:55:19 03/26/2020 
-- Design Name:   
-- Module Name:   /home/time/Downloads/ca_lab/ca_day4/Aditya/add_sub_4_rtl/add_sub_4_test.vhd
-- Project Name:  add_sub_4_rtl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_sub_4_rtl
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
 
ENTITY add_sub_4_test IS
END add_sub_4_test;
 
ARCHITECTURE behavior OF add_sub_4_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub_4_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M_in : IN  std_logic;
         outp : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M_in : std_logic := '0';

 	--Outputs
   signal outp : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub_4_rtl PORT MAP (
          A => A,
          B => B,
          M_in => M_in,
          outp => outp,
          cout => cout
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	A <= "0111" ; B <= "0001"; M_in <= '0'; wait for 1 ps;
	A <= "0111" ; B <= "0001"; M_in <= '1'; wait for 1 ps;
	A <= "1110" ; B <= "0001"; M_in <= '0'; wait for 1 ps;
	A <= "1110" ; B <= "0001"; M_in <= '1'; wait for 1 ps;
   end process;

END;
