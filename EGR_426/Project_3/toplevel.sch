VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLK
        SIGNAL RESET
        SIGNAL OUTPUT(7:0)
        PORT Input CLK
        PORT Input RESET
        PORT Output OUTPUT(7:0)
        BEGIN BLOCKDEF cpu
            TIMESTAMP 2011 3 16 22 9 25
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -156 384 -156 
            RECTANGLE N 320 -168 384 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 cpu
            PIN clk CLK
            PIN reset RESET
            PIN Inport0(7:0)
            PIN Inport1(7:0)
            PIN Outport0(7:0) OUTPUT(7:0)
            PIN Outport1(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1088 1440 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 1056 1216 1088 1216
        END BRANCH
        IOMARKER 1056 1216 CLK R180 28
        BEGIN BRANCH RESET
            WIRE 1056 1280 1088 1280
        END BRANCH
        IOMARKER 1056 1280 RESET R180 28
        BEGIN BRANCH OUTPUT(7:0)
            WIRE 1472 1216 1504 1216
        END BRANCH
        IOMARKER 1504 1216 OUTPUT(7:0) R0 28
    END SHEET
END SCHEMATIC
