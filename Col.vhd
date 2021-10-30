----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:07:17 10/25/2021 
-- Design Name: 
-- Module Name:    Col - Behavioral 
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
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity Col is
    Port ( Add : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp : out  STD_LOGIC_VECTOR (7 downto 0));
end Col;

architecture Behavioral of Col is

type letter is array (15 downto 0) OF STD_LOGIC_VECTOR (7 downto 0);
signal lette_plus : letter;

begin  

Disp <= lette_plus (conv_integer(Add));

   lette_plus (0) <="11111110";
	lette_plus (1) <="11111101";
	lette_plus (2) <="11111011";
	lette_plus (3) <="11110111";
	lette_plus (4) <="11101111"; 
	lette_plus (5) <="11011111";
	lette_plus (6) <="10111111";
	lette_plus (7) <="01111111";


end Behavioral;

--entity Col is
--    Port ( Add : in  STD_LOGIC_VECTOR (3 downto 0);
--           Disp : out  STD_LOGIC_VECTOR (9 downto 0));
--end Col;
--
--architecture Behavioral of Col is
--
--type lette is array (128 downto 0) OF STD_LOGIC_VECTOR (9 downto 0);
--signal lette_plus : lette;
--
--begin  
--
--Disp<= lette_plus (conv_integer(Add));
--
--   lette_plus (0) <="1111111110";
--	lette_plus (1) <="1111111101";
--	lette_plus (2) <="1111111011";
--	lette_plus (3) <="1111110111";
--	lette_plus (4) <="1111101111"; 
--	lette_plus (5) <="1111011111";
--	lette_plus (6) <="1110111111";
--	lette_plus (7) <="1101111111";
--	lette_plus (8) <="1011111111";
--	lette_plus (9) <="0111111111";
--  
--
--
--end Behavioral;
