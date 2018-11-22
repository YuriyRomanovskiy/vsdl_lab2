----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:43 11/15/2018 
-- Design Name: 
-- Module Name:    point2 - Behavioral 
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

entity point2 is
    Port ( w : in  STD_LOGIC;
           x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           f : out  STD_LOGIC);
end point2;

architecture Struct of point2 is

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
	
	signal not_w,not_y, w_or_z, not_w_or_x,
	part_1, part_2, part_3, part_1_2: std_logic;
	
begin

	U1: not1 port map (w, not_w);
	U2: not1 port map (y, not_y);
	U3: or1 port map (w, z, w_or_z);
	U4: or1 port map (not_w, x, not_w_or_x);
	U5: and1 port map (not_w_or_x, y, part_1);
	U6: or1 port map (not_w_or_x, not_y, part_2);
	U7: or1 port map (w, z, part_3);
	U8: and1 port map (part_1, part_2, part_1_2);
	U9: and1 port map (part_1_2, part_3, f);

end Struct;


architecture Behavioral of point2 is

begin

f <= (( not w or x) and y) and ( not w or x or not y) and (w or z);

end Behavioral;

