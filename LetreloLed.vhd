----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:49 10/25/2021 
-- Design Name: 
-- Module Name:    LetreloLed - Behavioral 
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

entity LetreloLed is
    Port ( clk : in  STD_LOGIC;
           Dat : out STD_LOGIC_VECTOR (7 downto 0);
           Hob : out STD_LOGIC_VECTOR (7 downto 0));
			  
end LetreloLed;
 
architecture Behavioral of LetreloLed is
---ClkA------
 component Clock_A is
	Port(	clk_1 : in  STD_LOGIC; 
	clk_Sa1 : out  STD_LOGIC);
	
	end component Clock_A;
---clkB------
	component Clock_B is
	Port(	clk_2 : in  STD_LOGIC;
	clk_Sb2 : out  STD_LOGIC); 
	
	end component Clock_B;
	
	component Count_A is
	Port(	clk : in  STD_LOGIC;
	M : out  STD_LOGIC_VECTOR (3 downto 0));
	
	end component Count_A;
	
	component Count_B is
	Port(	clk : in  STD_LOGIC;
	M : out  STD_LOGIC_VECTOR (7 downto 0));
	
	end component Count_B;

component Plus is
	Port(
 	A : in  STD_LOGIC_VECTOR (3 downto 0);
	B : in  STD_LOGIC_VECTOR (7 downto 0);
	Y : out  STD_LOGIC_VECTOR (7 downto 0));
	
	end component Plus;
	
	component Col is
	Port(	Add : in  STD_LOGIC_VECTOR (3 downto 0);
	Disp : out  STD_LOGIC_VECTOR (7 downto 0));
	
	end component Col;
	
	component Fil is
	Port(	Add : in  STD_LOGIC_VECTOR (7 downto 0);
	Disp : out  STD_LOGIC_VECTOR (7 downto 0));
	
	end component Fil;

	signal in1,in2,ina : STD_LOGIC;
	signal out1 : STD_LOGIC_VECTOR (3 downto 0);
	signal outm1 : STD_LOGIC_VECTOR (7 downto 0);
	signal out2,out_p : STD_LOGIC_VECTOR (7 downto 0);
	signal outm2 : STD_LOGIC_VECTOR (7 downto 0);




begin

	D1 : Clock_A Port map (clk_1=>ina,clk_Sa1=>in1);
	D2 : Clock_B Port map (clk_2=>ina,clk_Sb2=>in2);
	D3 : Count_A Port map (clk=>in1,M=>out1);
	D4 : Count_B Port map (clk=>in2,M=>out2);
	D5 : Plus Port map (A=>out1,B=>out2,Y=>out_p);
	D6 : Col Port map (Add=>out1,Disp=>outm2);
	D7 : Fil Port map (Add=>out_p,Disp=>outm1);
	
--	SUM1 + SUM2<=out2;
	
	ina<=clk;
	Dat<=outm1;
	Hob <=outm2;
	



end Behavioral;





--D1 : Clock_A Port map (clk_1=>inl,clk_Sa1=>in1);
--	D2 : Clock_B Port map (clk_2=>inl,clk_Sb2=>in2);
--	D3 : Count_A Port map (clk=>inl,M1=>out1);
--	D4 : Count_B Port map (clk=>in2,M=>SUM1);
--	D5 : Plus Port map (A=>out1,B=>SUM2,Y=>out_p);
--	D6 : Col Port map (Add=>out1,Disp=>outm2);
--	D7 : Fil Port map (Add=>out_p,Disp=>outm1);
--	
----	SUM1 + SUM2<=out2;
--	
--	in1<=clk;
--	Dat<=outm1;
--	Hob <=outm2;
--	