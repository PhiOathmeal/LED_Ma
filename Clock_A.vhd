----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:23 10/28/2021 
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

entity Clock_A is
    Port ( clk_1 : in  STD_LOGIC;
           clk_Sa1 : out  STD_LOGIC);
end Clock_A;

architecture Behavioral of Clock_A is

signal count : integer range 0 to 100000;

signal aclk_1 : STD_LOGIC :='0';

begin
	process(clk_1)
	begin
	if (rising_edge(clk_1))then
	if count <100000 then
	count<=count+1;
	else 
	aclk_1<=not aclk_1;
	count<=0;
	end if;
	end if;	
	
	
	end process; 

 clk_Sa1<=aclk_1;

end Behavioral;

