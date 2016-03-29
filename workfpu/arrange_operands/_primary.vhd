library verilog;
use verilog.vl_types.all;
entity arrange_operands is
    port(
        Asem            : in     vl_logic_vector(15 downto 0);
        Bsem            : in     vl_logic_vector(15 downto 0);
        As              : out    vl_logic;
        Bs              : out    vl_logic;
        moves           : out    vl_logic_vector(4 downto 0);
        swap            : out    vl_logic;
        exp             : out    vl_logic_vector(4 downto 0);
        Am              : out    vl_logic_vector(9 downto 0);
        Bm              : out    vl_logic_vector(9 downto 0)
    );
end arrange_operands;
