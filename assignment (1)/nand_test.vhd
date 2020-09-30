--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:30:33 05/26/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/NAND_GATE/nand_test.vhd
-- Project Name:  NAND_GATE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nand_rtl
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
 
ENTITY nand_test IS
END nand_test;
 
ARCHITECTURE behavior OF nand_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nand_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nand_rtl PORT MAP (
          A => A,
          B => B,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0'; B <= '0'; wait for 1 ps;
	   A <= '0'; B <= '1'; wait for 1 ps;
	   A <= '1'; B <= '0'; wait for 1 ps;
	   A <= '1'; B <= '1'; wait for 1 ps;
   end process;

END;
