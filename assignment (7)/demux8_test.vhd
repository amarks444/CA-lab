--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:37 04/14/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/de_mux8/demux8_test.vhd
-- Project Name:  de_mux8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: demux8_rtl
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
 
ENTITY demux8_test IS
END demux8_test;
 
ARCHITECTURE behavior OF demux8_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT demux8_rtl
    PORT(
         D : IN  std_logic_vector(2 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y0 : OUT  std_logic_vector(2 downto 0);
         Y1 : OUT  std_logic_vector(2 downto 0);
         Y2 : OUT  std_logic_vector(2 downto 0);
         Y3 : OUT  std_logic_vector(2 downto 0);
         Y4 : OUT  std_logic_vector(2 downto 0);
         Y5 : OUT  std_logic_vector(2 downto 0);
         Y6 : OUT  std_logic_vector(2 downto 0);
         Y7 : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(2 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y0 : std_logic_vector(2 downto 0);
   signal Y1 : std_logic_vector(2 downto 0);
   signal Y2 : std_logic_vector(2 downto 0);
   signal Y3 : std_logic_vector(2 downto 0);
   signal Y4 : std_logic_vector(2 downto 0);
   signal Y5 : std_logic_vector(2 downto 0);
   signal Y6 : std_logic_vector(2 downto 0);
   signal Y7 : std_logic_vector(2 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demux8_rtl PORT MAP (
          D => D,
          S => S,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
          Y5 => Y5,
          Y6 => Y6,
          Y7 => Y7
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
     D <= "101";
		S <= "000"; wait for 1 ps;
		S <= "001"; wait for 1 ps;
		S <= "010"; wait for 1 ps;
		S <= "011"; wait for 1 ps;
		S <= "100"; wait for 1 ps;
		S <= "101"; wait for 1 ps;
		S <= "110"; wait for 1 ps;
		S <= "111"; wait for 1 ps;
   end process;

END;
