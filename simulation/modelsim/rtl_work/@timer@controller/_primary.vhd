library verilog;
use verilog.vl_types.all;
entity TimerController is
    generic(
        \Reset\         : integer := 0;
        SetSec          : integer := 1;
        SetMin          : integer := 2;
        SetTimer        : integer := 3;
        RunTimer        : integer := 4;
        Flash           : integer := 5;
        true            : vl_logic := Hi1;
        false           : vl_logic := Hi0
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        set             : in     vl_logic;
        startStop       : in     vl_logic;
        isTimeFlat      : in     vl_logic;
        swSecEn         : out    vl_logic;
        swMinEn         : out    vl_logic;
        decEn           : out    vl_logic;
        flashEn         : out    vl_logic;
        inRunTimerState : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \Reset\ : constant is 1;
    attribute mti_svvh_generic_type of SetSec : constant is 1;
    attribute mti_svvh_generic_type of SetMin : constant is 1;
    attribute mti_svvh_generic_type of SetTimer : constant is 1;
    attribute mti_svvh_generic_type of RunTimer : constant is 1;
    attribute mti_svvh_generic_type of Flash : constant is 1;
    attribute mti_svvh_generic_type of true : constant is 1;
    attribute mti_svvh_generic_type of false : constant is 1;
end TimerController;
