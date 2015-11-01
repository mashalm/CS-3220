library verilog;
use verilog.vl_types.all;
entity flashLights is
    port(
        clk             : in     vl_logic;
        flashEn         : in     vl_logic;
        ledr            : out    vl_logic_vector(9 downto 0)
    );
end flashLights;
