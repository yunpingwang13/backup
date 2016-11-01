library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all;
use work.eecs361.all; 

entity alu_32 is
port (
x : in std_logic_vector(31 downto 0);
y : in std_logic_vector(31 downto 0);
control : in std_logic_vector (3 downto 0);
cout : out std_logic;
overflow : out std_logic;
zero : out std_logic;
result : out std_logic_vector(31 downto 0)
);
end alu_32;

architecture structural of alu_32 is
component fulladder_32 is
  port ( 
    x       : in  std_logic_vector(31 downto 0); 
    y       : in  std_logic_vector(31 downto 0); 
    c       : in  std_logic; 
    z       : out std_logic_vector(31 downto 0); 
 carry : out std_logic;
    overflow    : out std_logic 
); 
end component;
component sll_32 is
port (
x : in std_logic_vector(31 downto 0);
y : in std_logic_vector(31 downto 0);
result : out std_logic_vector(31 downto 0)
);
end component;
component 16_mux_32 is
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
end component;
component 16_mux is
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
end component;
signal subflag : std_logic;
signal yim : std_logic_vector(31 downto 0);
signal addim : std_logic_vector(31 downto 0);
signal addr : std_logic_vector(31 downto 0);
signal andr : std_logic_vector(31 downto 0);
signal orr : std_logic_vector(31 downto 0);
signal sllr : std_logic_vector(31 downto 0);
signal sltr : std_logic_vector(31 downto 0);
signal sltur : std_logic_vector(31 downto 0);
signal carry : std_logic;
signal diffsign0 : std_logic;
signal diffsign1 : std_logic;
signal sltim0 : std_logic;
signal sltim1 : std_logic;
signal sltim2 : std_logic;
signal diff : std_logic_vector(31 downto 0);
signal diff0 : std_logic;
signal diff1 : std_logic;
signal overflowflag : std_logic;
signal overflowflag1 : std_logic;
signal overflowflag2 : std_logic;
signal overflowflag3 : std_logic;
signal tempresult : std_logic_vector(31 downto 0);
signal tempzero : std_logic_vector(31 downto 0);
begin
 -- subflag
 subflag_map : or_gate port map (x => control(1), y => control(3), z => subflag);
 -- not y - DONE
 yim_map : not_gate_32 port map (x => y, z => yim);
 addim_map : mux_32 port map (sel => subflag, src0 => y, src1 => yim, z => addim);
 -- 32 bit full adder - DONE
 fulladder_map : fulladder_32 port map (x => x, y => addim, c => control(0), z => addr, overflow => overflowflag, carry => carry);
 -- and - DONE
 and_map : and_gate_32 port map (x => x, y => y, z => andr);
 -- or - DONE
 or_map : or_gate_32 port map (x => x, y => y, z => orr);
 -- sll - DONE
 sll_map : sll_32 port map (x => x, y => y, result => sllr);
 -- slt - DONE
 diffsign0_map : not_gate port map (x => y(31), z => diffsign0);
 diffsign1_map : and_gate port map (x => x(31), y => diffsign0, z=> diffsign1);
 slt0_map : xnor_gate port map (x => x(31), y => y(31), z => sltim0);
 diff_map : fulladder_32 port map (x => x, y => yim, c => '1', z => diff, overflow => diff0, carry => diff1);
 slt1_map : and_gate port map (x => sltim0, y => diff(31), z => sltim1);
 slt2_map : or_gate port map (x => diffsign1, y => sltim1, z => sltim2);
 sltr_map : mux_32 port map (sel => sltim2,
  src0 => "00000000000000000000000000000000",
  src1 => "00000000000000000000000000000001",
  z => sltr);
 -- sltu - DONE
 sltur_map : mux_32 port map (sel => diff1,
  src1 => "00000000000000000000000000000001",
  src0 => "00000000000000000000000000000000",
  z => sltur);
 -- result
 result_map : 16_mux_32 port map (a => addr, b => addr, c => addr, d => addr, e => andr, f => orr, g => sllr, h => "00000000000000000000000000000000", i => "00000000000000000000000000000000", j => "00000000000000000000000000000000", k => "00000000000000000000000000000000", l => "00000000000000000000000000000000", m => sltr, n => sltur, o => "00000000000000000000000000000000", p => "00000000000000000000000000000000", control => control, result => tempresult);
 temp_map : result <= tempresult;
 -- overflow
 overflow1_map : and_gate port map (x => x(31), y => y(31), z => overflowflag1);
 overflow2_map : xor_gate port map (x => x(31), y => addr(31), z => overflowflag2);
 overflow3_map : and_gate port map (x => overflowflag1, y => overflowflag2, z => overflowflag3);
 overflow_map : 16_mux port map (a => overflowflag3, b => '0', c => overflowflag3, d => '0', e => '0', f => '0', g => '0', h => '0', i => '0',j => '0',k => '0',l => '0',m => '0',n => '0',o => '0',p => '0',control => control, result => overflow);
 -- carry
 carry_map : 16_mux port map (a => carry, b => carry, c => carry, d => carry, e => '0', f => '0', g => '0', h => '0', i => '0', j => '0',k => '0',l => '0',m => '0',n => '0',o => '0',p => '0',control => control, result => cout);
 -- zero
 zero0_map : or_gate port map (x => tempresult(0), y => tempresult(1), z => tempzero(1));
 zero_map : for i in 2 to 31 generate
  zerogen_map : or_gate port map (x => tempresult(i), y => tempzero(i-1), z => tempzero(i));
 end generate zero_map;
 zero31_map : not_gate port map (x => tempzero(31), z => zero);
end structural;
