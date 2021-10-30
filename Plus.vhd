----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:38 10/25/2021 
-- Design Name: 
-- Module Name:    Plus - Behavioral 
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

entity Plus is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out  STD_LOGIC_VECTOR (7 downto 0));
end Plus;

architecture Behavioral of Plus is
signal cop : STD_LOGIC_VECTOR(3 downto 0):="0000";
signal ci : STD_LOGIC:='0';
signal c0 : STD_LOGIC;
signal c1 : STD_LOGIC;
signal c2 : STD_LOGIC;
signal c3 : STD_LOGIC;
signal c4 : STD_LOGIC;
signal c5 : STD_LOGIC;
signal c6 : STD_LOGIC;

 

begin

Y(0) <=(NOT(ci)and(A(0) XOR B(0))) OR (ci AND (A(0)XNOR B(0)));
c0 <=(ci and (A(0) XOR B(0))) OR (A(0) AND B(0));


Y(1) <=(NOT(c0)and(A(1) XOR B(1))) OR (c0 AND (A(1)XNOR B(1)));
c1 <=(c0 and (A(1) XOR B(1))) OR (A(1) AND B(1));


Y(2) <=(NOT(c1)and(A(2) XOR B(2))) OR (c1 AND (A(2)XNOR B(2)));
c2 <=(c1 and (A(2) XOR B(2))) OR (A(2) AND B(2));


Y(3) <=(NOT(c2)and(A(3) XOR B(3))) OR (c2 AND (A(3)XNOR B(3)));
c3 <=(c2 and (A(3) XOR B(3))) OR (A(3) AND B(3));


Y(4) <=(NOT(c3)and(cop(0) XOR B(4))) OR (c3 AND (cop(0)XNOR B(4)));
c4 <=(c3 and (cop(0) XOR B(4))) OR (cop(0) AND B(0));

Y(5) <=(NOT(c4)and(cop(1) XOR B(5))) OR (c4 AND (cop(1)XNOR B(5)));
c5 <=(c4 and (cop(1) XOR B(5))) OR (cop(1) AND B(1));

Y(6) <=(NOT(c5)and(cop(2) XOR B(6))) OR (c5 AND (cop(2)XNOR B(6)));
c6 <=(c5 and (cop(2) XOR B(6))) OR (cop(2) AND B(2));

Y(7) <=(NOT(c6)and(cop(3) XOR B(7))) OR (c6 AND (cop(3)XNOR B(7)));


end Behavioral;

