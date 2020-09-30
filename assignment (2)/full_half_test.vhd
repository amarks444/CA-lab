--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:41:42 05/26/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/Full_adder_half/full_half_test.vhd
-- Project Name:  Full_adder_half
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_half_rtl
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
 
ENTITY full_half_test IS
END full_half_test;
 
ARCHITECTURE behavior OF full_half_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_half_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C_in : IN  std_logic;
         SUM : OUT  std_logic;
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C_in : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal C_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_half_rtl PORT MAP (
          A => A,
          B => B,
          C_in => C_in,
          SUM => SUM,
          C_out => C_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0'; B <= '0'; C_in <= '0'; wait for 1 ps;
A <= '0'; B <= '0'; C_in <= '1'; wait for 1 ps;
A <= '0'; B <= '1'; C_in <= '0'; wait for 1 ps;
A <= '0'; B <= '1'; C_in <= '1'; wait for 1 ps;
A <= '1'; B <= '0'; C_in <= '0'; wait for 1 ps;
A <= '1'; B <= '0'; C_in <= '1'; wait for 1 ps;
A <= '1'; B <= '1'; C_in <= '0'; wait for 1 ps;
A <= '1'; B <= '1'; C_in <= '1'; wait for 1 ps;
   end process;

END;
