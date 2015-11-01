library verilog;
use verilog.vl_types.all;
entity DecrementTime is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        inputTime       : in     vl_logic_vector(7 downto 0);
        wrtEn           : in     vl_logic;
        decEnable       : in     vl_logic;
        outputTime      : out    vl_logic_vector(7 downto 0);
        isZero          : out    vl_logic
    );
end DecrementTime;
