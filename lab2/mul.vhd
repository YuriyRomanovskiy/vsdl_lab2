----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:37:49 11/13/2018 
-- Design Name: 
-- Module Name:    mul - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mul is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           z : out  STD_LOGIC);
end mul;

architecture Struct of mul is

	component and1 
		Port (
			aOuter, bOuter: in std_logic;

			zOuter: out std_logic
		);
	end component;
	
	component or1
		Port (
			aOuter, bOuter: in std_logic;

			zOuter: out std_logic
		);
	end component;
	
	component not1
		Port (
			aOuter: in std_logic;

			zOuter: out std_logic
		);
	end component;
	
	signal t1, t2, t3: std_logic;

begin
	
	U1: not1 port map (b,t1);	
	U2: and1	port map (t1,a,t2);
	U3: and1 port map (a,b,t3);
	U4: or1 port map (t2, t3, z);
end Struct;


architecture Behavioral of mul is

begin

z <= a when s = '0' else b;

end Behavioral;

