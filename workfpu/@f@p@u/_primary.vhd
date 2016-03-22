library verilog;
use verilog.vl_types.all;
entity FPU is
    port(
        Asem            : in     vl_logic_vector(15 downto 0);
        Bsem            : in     vl_logic_vector(15 downto 0);
        Rsem            : out    vl_logic_vector(15 downto 0)
    );
end FPU;
