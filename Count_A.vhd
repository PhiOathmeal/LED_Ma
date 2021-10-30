----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:32 10/25/2021 
-- Design Name: 
-- Module Name:    Count_A - Behavioral 
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

entity Count_A is
    Port ( clk : in  STD_LOGIC;
           M : out  STD_LOGIC_VECTOR (3 downto 0));
end Count_A;

architecture Behavioral of Count_A is
 
signal count: integer range 0 to 7:=0;
--signal M :  STD_LOGIC_VECTOR (3 downto 0);
begin

Process(clk)
	begin
		if(rising_edge(clk))then
			if(count=0) then
			M<="0000";
			count<=count+1; 
			elsif (count=1) then
			M<="0001";
			count<=count+1; 
			elsif (count=2) then
			M<="0010";
			count<=count+1;
			elsif (count=3) then 
			M<="0011";
			count<=count+1;
			elsif (count=4) then
			M<="0100"; 
			count<=count+1;
			elsif (count=5) then
			M<="0101"; 
			count<=count+1;
			elsif (count=6) then
			M<="0110";
			count<=count+1;
			elsif (count=7) then
			M<="0111";
			count<=count+1;
			elsif (count=8) then
			M<="1000";
			count<=count+1;
			elsif (count=9) then
			M<="1001";
			count<=0;
			end if;
		end if;

end process;


end Behavioral;

--Process(clk)
--	begin
--		if(rising_edge(clk))then
--			if(count=0) then
--			M<="0000";
--			count<=count+1; 
--			elsif (count=1) then
--			M<="0001";
--			count<=count+1; 
--			elsif (count=2) then
--			M<="0010";
--			count<=count+1;
--			elsif (count=3) then 
--			M<="0011";
--			count<=count+1;
--			elsif (count=4) then
--			M<="0100"; 
--			count<=count+1;
--			elsif (count=5) then
--			M<="0101";
--			count<=count+1;
--			elsif (count=6) then
--			M<="0110";
--			count<=count+1;
--			elsif (count=7) then
--			M<="0111";
--			count<=count+1;
--			elsif (count=8) then
--			M<="1000";
--			count<=count+1;
--			elsif (count=9) then
--			M<="1001";
--			end if;
--		end if;
--
--end process;
