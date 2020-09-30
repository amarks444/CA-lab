--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:09 04/30/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/Shift_reg/sipo_test.vhd
-- Project Name:  Shift_reg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_rtl
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
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_rtl
    PORT(
         I : IN  std_logic;
         CLOCK : IN  std_logic;
         CLEAR : IN  std_logic;
         U : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal CLOCK : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal U : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_rtl PORT MAP (
          I => I,
          CLOCK => CLOCK,
          CLEAR => CLEAR,
          U => U
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
         CLEAR<='1'; 
			wait for 2 ps;
			CLEAR<='0'; I<='1';
			wait for 2 ps;
			I<='0'; 
			wait for 2 ps;
   end process;

END;
