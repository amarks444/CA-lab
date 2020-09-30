--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:54 03/18/2020
-- Design Name:   
-- Module Name:   /home/student/Desktop/Aditya/Adder8Bit/Adder8Bit.vhd
-- Project Name:  Adder8Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder8Bit_rtl
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
 
ENTITY Adder8Bit IS
END Adder8Bit;
 
ARCHITECTURE behavior OF Adder8Bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder8Bit_rtl
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         CIN : IN  std_logic;
         SUM : OUT  std_logic_vector(7 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal CIN : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(7 downto 0);
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder8Bit_rtl PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          SUM => SUM,
          COUT => COUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "01111111";
		B <= "00000001";
		CIN <='0';
		wait for 1 ps;
		A <= "01111111";
		B <= "00000001";
		CIN <='1';
		wait for 1 ps;
		A <= "11111110";
		B <= "00000001";
		CIN <='0';
		wait for 1 ps;
		A <= "11111110";
		B <= "00000001";
		CIN <='1';
		wait for 1 ps;
   end process;

END;
