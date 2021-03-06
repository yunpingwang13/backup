library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity oct_mux is
port (
control	: in std_logic_vector (3 downto 0);
a : in std_logic;
b : in std_logic;
c : in std_logic;
d : in std_logic;
e : in std_logic;
f : in std_logic;
g : in std_logic;
h : in std_logic;
i : in std_logic;
j : in std_logic;
k : in std_logic;
l : in std_logic;
m : in std_logic;
n : in std_logic;
o : in std_logic;
p : in std_logic;
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
signal six : std_logic;
signal seven : std_logic;
signal eight : std_logic;
signal nine : std_logic;
signal ten : std_logic;
signal eleven : std_logic;
signal twelve : std_logic;
signal thirteen : std_logic;

begin
mux0_map : mux port map (sel => control(0), src0 => a, src1 => b, z => zero);
mux1_map : mux port map (sel => control(0), src0 => c, src1 => d, z => one);
mux2_map : mux port map (sel => control(0), src0 => e, src1 => f, z => two);
mux3_map : mux port map (sel => control(0), src0 => g, src1 => h, z => three);
mux4_map : mux port map (sel => control(0), src0 => i, src1 => j, z => four);
mux5_map : mux port map (sel => control(0), src0 => k, src1 => l, z => five);
mux6_map : mux port map (sel => control(0), src0 => m, src1 => n, z => six);
mux7_map : mux port map (sel => control(0), src0 => o, src1 => p, z => seven);
mux8_map : mux port map (sel => control(1), src0 => zero, src1 => one, z => eight);
mux9_map : mux port map (sel => control(1), src0 => two, src1 => three, z => nine);
mux10_map : mux port map (sel => control(1), src0 => four, src1 => five, z => ten);
mux11_map : mux port map (sel => control(1), src0 => six, src1 => seven, z => eleven);
mux12_map : mux port map (sel => control(2), src0 => eight, src1 => nine, z => twelve);
mux13_map : mux port map (sel => control(2), src0 => ten, src1 => eleven, z => thirteen);
mux15_map : mux port map (sel => control(3), src0 => twelve, src1 => thirteen, z => result);
end structural;

