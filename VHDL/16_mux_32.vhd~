library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity 16_mux_32 is
port (
control	: in std_logic_vector (3 downto 0);
a : in std_logic_vector (31 downto 0);
b : in std_logic_vector (31 downto 0);
c : in std_logic_vector (31 downto 0);
d : in std_logic_vector (31 downto 0);
e : in std_logic_vector (31 downto 0);
f : in std_logic_vector (31 downto 0);
g : in std_logic_vector (31 downto 0);
h : in std_logic_vector (31 downto 0);
i : in std_logic_vector (31 downto 0);
j : in std_logic_vector (31 downto 0);
k : in std_logic_vector (31 downto 0);
l : in std_logic_vector (31 downto 0);
m : in std_logic_vector (31 downto 0);
n : in std_logic_vector (31 downto 0);
o : in std_logic_vector (31 downto 0);
p : in std_logic_vector (31 downto 0);
result : out std_logic_vector (31 downto 0)
);
end 16_mux_32;

architecture structural of 16_mux_32 is 
component mux_32 is 
  port (
	sel   : in  std_logic;
	src0  : in  std_logic_vector(31 downto 0);
	src1  : in  std_logic_vector(31 downto 0);
	z	    : out std_logic_vector(31 downto 0)
  );
end component;
signal zero : std_logic_vector (31 downto 0);
signal one : std_logic_vector (31 downto 0);
signal two : std_logic_vector (31 downto 0);
signal three : std_logic_vector (31 downto 0);
signal four : std_logic_vector (31 downto 0);
signal five : std_logic_vector (31 downto 0);
signal six : std_logic_vector (31 downto 0);
signal seven : std_logic_vector (31 downto 0);
signal eight : std_logic_vector (31 downto 0);
signal nine : std_logic_vector (31 downto 0);
signal ten : std_logic_vector (31 downto 0);
signal eleven : std_logic_vector (31 downto 0);
signal twelve : std_logic_vector (31 downto 0);
signal thirteen : std_logic_vector (31 downto 0);

begin
mux0_map : mux_32 port map (sel => control(0), src0 => a, src1 => b, z => zero);
mux1_map : mux_32 port map (sel => control(0), src0 => c, src1 => d, z => one);
mux2_map : mux_32 port map (sel => control(0), src0 => e, src1 => f, z => two);
mux3_map : mux_32 port map (sel => control(0), src0 => g, src1 => h, z => three);
mux4_map : mux_32 port map (sel => control(0), src0 => i, src1 => j, z => four);
mux5_map : mux_32 port map (sel => control(0), src0 => k, src1 => l, z => five);
mux6_map : mux_32 port map (sel => control(0), src0 => m, src1 => n, z => six);
mux7_map : mux_32 port map (sel => control(0), src0 => o, src1 => p, z => seven);
mux8_map : mux_32 port map (sel => control(1), src0 => zero, src1 => one, z => eight);
mux9_map : mux_32 port map (sel => control(1), src0 => two, src1 => three, z => nine);
mux10_map : mux_32 port map (sel => control(1), src0 => four, src1 => five, z => ten);
mux11_map : mux_32 port map (sel => control(1), src0 => six, src1 => seven, z => eleven);
mux12_map : mux_32 port map (sel => control(2), src0 => eight, src1 => nine, z => twelve);
mux13_map : mux_32 port map (sel => control(2), src0 => ten, src1 => eleven, z => thirteen);
mux15_map : mux_32 port map (sel => control(3), src0 => twelve, src1 => thirteen, z => result);
end structural;

