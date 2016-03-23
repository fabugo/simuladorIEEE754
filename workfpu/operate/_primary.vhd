library verilog;
use verilog.vl_types.all;
entity operate is
    port(
        moves           : in     vl_logic_vector(4 downto 0);
        Am              : in     vl_logic_vector(9 downto 0);
        Bm              : in     vl_logic_vector(9 downto 0);
        As              : in     vl_logic;
        Bs              : in     vl_logic;
        arround         : out    vl_logic;
        carry           : out    vl_logic;
        Rm              : out    vl_logic_vector(10 downto 0)
    );
end operate;
