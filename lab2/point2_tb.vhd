--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:30:21 11/22/2018
-- Design Name:   
-- Module Name:   C:/Users/brand/Documents/folder/lab2/point2_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: point2
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
 
ENTITY point2_tb IS
END point2_tb;
 
ARCHITECTURE behavior OF point2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT point2
    PORT(
         w : IN  std_logic;
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal w : std_logic := '0';
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal f : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   ---constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: point2 PORT MAP (
          w => w,
          x => x,
          y => y,
          z => z,
          f => f
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
		 wait for 25 ns;
		 w <= not w;
   end process;
	
	
	stim_proc1: process
   begin		
		 wait for 50 ns;
		 x <= not x;
   end process;
	
	
	stim_proc2: process
   begin		
		 wait for 100 ns;
		 y <= not y;
   end process;
	
	
	stim_proc3: process
   begin		
		 wait for 200 ns;
		 z <= not z;
   end process;
	
	

END;
