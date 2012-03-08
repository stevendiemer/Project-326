<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="HS" />
        <signal name="VS" />
        <signal name="XLXN_178" />
        <signal name="XLXN_180" />
        <signal name="XLXN_22" />
        <signal name="XLXN_189" />
        <signal name="green_2" />
        <signal name="green_1" />
        <signal name="green_0" />
        <signal name="blue_0" />
        <signal name="blue_1" />
        <signal name="red_2" />
        <signal name="red_1" />
        <signal name="red_0" />
        <signal name="XLXN_23" />
        <signal name="XLXN_179" />
        <signal name="XLXN_221" />
        <signal name="XLXN_227" />
        <signal name="XLXN_232" />
        <signal name="XLXN_184" />
        <signal name="left_in" />
        <signal name="right_in" />
        <signal name="up_in" />
        <signal name="down_in" />
        <signal name="XLXN_246" />
        <signal name="XLXN_247" />
        <signal name="XLXN_248" />
        <signal name="XLXN_237(9:0)" />
        <signal name="XLXN_229(10:0)" />
        <signal name="XLXN_230(10:0)" />
        <signal name="XLXN_231" />
        <signal name="XLXN_233" />
        <signal name="XLXN_254" />
        <signal name="location_left(9:0)">
        </signal>
        <signal name="location_right(9:0)">
        </signal>
        <signal name="XLXN_263(10:0)" />
        <signal name="XLXN_264(10:0)" />
        <signal name="XLXN_266" />
        <signal name="XLXN_267" />
        <signal name="XLXN_268" />
        <signal name="XLXN_271" />
        <signal name="XLXN_276(9:0)" />
        <signal name="XLXN_277(9:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Output" name="green_2" />
        <port polarity="Output" name="green_1" />
        <port polarity="Output" name="green_0" />
        <port polarity="Output" name="blue_0" />
        <port polarity="Output" name="blue_1" />
        <port polarity="Output" name="red_2" />
        <port polarity="Output" name="red_1" />
        <port polarity="Output" name="red_0" />
        <port polarity="Input" name="left_in" />
        <port polarity="Input" name="right_in" />
        <port polarity="Input" name="up_in" />
        <port polarity="Input" name="down_in" />
        <blockdef name="vga_controller_640_60">
            <timestamp>2012-3-6T3:29:29</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clock_25mhz">
            <timestamp>2012-3-6T3:29:23</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="static_background">
            <timestamp>2012-3-6T3:29:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="display_driver">
            <timestamp>2012-3-2T4:8:27</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="576" />
        </blockdef>
        <blockdef name="clock_250Hz">
            <timestamp>2012-3-6T3:28:31</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="coins">
            <timestamp>2012-3-8T6:38:25</timestamp>
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="448" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
        </blockdef>
        <blockdef name="game_player">
            <timestamp>2012-3-8T6:27:37</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-512" height="640" />
        </blockdef>
        <block symbolname="clock_25mhz" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_221" name="reset" />
            <blockpin signalname="XLXN_268" name="pixel_clk" />
        </block>
        <block symbolname="vga_controller_640_60" name="XLXI_1">
            <blockpin signalname="XLXN_221" name="rst" />
            <blockpin signalname="XLXN_268" name="pixel_clk" />
            <blockpin signalname="HS" name="HS" />
            <blockpin signalname="VS" name="VS" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_264(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_263(10:0)" name="vcount(10:0)" />
        </block>
        <block symbolname="static_background" name="XLXI_4">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_264(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_263(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_178" name="r" />
            <blockpin signalname="XLXN_179" name="g" />
            <blockpin signalname="XLXN_180" name="b" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_189" name="I" />
            <blockpin signalname="blue_0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_189" name="I" />
            <blockpin signalname="blue_1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_1" name="O" />
        </block>
        <block symbolname="display_driver" name="XLXI_75">
            <blockpin signalname="XLXN_178" name="r_back" />
            <blockpin signalname="XLXN_179" name="g_back" />
            <blockpin signalname="XLXN_180" name="b_back" />
            <blockpin signalname="XLXN_246" name="r_char" />
            <blockpin signalname="XLXN_247" name="g_char" />
            <blockpin signalname="XLXN_248" name="b_char" />
            <blockpin signalname="XLXN_23" name="r_buf" />
            <blockpin signalname="XLXN_22" name="g_buf" />
            <blockpin signalname="XLXN_189" name="b_buf" />
            <blockpin signalname="XLXN_231" name="r_coin" />
            <blockpin signalname="XLXN_232" name="g_coin" />
            <blockpin signalname="XLXN_233" name="b_coin" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_221" name="O" />
        </block>
        <block symbolname="clock_250Hz" name="XLXI_78">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_221" name="reset" />
            <blockpin signalname="XLXN_227" name="clk_250" />
        </block>
        <block symbolname="game_player" name="XLXI_81">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="left_in" name="left" />
            <blockpin signalname="right_in" name="right" />
            <blockpin signalname="up_in" name="up" />
            <blockpin signalname="down_in" name="down" />
            <blockpin signalname="XLXN_227" name="move_clock" />
            <blockpin signalname="XLXN_264(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_263(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_246" name="r" />
            <blockpin signalname="XLXN_247" name="g" />
            <blockpin signalname="XLXN_248" name="b" />
            <blockpin signalname="location_left(9:0)" name="location_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="location_right(9:0)" />
        </block>
        <block symbolname="coins" name="XLXI_79">
            <blockpin signalname="XLXN_231" name="r_coin" />
            <blockpin signalname="XLXN_232" name="g_coin" />
            <blockpin signalname="XLXN_233" name="b_coin" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_267" name="reset" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_264(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_263(10:0)" name="vcount(10:0)" />
            <blockpin signalname="location_left(9:0)" name="char_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="char_right(9:0)" />
        </block>
        <block symbolname="inv" name="XLXI_80">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_267" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="224" y1="928" y2="928" x1="144" />
            <wire x2="704" y1="928" y2="928" x1="224" />
            <wire x2="224" y1="928" y2="1440" x1="224" />
            <wire x2="704" y1="1440" y2="1440" x1="224" />
        </branch>
        <branch name="reset">
            <wire x2="256" y1="992" y2="992" x1="176" />
        </branch>
        <branch name="HS">
            <wire x2="1584" y1="672" y2="672" x1="1504" />
        </branch>
        <branch name="VS">
            <wire x2="1584" y1="736" y2="736" x1="1504" />
        </branch>
        <instance x="704" y="1024" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1120" y="960" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1728" y="960" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_178">
            <wire x2="2176" y1="800" y2="800" x1="2112" />
            <wire x2="2176" y1="800" y2="864" x1="2176" />
            <wire x2="2288" y1="864" y2="864" x1="2176" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="2112" y1="928" y2="992" x1="2112" />
            <wire x2="2288" y1="992" y2="992" x1="2112" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2800" y1="1024" y2="1024" x1="2672" />
            <wire x2="2800" y1="1024" y2="1088" x1="2800" />
            <wire x2="2928" y1="1088" y2="1088" x1="2800" />
            <wire x2="2928" y1="1024" y2="1024" x1="2800" />
            <wire x2="2800" y1="960" y2="1024" x1="2800" />
            <wire x2="2928" y1="960" y2="960" x1="2800" />
        </branch>
        <branch name="XLXN_189">
            <wire x2="2800" y1="1184" y2="1184" x1="2672" />
            <wire x2="2800" y1="1184" y2="1248" x1="2800" />
            <wire x2="2928" y1="1248" y2="1248" x1="2800" />
            <wire x2="2928" y1="1184" y2="1184" x1="2800" />
        </branch>
        <branch name="green_2">
            <wire x2="3248" y1="1088" y2="1088" x1="3152" />
        </branch>
        <branch name="green_1">
            <wire x2="3248" y1="1024" y2="1024" x1="3152" />
        </branch>
        <branch name="green_0">
            <wire x2="3248" y1="960" y2="960" x1="3152" />
        </branch>
        <instance x="2928" y="992" name="XLXI_8" orien="R0" />
        <instance x="2928" y="1056" name="XLXI_9" orien="R0" />
        <instance x="2928" y="1120" name="XLXI_10" orien="R0" />
        <branch name="blue_0">
            <wire x2="3248" y1="1184" y2="1184" x1="3152" />
        </branch>
        <branch name="blue_1">
            <wire x2="3248" y1="1248" y2="1248" x1="3152" />
        </branch>
        <instance x="2928" y="1216" name="XLXI_11" orien="R0" />
        <instance x="2928" y="1280" name="XLXI_12" orien="R0" />
        <branch name="red_2">
            <wire x2="3248" y1="864" y2="864" x1="3152" />
        </branch>
        <branch name="red_1">
            <wire x2="3248" y1="800" y2="800" x1="3152" />
        </branch>
        <branch name="red_0">
            <wire x2="3248" y1="736" y2="736" x1="3152" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2800" y1="864" y2="864" x1="2672" />
            <wire x2="2928" y1="864" y2="864" x1="2800" />
            <wire x2="2928" y1="736" y2="736" x1="2800" />
            <wire x2="2800" y1="736" y2="800" x1="2800" />
            <wire x2="2928" y1="800" y2="800" x1="2800" />
            <wire x2="2800" y1="800" y2="864" x1="2800" />
        </branch>
        <instance x="2928" y="768" name="XLXI_5" orien="R0" />
        <instance x="2928" y="896" name="XLXI_7" orien="R0" />
        <instance x="2928" y="832" name="XLXI_6" orien="R0" />
        <instance x="2288" y="1216" name="XLXI_75" orien="R0">
        </instance>
        <branch name="XLXN_179">
            <wire x2="2144" y1="864" y2="864" x1="2112" />
            <wire x2="2144" y1="864" y2="928" x1="2144" />
            <wire x2="2288" y1="928" y2="928" x1="2144" />
        </branch>
        <instance x="256" y="1024" name="XLXI_3" orien="R0" />
        <branch name="XLXN_221">
            <wire x2="496" y1="992" y2="992" x1="480" />
            <wire x2="672" y1="992" y2="992" x1="496" />
            <wire x2="704" y1="992" y2="992" x1="672" />
            <wire x2="496" y1="992" y2="1504" x1="496" />
            <wire x2="704" y1="1504" y2="1504" x1="496" />
            <wire x2="1120" y1="672" y2="672" x1="672" />
            <wire x2="672" y1="672" y2="992" x1="672" />
        </branch>
        <branch name="XLXN_227">
            <wire x2="1744" y1="1440" y2="1440" x1="1088" />
        </branch>
        <instance x="704" y="1536" name="XLXI_78" orien="R0">
        </instance>
        <branch name="XLXN_232">
            <wire x2="2256" y1="2112" y2="2112" x1="2192" />
            <wire x2="2256" y1="1312" y2="2112" x1="2256" />
            <wire x2="2288" y1="1312" y2="1312" x1="2256" />
        </branch>
        <instance x="1744" y="1600" name="XLXI_81" orien="R0">
        </instance>
        <branch name="left_in">
            <wire x2="1744" y1="1184" y2="1184" x1="1376" />
        </branch>
        <branch name="right_in">
            <wire x2="1744" y1="1248" y2="1248" x1="1376" />
        </branch>
        <branch name="up_in">
            <wire x2="1744" y1="1312" y2="1312" x1="1376" />
        </branch>
        <branch name="down_in">
            <wire x2="1744" y1="1376" y2="1376" x1="1376" />
        </branch>
        <branch name="XLXN_246">
            <wire x2="2128" y1="1056" y2="1120" x1="2128" />
            <wire x2="2288" y1="1056" y2="1056" x1="2128" />
        </branch>
        <branch name="XLXN_247">
            <wire x2="2160" y1="1184" y2="1184" x1="2128" />
            <wire x2="2288" y1="1120" y2="1120" x1="2160" />
            <wire x2="2160" y1="1120" y2="1184" x1="2160" />
        </branch>
        <branch name="XLXN_248">
            <wire x2="2192" y1="1248" y2="1248" x1="2128" />
            <wire x2="2288" y1="1184" y2="1184" x1="2192" />
            <wire x2="2192" y1="1184" y2="1248" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="1584" y="672" name="HS" orien="R0" />
        <iomarker fontsize="28" x="1584" y="736" name="VS" orien="R0" />
        <iomarker fontsize="28" x="3248" y="1024" name="green_1" orien="R0" />
        <iomarker fontsize="28" x="3248" y="960" name="green_0" orien="R0" />
        <iomarker fontsize="28" x="3248" y="1088" name="green_2" orien="R0" />
        <iomarker fontsize="28" x="3248" y="1248" name="blue_1" orien="R0" />
        <iomarker fontsize="28" x="3248" y="1184" name="blue_0" orien="R0" />
        <iomarker fontsize="28" x="3248" y="800" name="red_1" orien="R0" />
        <iomarker fontsize="28" x="3248" y="736" name="red_0" orien="R0" />
        <iomarker fontsize="28" x="3248" y="864" name="red_2" orien="R0" />
        <iomarker fontsize="28" x="144" y="928" name="clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="992" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1184" name="left_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1248" name="right_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1312" name="up_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1376" name="down_in" orien="R180" />
        <branch name="location_left(9:0)">
            <wire x2="2192" y1="1808" y2="1808" x1="1760" />
            <wire x2="1760" y1="1808" y2="1984" x1="1760" />
            <wire x2="1808" y1="1984" y2="1984" x1="1760" />
            <wire x2="2192" y1="1632" y2="1632" x1="2128" />
            <wire x2="2192" y1="1632" y2="1808" x1="2192" />
        </branch>
        <branch name="location_right(9:0)">
            <wire x2="2160" y1="1776" y2="1776" x1="1728" />
            <wire x2="1728" y1="1776" y2="2048" x1="1728" />
            <wire x2="1808" y1="2048" y2="2048" x1="1728" />
            <wire x2="2160" y1="1696" y2="1696" x1="2128" />
            <wire x2="2160" y1="1696" y2="1776" x1="2160" />
        </branch>
        <branch name="reset">
            <wire x2="1328" y1="2176" y2="2176" x1="1280" />
        </branch>
        <instance x="1328" y="2208" name="XLXI_80" orien="R0" />
        <iomarker fontsize="28" x="1280" y="2176" name="reset" orien="R180" />
        <branch name="XLXN_184">
            <wire x2="1680" y1="800" y2="800" x1="1504" />
            <wire x2="1728" y1="800" y2="800" x1="1680" />
            <wire x2="1680" y1="800" y2="1120" x1="1680" />
            <wire x2="1744" y1="1120" y2="1120" x1="1680" />
            <wire x2="1680" y1="1120" y2="2240" x1="1680" />
            <wire x2="1808" y1="2240" y2="2240" x1="1680" />
        </branch>
        <branch name="XLXN_267">
            <wire x2="1808" y1="2176" y2="2176" x1="1552" />
        </branch>
        <instance x="1808" y="2272" name="XLXI_79" orien="R0">
        </instance>
        <branch name="XLXN_268">
            <wire x2="1104" y1="928" y2="928" x1="1088" />
            <wire x2="1120" y1="928" y2="928" x1="1104" />
            <wire x2="1104" y1="928" y2="2112" x1="1104" />
            <wire x2="1808" y1="2112" y2="2112" x1="1104" />
        </branch>
        <branch name="XLXN_264(10:0)">
            <wire x2="1632" y1="864" y2="864" x1="1504" />
            <wire x2="1728" y1="864" y2="864" x1="1632" />
            <wire x2="1632" y1="864" y2="1504" x1="1632" />
            <wire x2="1744" y1="1504" y2="1504" x1="1632" />
            <wire x2="1632" y1="1504" y2="2304" x1="1632" />
            <wire x2="1808" y1="2304" y2="2304" x1="1632" />
        </branch>
        <branch name="XLXN_263(10:0)">
            <wire x2="1584" y1="928" y2="928" x1="1504" />
            <wire x2="1728" y1="928" y2="928" x1="1584" />
            <wire x2="1584" y1="928" y2="1568" x1="1584" />
            <wire x2="1744" y1="1568" y2="1568" x1="1584" />
            <wire x2="1584" y1="1568" y2="2368" x1="1584" />
            <wire x2="1808" y1="2368" y2="2368" x1="1584" />
        </branch>
        <branch name="XLXN_231">
            <wire x2="2224" y1="1984" y2="1984" x1="2192" />
            <wire x2="2224" y1="1248" y2="1984" x1="2224" />
            <wire x2="2288" y1="1248" y2="1248" x1="2224" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="2288" y1="2240" y2="2240" x1="2192" />
            <wire x2="2288" y1="1376" y2="2240" x1="2288" />
        </branch>
    </sheet>
</drawing>