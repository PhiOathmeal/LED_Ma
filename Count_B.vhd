----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:49 10/25/2021 
-- Design Name: 
-- Module Name:    Count_B - Behavioral 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Count_B is
    Port ( clk : in  STD_LOGIC;
           M : out  STD_LOGIC_VECTOR (7 downto 0));
end Count_B;

architecture Behavioral of Count_B is

signal count: integer range 0 to 33:=0;

begin
Process(clk)
begin
		if(rising_edge(clk))then
			if(count=0) then
			M<="00000000";
			count<=count+1;
			elsif (count=1) then
			M<="00000001";
			count<=count+1;
			elsif (count=2) then
			M<="00000010";
			count<=count+1;
			elsif (count=3) then
			M<="00000011";
			count<=count+1;
			elsif (count=4) then
			M<="00000100";
			count<=count+1;
			elsif (count=5) then
			M<="00000101";
			count<=count+1;
			elsif (count=6) then
			M<="00000110";
			count<=count+1;
			elsif (count=7) then
			M<="00000111";
			count<=count+1;
			elsif (count=8) then
			M<="00001000";
			count<=count+1;
			elsif (count=9) then
			M<="00001001";
			elsif (count=10) then
			M<="00001010";
			count<=count+1;
			elsif (count=11) then
			M<="00001011";
			count<=count+1;
			elsif (count=12) then
			M<="00001100";
			count<=count+1;
			elsif (count=13) then
			M<="00001101";
			count<=count+1;
			elsif (count=14) then
			M<="00001110"; 
			count<=count+1;
			elsif (count=15) then
			M<="00001111";
			count<=count+1;
			elsif (count=16) then  
			M<="00010000";
			count<=count+1;
			elsif (count=17) then
			M<="00010001";
			count<=count+1;
			elsif (count=18) then
			M<="00010010";
			count<=count+1;
			elsif (count=19) then
			M<="00010011";
			count<=count+1;
			elsif (count=20) then
			M<="00010100";
			count<=count+1;
			elsif (count=21) then
			M<="00010101";
			count<=count+1;
			elsif (count=22) then
			M<="00010110";
			count<=count+1;
			elsif (count=23) then
			M<="00010111";
			count<=count+1;
			elsif (count=24) then
			M<="00011000";
			count<=count+1;
			elsif (count=25) then
			M<="00011001";
			count<=count+1;
			elsif (count=26) then
			M<="00011010";
			count<=count+1;
			elsif (count=27) then
			M<="00011011";
			count<=count+1;
			elsif (count=28) then
			M<="00011100";
			count<=count+1;
			elsif (count=29) then
			M<="00011101";
			count<=count+1;
			elsif (count=30) then
			M<="00011110";
			count<=count+1;
			elsif (count=31) then
			M<="00011111";
			count<=count+1;
			elsif (count=32) then
			M<="00100000";
			count<=count+1;
			elsif (count=33) then
			M<="00100001";
			count<=0;
			end if;
			
		end if;
			end process;
			
end Behavioral;












































--
--
------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date:    20:17:49 10/25/2021 
---- Design Name: 
---- Module Name:    Count_B - Behavioral 
---- Project Name: 
---- Target Devices: 
---- Tool versions: 
---- Description: 
----
---- Dependencies: 
----
---- Revision: 
---- Revision 0.01 - File Created
---- Additional Comments: 
----
------------------------------------------------------------------------------------
--library IEEE; 
--use IEEE.std_logic_1164.all;
--use IEEE.numeric_std.all;
--use IEEE.std_logic_unsigned.all;
--
---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;
--
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
----library UNISIM;
----use UNISIM.VComponents.all;
--
--entity Count_B is
--    Port ( clk : in  STD_LOGIC;
--           M : out  STD_LOGIC_VECTOR (5 downto 0));
--end Count_B;
--
--architecture Behavioral of Count_B is
--
--signal count: integer range 0 to 33:=0;
--
--begin
--		if(rising_edge(clk))then
--			if(count=0) then
--			M<="000000";
--			count<=count+1;
--			elsif (count=1) then
--			M<="000001";
--			count<=count+1;
--			elsif (count=2) then
--			M<="000010";
--			count<=count+1;
--			elsif (count=3) then
--			M<="000011";
--			count<=count+1;
--			elsif (count=4) then
--			M<="000100";
--			count<=count+1;
--			elsif (count=5) then
--			M<="000101";
--			count<=count+1;
--			elsif (count=6) then
--			M<="000110";
--			count<=count+1;
--			elsif (count=7) then
--			M<="000111";
--			count<=count+1;
--			elsif (count=8) then
--			M<="001000";
--			count<=count+1;
--			elsif (count=9) then
--			M<="001001";
--			elsif (count=10) then
--			M<="001010";
--			count<=count+1;
--			elsif (count=11) then
--			M<="001011";
--			count<=count+1;
--			elsif (count=12) then
--			M<="001100";
--			count<=count+1;
--			elsif (count=13) then
--			M<="001101";
--			count<=count+1;
--			elsif (count=14) then
--			M<="001110"; 
--			count<=count+1;
--			elsif (count=15) then
--			M<="001111";
--			count<=count+1;
--			elsif (count=16) then
--			M<="010000";
--			elsif (count=17) then
--			M<="010001";
--			count<=count+1;
--			elsif (count=18) then
--			M<="010010";
--			count<=count+1;
--			elsif (count=19) then
--			M<="010011";
--			count<=count+1;
--			elsif (count=20) then
--			M<="010100";
--			count<=count+1;
--			elsif (count=21) then
--			M<="010101";
--			count<=count+1;
--			elsif (count=22) then
--			M<="010110";
--			count<=count+1;
--			elsif (count=23) then
--			M<="010111";
--			count<=count+1;
--			elsif (count=24) then
--			M<="011000";
--			elsif (count=25) then
--			M<="011001";
--			count<=count+1;
--			elsif (count=26) then
--			M<="011010";
--			count<=count+1;
--			elsif (count=27) then
--			M<="011011";
--			count<=count+1;
--			elsif (count=28) then
--			M<="011100";
--			count<=count+1;
--			elsif (count=29) then
--			M<="011101";
--			count<=count+1;
--			elsif (count=30) then
--			M<="011110";
--			count<=count+1;
--			elsif (count=31) then
--			M<="011111";
--			count<=count+1;
--			elsif (count=32) then
--			M<="100000";
--			count<=count+1;
--			elsif (count=33) then
--			M<="100001";
--			count<=0;
--			end if;
--			
--			end if;
--			
--			end process;
--
--
--end Behavioral;

