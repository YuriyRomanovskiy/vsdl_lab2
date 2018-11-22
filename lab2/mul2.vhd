----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:15 11/15/2018 
-- Design Name: 
-- Module Name:    mul2 - Behavioral 
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

entity mul2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           s : in  STD_LOGIC;
           z : out  STD_LOGIC;
           z1 : out  STD_LOGIC);
end mul2;


architecture Struct of mul2 is

	component OuterMux 
		Port (
			aOuter, bOuter, sOuter: in std_logic;

			zOuter: out std_logic
		);
	end component;

begin
	
	U1: OuterMux port map (

		aOuter => a,

		bOuter => b,

		sOuter => s,

		zOuter => z

		);

	U2: OuterMux port map (

		aOuter => a1,

		bOuter => b1,

		sOuter => s,

		zOuter => z1

		);
		
end Struct;


architecture Behavioral of mul2 is

begin

		Z <= a when s = '0' else b;

		Z1 <= a1 when s = '0' else b1;

end Behavioral;

