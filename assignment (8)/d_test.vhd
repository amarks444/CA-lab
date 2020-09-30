--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:45 04/24/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/D_FLIP_FLOP/d_test.vhd
-- Project Name:  D_FLIP_FLOP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_rtl
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
 
ENTITY d_test IS
END d_test;
 
ARCHITECTURE behavior OF d_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_rtl
    PORT(
         D_IN : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         D_OUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D_IN : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal D_OUT : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_rtl PORT MAP (
          D_IN => D_IN,
          CLK => CLK,
          RST => RST,
          D_OUT => D_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     RST <= '1';
	  wait for 50 ns; 

	  RST <= '0';
	  D_IN <= '0';
	  wait for 50 ns;
	  
	  RST <= '0';
	  D_IN <= '1';  
	  wait;
   end process;

END;
