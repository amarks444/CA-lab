--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:26:06 04/21/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/jk_flip_flop/kj_test.vhd
-- Project Name:  jk_flip_flop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jk_rtl
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
 
ENTITY kj_test IS
END kj_test;
 
ARCHITECTURE behavior OF kj_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT jk_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic;
         Q_BAR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_BAR : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_rtl PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          RST => RST,
          Q => Q,
          Q_BAR => Q_BAR
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
		  wait for 1 ps; 

		  RST <= '0';
		  J <= '0';
		  K <= '1';
		  wait for 1 ps;
		  
		  RST <= '0';
		  J <= '1'; 
		  K <= '0';
		  wait for 1 ps;
		  
		  RST <= '0';
		  J <= '1'; 
		  K <= '1';
		  wait for 1 ps;

		  RST <= '0';
		  J <= '0'; 
		  K <= '0';
		  wait for 1 ps;
   end process;

END;
