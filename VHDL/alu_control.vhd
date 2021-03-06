library ieee; 
use ieee.std_logic_1164.all; 
use work.eecs361_gates.all; 

entity alu_control is
port (
aluop: in std_logic_vector (2 downto 0);
func: in std_logic_vector (5 downto 0);
control : out std_logic_vector (3 downto 0)
);
end alu_control;

architecture structural of alu_control is 

component mux is 
  port (
	sel	  : in	std_logic;
	src0  :	in	std_logic;
	src1  :	in	std_logic;
	z	  : out std_logic
  );
end component;

signal result03: std_logic;
signal result020: std_logic;
signal result021: std_logic;
signal result022: std_logic;
signal result010: std_logic;
signal result011: std_logic;
signal result000: std_logic;
signal result001: std_logic;
signal result002: std_logic;
signal result003: std_logic;
signal result004: std_logic;
signal result005: std_logic;
signal result0: std_logic_vector (3 downto 0);
signal result1: std_logic_vector (3 downto 0);
signal addi_flag0: std_logic;
signal addi_flag1: std_logic;

begin
 -- r type
 -- result(3)
 result030_map: not_gate port map (x => func(1), z => result03);
 result03_map: and_gate port map (x => func(5), y => result03, z => result0(3));
 -- result(2)
 result020_map: not_gate port map (x => func(2), z => result020);
 result021_map: or_gate port map (x => func(0), y => func(5), z => result021);
 result022_map: and_gate port map (x => result020, y => result021, z => result022);
 result02_map: or_gate port map (x => func(4), y => result022, z => result0(2));
 -- result(1)
 result010_map: and_gate port map (x => func(5), y => func(2), z => result010);
 result011_map: and_gate port map (x => func(3), y => func(1), z => result011);
 result01_map: or_gate port map (x => result010, y => result011, z => result0(1));
 -- result(0)
 result000_map: xnor_gate port map (x => func(1), y => func(2), z => result000);
 result001_map: and_gate port map (x => result000, y => func(0), z => result001);
 result002_map: xnor_gate port map (x => func(5), y => func(4), z => result002);
 result003_map: and_gate port map (x => result002, y => func(1), z => result003);
 result004_map: not_gate port map (x => func(0), z => result004);
 result005_map: and_gate port map (x => result003, y => result004, z => result005);
 result00_map: or_gate port map (x => result001, y => result005, z => result0(0));
 -- addi
 addi1_map: nor_gate port map (x => aluop(0), y => aluop(1), z => addi_flag1);
 result10_map: mux port map (sel => addi_flag1, src0 => result0(0), src1 => '0', z => result1(0));
 result11_map: mux port map (sel => addi_flag1, src0 => result0(1), src1 => '0', z => result1(1));
 result12_map: mux port map (sel => addi_flag1, src0 => result0(2), src1 => '0', z => result1(2));
 result13_map: mux port map (sel => addi_flag1, src0 => result0(3), src1 => '0', z => result1(3));
 -- branch
 branch01_map: for i in 0 to 1 generate
  branch01_gen_map: mux port map (sel => aluop(2), src0 => result1(i), src1 => aluop(i), z => control(i));
 end generate branch01_map;
 branch2_map: mux port map (sel => aluop(2), src0 => result1(2), src1 => '0', z => control(2));
 branch3_map: mux port map (sel => aluop(2), src0 => result1(3), src1 => '1', z => control(3));
end structural;

