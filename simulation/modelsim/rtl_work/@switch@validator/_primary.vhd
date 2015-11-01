library verilog;
use verilog.vl_types.all;
entity SwitchValidator is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        readSwEn        : in     vl_logic;
        switches        : in     vl_logic_vector(7 downto 0);
        swVal           : out    vl_logic_vector(7 downto 0)
    );
end SwitchValidator;
