library verilog;
use verilog.vl_types.all;
entity arrange_result is
    port(
        exp             : in     vl_logic_vector(4 downto 0);
        arround         : in     vl_logic;
        Rm              : in     vl_logic_vector(9 downto 0);
        As              : in     vl_logic;
        Bs              : in     vl_logic;
        swap            : in     vl_logic;
        carry           : in     vl_logic;
        Rsem            : out    vl_logic_vector(15 downto 0)
    );
end arrange_result;
