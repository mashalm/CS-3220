library verilog;
use verilog.vl_types.all;
entity ClockDivider is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        isFlashFreq     : in     vl_logic;
        clockOut        : out    vl_logic
    );
end ClockDivider;
