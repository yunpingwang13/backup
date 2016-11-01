library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity alu is
port (
x : in std_logic;
y : in std_logic;
control : in std_logic_vector(2 downto 0);
cout : out std_logic;
zero : out std_logic;
result : out std_logic
);
end alu;

architecture structural of alu is
component oct_mux is
port (
control	: in std_logic_vector(2 downto 0);
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
end component;
component fulladder is
port (
x : in std_logic;
y : in std_logic;
c : in std_logic;
z : out std_logic;
cout : out std_logic
);
end component;
component mux is
  port (
	sel	  : in	std_logic;
	src0  :	in	std_logic;
	src1  :	in	std_logic;
	z	  : out std_logic
  );
end component;
signal addo : std_logic;
signal addr : std_logic;
signal addim : std_logic;
signal yim : std_logic;
signal andr : std_logic;
signal xorr : std_logic;
signal orr : std_logic;
signal srlr : std_logic;
signal sltim : std_logic;
signal sltr : std_logic;
signal temp : std_logic;
begin
 yim_map : not_gate port map (x => y, z=> yim);
 addim_map : mux port map (sel => control(0), src0 => y, src1 => yim, z => addim);
 addr_map : fulladder port map (x => x, y => addim, c => control(0), z => addr, cout => cout);
 andr_map : and_gate port map (x => x, y => y, z => andr);
 xorr_map : xor_gate port map (x => x, y => y, z => xorr);
 orr_map : or_gate port map (x => x, y => y, z => orr);
 srlr_map : mux port map (sel => y, src0 => x, src1 =>'0', z => srlr);
 sltim_map : not_gate port map (x => x, z=> sltim);
 sltr_map : and_gate port map (x => sltim, y => y, z=> sltr);
 muxr_map : oct_mux port map (a => addr, b => addr, c => andr, d => xorr, e => orr, f => srlr, g => sltr, h => sltr, control => control, result => temp);
 zero_map : not_gate port map (x => temp, z => zero);
 result_map : result <= temp;
end architecture structural;
