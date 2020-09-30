--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:43 05/07/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/up_counter/up_down_test.vhd
-- Project Name:  up_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_rtl
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
 
ENTITY up_down_test IS
END up_down_test;
 
ARCHITECTURE behavior OF up_down_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT up_down_rtl
    PORT(
         up_down : IN  std_logic;
         clock : IN  std_logic;
         clear : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal up_down : std_logic := '0';
   signal clock : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_rtl PORT MAP (
          up_down => up_down,
          clock => clock,
          clear => clear,
          count => count
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      clear <= '1'; 
		up_down <= '0'; 
		wait for 2 ps;
		
		clear <= '0'; 
		wait for 30 ps;
		
		up_down <= '1'; 
		wait;
   end process;

END;
