library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity oct_mux is
port (
control	: in std_logic_vector (2 downto 0);
a : in std_logic;
b : in std_logic;
c : in std_logic;
d : in std_logic;
e : in std_logic;
f : in std_logic;
g : in std_logic;
h : in std_logic;
result : out std_logic
);
end oct_mux;

architecture structural of oct_mux is
component mux is 
  port (
	sel	  : in	std_logic;
	src0  :	in	std_logic;
	src1  :	in	std_logic;
	z	  : out std_logic
  );
end component;
signal zero : std_logic;
signal one : std_logic;
signal two : std_logic;
signal three : std_logic;
signal four : std_logic;
signal five : std_logic;

begin
mux0_map : mux port map (sel => control(0), src0 => a, src1 => b, z => zero);
mux1_map : mux port map (sel => control(0), src0 => c, src1 => d, z => one);
mux2_map : mux port map (sel => control(0), src0 => e, src1 => f, z => two);
mux3_map : mux port map (sel => control(0), src0 => g, src1 => h, z => three);
mux4_map : mux port map (sel => control(1), src0 => zero, src1 => one, z => four);
mux5_map : mux port map (sel => control(1), src0 => two, src1 => three, z => five);
mux6_map : mux port map (sel => control(2), src0 => four, src1 => five, z => result);
end structural;

