library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 
 
entity fulladder_32 is 
  port ( 
    x       : in  std_logic_vector(31 downto 0); 
    y       : in  std_logic_vector(31 downto 0); 
    c       : in  std_logic; 
    z       : out std_logic_vector(31 downto 0);
 carry : out std_logic;
    overflow    : out std_logic 
); 
end fulladder_32; 
 
architecture structural of fulladder_32 is
component fulladder is
  port ( 
    x       : in  std_logic; 
    y       : in  std_logic; 
    c       : in  std_logic; 
    z       : out std_logic; 
    cout    : out std_logic 
  ); 
end component fulladder;
signal carryover : std_logic_vector(31 downto 0);
begin 
 fulladder0_map : fulladder port map (x => x(0), y => y(0), c => c, z => z(0), cout => carryover(0));
 fulladderi_map: for i in 1 to 30 generate
  fulladderf_map : fulladder port map (x => x(i), y => y(i), c => carryover(i-1), z => z(i), cout => carryover(i));
 end generate fulladderi_map;
 fulladder31_map : fulladder port map (x => x(31), y => y(31), c => carryover (30), z => z(31), cout => carryover(31));
 carry_map: carry <= carryover(31);
 overflow_map : xor_gate port map (x => carryover(31), y => carryover(30), z => overflow);
end architecture structural;
