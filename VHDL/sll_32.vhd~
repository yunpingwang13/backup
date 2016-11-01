library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 
use work.eecs361.all;

entity sll_32 is
port (
x : in std_logic_vector(31 downto 0);
y : in std_logic_vector(31 downto 0);
result : out std_logic_vector(31 downto 0)
);
end sll_32;

architecture structural of sll_32 is
signal stage0 : std_logic_vector(31 downto 0);
signal stage1 : std_logic_vector(31 downto 0);
signal stage2 : std_logic_vector(31 downto 0);
signal stage3 : std_logic_vector(31 downto 0);
begin

 stage0_map : for i in 1 to 31 generate
  stage0i_map : mux port map (sel => y(0), src0 => x(i), src1 => x(i-1), z => stage0(i));
 end generate stage0_map;
 stage031_map : mux port map (sel => y(0), src0 => x(0), src1 => '0', z => stage0(0));

 stage1_map : for i in 2 to 31 generate
  stage1i_map : mux port map (sel => y(1), src0 => stage0(i), src1 => stage0(i-2), z => stage1(i));
 end generate stage1_map;
 stage1r_map : for i in 0 to 1 generate
  stage1ri_map : mux port map (sel => y(1), src0 => stage0(i), src1 => '0', z => stage1(i));
 end generate stage1r_map;

 stage2_map : for i in 4 to 31 generate
  stage2i_map : mux port map (sel => y(2), src0 => stage1(i), src1 => stage1(i-4), z => stage2(i));
 end generate stage2_map;
 stage2r_map : for i in 0 to 3 generate
  stage2ri_map : mux port map (sel => y(2), src0 => stage1(i), src1 => '0', z => stage2(i));
 end generate stage2r_map;

 stage3_map : for i in 8 to 31 generate
  stage3i_map : mux port map (sel => y(3), src0 => stage2(i), src1 => stage2(i-8), z => stage3(i));
 end generate stage3_map;
 stage3r_map : for i in 0 to 7 generate
  stage3ri_map : mux port map (sel => y(3), src0 => stage2(i), src1 => '0', z => stage3(i));
 end generate stage3r_map;

 stage4_map : for i in 16 to 31 generate
  stage4i_map : mux port map (sel => y(4), src0 => stage3(i), src1 => stage3(i-16), z => result(i));
 end generate stage4_map;
 stage4r_map : for i in 0 to 15 generate
  stage4ri_map : mux port map (sel => y(4), src0 => stage3(i), src1 => '0', z => result(i));
 end generate stage4r_map;

end architecture structural;
