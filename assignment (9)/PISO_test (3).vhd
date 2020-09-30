--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:32:21 04/30/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/PISO/PISO_test.vhd
-- Project Name:  PISO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO_rtl
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
 
ENTITY PISO_test IS
END PISO_test;
 
ARCHITECTURE behavior OF PISO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_rtl
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         CLOCK : IN  std_logic;
         SHIFT : IN  std_logic;
         CLEAR : IN  std_logic;
         OUTPUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');
   signal CLOCK : std_logic := '0';
   signal SHIFT : std_logic := '0';
   signal CLEAR : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_rtl PORT MAP (
          I => I,
          CLOCK => CLOCK,
          SHIFT => SHIFT,
          CLEAR => CLEAR,
          OUTPUT => OUTPUT
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
      I <= "0101"; 
		wait for 2 ps;
		SHIFT <= '0'; 
		wait for 2 ps;
		SHIFT <= '1'; 
		wait for 2 ps;
   end process;

END;
