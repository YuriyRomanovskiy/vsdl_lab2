--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:37:30 11/22/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab2/mul2_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mul2
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
 
ENTITY mul2_tb IS
END mul2_tb;
 
ARCHITECTURE behavior OF mul2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mul2
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         a1 : IN  std_logic;
         b1 : IN  std_logic;
         s : IN  std_logic;
         z : OUT  std_logic;
         z1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal a1 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal z : std_logic;
   signal z1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   ---constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mul2 PORT MAP (
          a => a,
          b => b,
          a1 => a1,
          b1 => b1,
          s => s,
          z => z,
          z1 => z1
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 25 ns;
		a <= not a;
   end process;
	
	stim_proc1: process
   begin		
		wait for 50 ns;
		b <= not b;
   end process;
	
	
	stim_proc2: process
   begin		
		wait for 100 ns;
		a1 <= not a1;
   end process;
	
	stim_proc3: process
   begin		
		wait for 200 ns;
		b1 <= not b1;
   end process;

END;
