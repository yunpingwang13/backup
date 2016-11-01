library ieee;
use ieee.std_logic_1164.all;

entity alu_demo_32 is
port(
result : out std_logic_vector(31 downto 0);
cout : out std_logic;
zero : out std_logic;
overflow : out std_logic
);
end alu_demo_32;

architecture structural of alu_demo_32 is
component alu_32 is
port (
x : in std_logic_vector(31 downto 0);
y : in std_logic_vector(31 downto 0);
control : in std_logic_vector(3 downto 0);
cout : out std_logic;
overflow : out std_logic;
zero : out std_logic;
result : out std_logic_vector(31 downto 0)
);
end component;
signal xin : std_logic_vector(31 downto 0);
signal yin : std_logic_vector(31 downto 0);
signal cin : std_logic_vector(3 downto 0);
begin
 alu_map : alu_32 port map (x => xin, y => yin, control => cin, cout => cout, zero => zero, result => result, overflow => overflow);
 
 test_proc : process
 begin

 -- add
 cin <= "0000";
 xin <= x"00003452";
 yin <= x"00001368";
 wait for 5 ns;

 cin <= "0000";
 xin <= x"70938302";
 yin <= x"70003452";
 wait for 5 ns;

 -- addu
 cin <= "0001";
 xin <= x"00003452";
 yin <= x"00001368";
 wait for 5 ns;

 cin <= "0001";
 xin <= x"09938302";
 yin <= x"10003452";
 wait for 5 ns;

 -- sub
 cin <= "0010";
 xin <= x"00003452";
 yin <= x"00001368";
 wait for 5 ns;

 cin <= "0000";
 xin <= x"70938302";
 yin <= x"70003452";
 wait for 5 ns;

 -- subu
 cin <= "0011";
 xin <= x"00003452";
 yin <= x"00001368";
 wait for 5 ns;

 cin <= "0001";
 xin <= x"09938302";
 yin <= x"10003452";
 wait for 5 ns;

 -- and
 cin <= "0100";
 xin <= x"00001368";
 yin <= x"00003468";
 wait for 5 ns;

 -- or
 cin <= "0101";
 xin <= x"00001368";
 yin <= x"00003468";
 wait for 5 ns;

 -- sll
 cin <= "0110";
 xin <= x"00001368";
 yin <= x"00000003";
 wait for 5 ns;

 --slt
 cin <= "1100";
 xin <= x"00003452";
 yin <= x"F0001368";
 wait for 5 ns;

 cin <= "1100";
 xin <= x"00001368";
 yin <= x"00003452";
 wait for 5 ns;

 cin <= "1100";
 xin <= x"00001368";
 yin <= x"00001368";
 wait for 5 ns;

 --sltu
 cin <= "1101";
 xin <= x"00001368";
 yin <= x"F0001368";
 wait for 5 ns;

 cin <= "1101";
 xin <= x"00001368";
 yin <= x"00003468";
 wait for 5 ns;

 wait;

end process;

end architecture structural;
