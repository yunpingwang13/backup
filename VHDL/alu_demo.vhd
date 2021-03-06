library ieee;
use iee.std_logic_1164.all;

entity alu_demo is
port(
z : out std_logic;
cout : out std_logic;
zero : out std_logic;
);
end alu_demo;

architecture structural of alu_demo is
component alu is
port (
x : in std_logic;
y : in std_logic;
control : in std_logic_vector(2 downto 0);
cout : out std_logic;
zero : out std_logic;
result : out std_logic
);
end component alu;
signal xin : std_logic;
signal yin : std_logic;
signal cin : std_logic_vector(2 downto 0);
begin
 alu_map : alu port map (x => xin, y => yin, control => cin, cout => cout, zero => zero, result => z);
 
 test_proc : process
 begin
 -- add
 "000" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "000" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 -- sub
 "001" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "001" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 --slt
 "010" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "010" => cin;
 '0' => xin;
 '1' => yin;
 wait for 5 ns;

 --sltu
 "011" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "011" => cin;
 '0' => xin;
 '1' => yin;
 wait for 5 ns;

 -- and
 "100" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "100" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 -- or
 "101" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 "101" => cin;
 '0' => xin;
 '0' => yin;
 wait for 5 ns;

 -- xor
 "110" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 "110" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 -- slr
 "111" => cin;
 '1' => xin;
 '0' => yin;
 wait for 5 ns;

 "111" => cin;
 '1' => xin;
 '1' => yin;
 wait for 5 ns;

 "111" => cin;
 '0' => xin;
 '1' => yin;
 wait for 5 ns;

 wait;

end process;

end architecture structural;
