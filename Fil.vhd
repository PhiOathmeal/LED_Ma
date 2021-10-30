----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:10 10/25/2021 
-- Design Name: 
-- Module Name:    Fil - Behavioral 
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

entity Fil is
    Port ( Add : in  STD_LOGIC_VECTOR (7 downto 0);
           Disp : out  STD_LOGIC_VECTOR (7 downto 0));
end Fil;

architecture Behavioral of Fil is

type letter is array (255 downto 0) OF STD_LOGIC_VECTOR (7 downto 0);
signal lette_plus : letter;

begin

Disp <=lette_plus (conv_integer(Add));
	
	lette_plus (0)<="00000000";
	lette_plus (1)<="00000000";
	lette_plus (2)<="00000000";
	lette_plus (3)<="00000000";
	lette_plus (4)<="00000000";
	lette_plus (5)<="00000000";
	lette_plus (6)<="11111110";
	lette_plus (7)<="00010000";
	lette_plus (8)<="00010000";
	lette_plus (9)<="00010000";
	lette_plus (10)<="11111110";
	lette_plus (11)<="00000000";
	lette_plus (12)<="01111100";
	lette_plus (13)<="10000010";
	lette_plus (14)<="10000010";
	lette_plus (15)<="10000010";
	lette_plus (16)<="01111100";---ide---
	lette_plus (17)<="00000000";
	lette_plus (18)<="11111110";
	lette_plus (19)<="10000000";
	lette_plus (20)<="10000000";
	lette_plus (21)<="10000000";
	lette_plus (22)<="10000000";
	lette_plus (23)<="00000000";
	lette_plus (24)<="11111100";
	lette_plus (25)<="00010010";
	lette_plus (26)<="00010010";
	lette_plus (27)<="00010010";
	lette_plus (28)<="11111100";
	lette_plus (29)<="00000000";
	lette_plus (30)<="00000000";
	lette_plus (31)<="00000000";
	lette_plus (32)<="00000000";
	lette_plus (33)<="00000000";
	
	
end Behavioral;

