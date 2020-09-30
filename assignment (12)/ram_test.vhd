--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:16:26 05/13/2020
-- Design Name:   
-- Module Name:   C:/Users/ADITYA/RAM_chip/ram_test.vhd
-- Project Name:  RAM_chip
-- Target Device:  
-- Tool versions: 
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_rtl
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
 
ENTITY ram_test IS
END ram_test;
 
ARCHITECTURE behavior OF ram_test IS 

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_rtl
    PORT(
         clock : IN  std_logic;
         read_enable : IN  std_logic;
         write_enable : IN  std_logic;
         address : IN  std_logic_vector(7 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal read_enable : std_logic := '0';
   signal write_enable : std_logic := '0';
   signal address : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_rtl PORT MAP (
          clock => clock,
          read_enable => read_enable,
          write_enable => write_enable,
          address => address,
          data_in => data_in,
          data_out => data_out
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
      address <= "00000001"; 
		read_enable <= '1'; 
		write_enable <= '0';
		wait for 2 ps;
		
		address <= "00000001"; 
		read_enable <= '0'; 
		write_enable <= '1';
		data_in <= "00000001";
		wait for 2 ps;
		
		address <= "00000001"; 
		read_enable <= '1'; 
		write_enable <= '0';
		wait for 2 ps;
		
		address <= "00000010"; 
		read_enable <= '1'; 
		write_enable <= '0';
		wait for 2 ps;
		
		address <= "00000010"; 
		read_enable <= '0'; 
		write_enable <= '1';
		data_in <= "00001000";
		wait for 2 ps;
		
		address <= "00000010"; 
		read_enable <= '1'; 
		write_enable <= '0';
		wait for 2 ps;
		
   end process;

END;
