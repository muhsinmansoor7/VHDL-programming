----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:29 09/27/2022 
-- Design Name: 
-- Module Name:    A2_Q7_ALU - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity A2_Q7_ALU is
    Port ( op1 : in  STD_LOGIC_VECTOR (3 downto 0);
           op2 : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC_VECTOR (3 downto 0);
           outp : out  STD_LOGIC_VECTOR (3 downto 0));
end A2_Q7_ALU;

architecture Behavioral of A2_Q7_ALU is

signal ou :std_logic_vector(3 downto 0);
begin
 process(op)
 begin
 if(op="0000")then
 ou<="0000";
 elsif(op="0001")then
 ou<= op1+op2;
 elsif(op="0010")then
 ou<= op1-op2;
 elsif(op="0011")then
 ou<=op1 and op2;
 elsif(op="0100")then
 ou<=op1 xor op2;
 elsif(op="0101")then
 ou<=op1 or op2;
 elsif(op="0110")then
 ou<="0000"-op1;
 elsif(op="0111")then
 ou<="1111"-op1;
 elsif(op="1001")then
  if(op2="0000")then
  ou<=op1;
  elsif(op2="0001")then
  ou(0)<=op1(1);
  ou(1)<=op1(2);
  ou(2)<=op1(3);
  ou(3)<='0';
  elsif(op2="0010")then
  ou(0)<=op1(2);
  ou(1)<=op1(3);
  ou(2)<='0';
  ou(3)<='0';
  elsif(op2="0011")then
  ou(0)<=op1(3);
  ou(1)<='0';
  ou(2)<='0';
  ou(3)<='0';
  end if;
 elsif(op="1000")then
  if(op2="0000")then
  ou<=op1;
  elsif(op2="0001")then
  ou(3)<=op1(2);
  ou(1)<=op1(0);
  ou(2)<=op1(1);
  ou(0)<='0';
  elsif(op2="0010")then
  ou(3)<=op1(1);
  ou(2)<=op1(0);
  ou(1)<='0';
  ou(0)<='0';
  elsif(op2="0011")then
  ou(3)<=op1(0);
  ou(2)<='0';
  ou(1)<='0';
  ou(0)<='0';
  end if;
  elsif(op="1010")then
   if(op2="0000")then
  ou<=op1;
  elsif(op2="0001")then
  ou(3)<=op1(2);
  ou(1)<=op1(0);
  ou(2)<=op1(1);
  ou(0)<=op1(3);
  elsif(op2="0010")then
  ou(3)<=op1(1);
  ou(2)<=op1(0);
  ou(1)<=op1(3);
  ou(0)<=op1(2);
  elsif(op2="0011")then
  ou(3)<=op1(0);
  ou(2)<=op1(3);
  ou(1)<=op1(2);
  ou(0)<=op1(1);
  end if;
 elsif(op="1011")then
  if(op2="0000")then
  ou<=op1;
  elsif(op2="0001")then
  ou(0)<=op1(1);
  ou(1)<=op1(2);
  ou(2)<=op1(3);
  ou(3)<=op1(0);
  elsif(op2="0010")then
  ou(0)<=op1(2);
  ou(1)<=op1(3);
  ou(2)<=op1(0);
  ou(3)<=op1(1);
  elsif(op2="0011")then
  ou(0)<=op1(3);
  ou(1)<=op1(0);
  ou(2)<=op1(1);
  ou(3)<=op1(2);
  end if;

 else 
 ou<="0000";
 end if;
 end process;
 outp<=ou;


end Behavioral;

