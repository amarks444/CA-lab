--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:52:52 05/07/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/ALU_4_bit/alu_test.vhd
-- Project Name:  ALU_4_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_rtl
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
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_rtl
    PORT(
         inp_a : IN  signed(3 downto 0);
         inp_b : IN  signed(3 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         alu_out : OUT  signed(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inp_a : signed(3 downto 0) := (others => '0');
   signal inp_b : signed(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal alu_out : signed(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_rtl PORT MAP (
          inp_a => inp_a,
          inp_b => inp_b,
          sel => sel,
          alu_out => alu_out
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      inp_a <= "1001"; inp_b <= "1111";
		sel <= "000"; 
		wait for 1 ps;
		
		sel <= "001"; 
		wait for 1 ps;
		
		sel <= "010"; 
		wait for 1 ps;
		
		sel <= "011"; 
		wait for 1 ps;
		
		sel <= "100"; 
		wait for 1 ps;
		
		sel <= "101"; 
		wait for 1 ps;
		
		sel <= "110"; 
		wait for 1 ps;
		
		sel <= "111";
   end process;

END;
