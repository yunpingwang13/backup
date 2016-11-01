library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity oct_mux_32 is
port (
control	: in std_logic_vector (2 downto 0);
a : in std_logic_vector (31 downto 0);
b : in std_logic_vector (31 downto 0);
c : in std_logic_vector (31 downto 0);
d : in std_logic_vector (31 downto 0);
e : in std_logic_vector (31 downto 0);
f : in std_logic_vector (31 downto 0);
g : in std_logic_vector (31 downto 0);
h : in std_logic_vector (31 downto 0);
result : out std_logic_vector (31 downto 0)
);
end oct_mux_32;

architecture structural of oct_mux_32 is 
component mux_32 is 
  port (
	sel   : in  std_logic;
	src0  : in  std_logic_vector(31 downto 0);
	src1  : in  std_logic_vector(31 downto 0);
	z	    : out std_logic_vector(31 downto 0)
  );
end component;
signal bit0 : std_logic;
signal bit1 : std_logic;
signal bit2 : std_logic;
signal zero : std_logic_vector (31 downto 0);
signal one : std_logic_vector (31 downto 0);
signal two : std_logic_vector (31 downto 0);
signal three : std_logic_vector (31 downto 0);
signal four : std_logic_vector (31 downto 0);
signal five : std_logic_vector (31 downto 0);

begin
mux0_map : mux_32 port map (sel => control(0), src0 => a, src1 => b, z => zero);
mux1_map : mux_32 port map (sel => control(0), src0 => c, src1 => d, z => one);
mux2_map : mux_32 port map (sel => control(0), src0 => e, src1 => f, z => two);
mux3_map : mux_32 port map (sel => control(0), src0 => g, src1 => h, z => three);
mux4_map : mux_32 port map (sel => control(1), src0 => zero, src1 => one, z => four);
mux5_map : mux_32 port map (sel => control(1), src0 => two, src1 => three, z => five);
mux6_map : mux_32 port map (sel => control(2), src0 => four, src1 => five, z => result);
end structural;

