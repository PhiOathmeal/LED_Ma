----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:04 10/25/2021 
-- Design Name: 
-- Module Name:    Clock_A - Behavioral 
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

entity Clock_B is
    Port ( clk_2 : in  STD_LOGIC;
           clk_Sb2 : out  STD_LOGIC);
end Clock_B;

architecture Behavioral of Clock_B is

signal count: integer range 0 to 20000000;
signal aclk_2 : STD_LOGIC:='0';

begin
	process(clk_2)
	begin
	if (rising_edge(clk_2))then
	    if count < 20000000 then
		 count<=count+1;
		 else
		 aclk_2<=not aclk_2;
		 count<=0;
		 end if;
	end if; 
	
end process;
clk_Sb2<=aclk_2;
end Behavioral;


