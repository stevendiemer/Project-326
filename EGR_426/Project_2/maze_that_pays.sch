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
        <signal name="XLXN_189" />
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
        <signal name="XLXN_231" />
        <signal name="XLXN_233" />
        <signal name="location_left(9:0)" />
        <signal name="location_right(9:0)" />
        <signal name="XLXN_268" />
        <signal name="XLXN_269(3:0)" />
        <signal name="XLXN_270(10:0)" />
        <signal name="XLXN_289(10:0)" />
        <signal name="XLXN_302" />
        <signal name="red_0" />
        <signal name="red_1" />
        <signal name="red_2" />
        <signal name="blue_1" />
        <signal name="blue_0" />
        <signal name="green_0" />
        <signal name="green_1" />
        <signal name="green_2" />
        <signal name="XLXN_22" />
        <signal name="XLXN_409" />
        <signal name="XLXN_410" />
        <signal name="XLXN_411" />
        <signal name="XLXN_412(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Input" name="left_in" />
        <port polarity="Input" name="right_in" />
        <port polarity="Input" name="up_in" />
        <port polarity="Input" name="down_in" />
        <port polarity="Output" name="red_0" />
        <port polarity="Output" name="red_1" />
        <port polarity="Output" name="red_2" />
        <port polarity="Output" name="blue_1" />
        <port polarity="Output" name="blue_0" />
        <port polarity="Output" name="green_0" />
        <port polarity="Output" name="green_1" />
        <port polarity="Output" name="green_2" />
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
            <timestamp>2012-3-9T1:22:9</timestamp>
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
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
            <rect width="256" x="64" y="-384" height="768" />
        </blockdef>
        <blockdef name="clock_250Hz">
            <timestamp>2012-3-6T3:28:31</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="coins">
            <timestamp>2012-3-9T0:38:6</timestamp>
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <blockdef name="game_player">
            <timestamp>2012-3-9T0:19:18</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
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
            <rect width="256" x="64" y="-512" height="704" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
        </blockdef>
        <blockdef name="game_message">
            <timestamp>2012-3-10T1:52:23</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-320" height="512" />
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
            <blockpin signalname="XLXN_270(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
        </block>
        <block symbolname="static_background" name="XLXI_4">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_270(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_178" name="r" />
            <blockpin signalname="XLXN_179" name="g" />
            <blockpin signalname="XLXN_180" name="b" />
        </block>
        <block symbolname="display_driver" name="XLXI_75">
            <blockpin signalname="XLXN_178" name="r_back" />
            <blockpin signalname="XLXN_179" name="g_back" />
            <blockpin signalname="XLXN_180" name="b_back" />
            <blockpin signalname="XLXN_246" name="r_char" />
            <blockpin signalname="XLXN_247" name="g_char" />
            <blockpin signalname="XLXN_248" name="b_char" />
            <blockpin signalname="XLXN_231" name="r_coin" />
            <blockpin signalname="XLXN_232" name="g_coin" />
            <blockpin signalname="XLXN_233" name="b_coin" />
            <blockpin signalname="XLXN_23" name="r_buf" />
            <blockpin signalname="XLXN_22" name="g_buf" />
            <blockpin signalname="XLXN_189" name="b_buf" />
            <blockpin signalname="XLXN_409" name="r_mess" />
            <blockpin signalname="XLXN_410" name="g_mess" />
            <blockpin signalname="XLXN_411" name="b_mess" />
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
            <blockpin signalname="XLXN_270(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_246" name="r" />
            <blockpin signalname="XLXN_247" name="g" />
            <blockpin signalname="XLXN_248" name="b" />
            <blockpin signalname="location_left(9:0)" name="location_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="location_top(9:0)" />
        </block>
        <block symbolname="coins" name="XLXI_79">
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_302" name="reset" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_270(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="location_left(9:0)" name="char_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="char_top(9:0)" />
            <blockpin signalname="XLXN_231" name="r_coin" />
            <blockpin signalname="XLXN_232" name="g_coin" />
            <blockpin signalname="XLXN_233" name="b_coin" />
            <blockpin signalname="XLXN_269(3:0)" name="coin_display(3:0)" />
        </block>
        <block symbolname="game_message" name="XLXI_82">
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_302" name="rst" />
            <blockpin signalname="XLXN_269(3:0)" name="coins_left(3:0)" />
            <blockpin signalname="XLXN_270(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_409" name="r_win" />
            <blockpin signalname="XLXN_410" name="g_win" />
            <blockpin signalname="XLXN_411" name="b_win" />
        </block>
        <block symbolname="inv" name="XLXI_80">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_302" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="red_0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_189" name="I" />
            <blockpin signalname="blue_1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_189" name="I" />
            <blockpin signalname="blue_0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin signalname="green_0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="224" y1="928" y2="928" x1="144" />
            <wire x2="576" y1="928" y2="928" x1="224" />
            <wire x2="224" y1="928" y2="1440" x1="224" />
            <wire x2="528" y1="1440" y2="1440" x1="224" />
        </branch>
        <branch name="reset">
            <wire x2="256" y1="992" y2="992" x1="176" />
        </branch>
        <branch name="HS">
            <wire x2="1424" y1="672" y2="672" x1="1360" />
        </branch>
        <branch name="VS">
            <wire x2="1424" y1="736" y2="736" x1="1360" />
        </branch>
        <instance x="1728" y="960" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_178">
            <wire x2="2368" y1="800" y2="800" x1="2112" />
            <wire x2="2368" y1="800" y2="864" x1="2368" />
            <wire x2="2608" y1="864" y2="864" x1="2368" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="2304" y1="928" y2="928" x1="2112" />
            <wire x2="2304" y1="928" y2="992" x1="2304" />
            <wire x2="2608" y1="992" y2="992" x1="2304" />
        </branch>
        <branch name="XLXN_227">
            <wire x2="1744" y1="1440" y2="1440" x1="912" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="2432" y1="2112" y2="2112" x1="2192" />
            <wire x2="2608" y1="1312" y2="1312" x1="2432" />
            <wire x2="2432" y1="1312" y2="2112" x1="2432" />
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
            <wire x2="2304" y1="1120" y2="1120" x1="2128" />
            <wire x2="2608" y1="1056" y2="1056" x1="2304" />
            <wire x2="2304" y1="1056" y2="1120" x1="2304" />
        </branch>
        <branch name="XLXN_248">
            <wire x2="2368" y1="1248" y2="1248" x1="2128" />
            <wire x2="2608" y1="1184" y2="1184" x1="2368" />
            <wire x2="2368" y1="1184" y2="1248" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="144" y="928" name="clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="992" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1184" name="left_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1248" name="right_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1312" name="up_in" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1376" name="down_in" orien="R180" />
        <branch name="location_left(9:0)">
            <wire x2="1760" y1="1872" y2="1984" x1="1760" />
            <wire x2="1808" y1="1984" y2="1984" x1="1760" />
            <wire x2="2192" y1="1872" y2="1872" x1="1760" />
            <wire x2="2192" y1="1632" y2="1632" x1="2128" />
            <wire x2="2192" y1="1632" y2="1872" x1="2192" />
        </branch>
        <branch name="location_right(9:0)">
            <wire x2="1728" y1="1840" y2="2048" x1="1728" />
            <wire x2="1808" y1="2048" y2="2048" x1="1728" />
            <wire x2="2160" y1="1840" y2="1840" x1="1728" />
            <wire x2="2160" y1="1696" y2="1696" x1="2128" />
            <wire x2="2160" y1="1696" y2="1840" x1="2160" />
        </branch>
        <instance x="1808" y="2272" name="XLXI_79" orien="R0">
        </instance>
        <branch name="XLXN_231">
            <wire x2="2400" y1="1984" y2="1984" x1="2192" />
            <wire x2="2400" y1="1248" y2="1984" x1="2400" />
            <wire x2="2608" y1="1248" y2="1248" x1="2400" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="2464" y1="2176" y2="2176" x1="2192" />
            <wire x2="2192" y1="2176" y2="2240" x1="2192" />
            <wire x2="2608" y1="1376" y2="1376" x1="2464" />
            <wire x2="2464" y1="1376" y2="2176" x1="2464" />
        </branch>
        <branch name="XLXN_269(3:0)">
            <wire x2="2208" y1="2432" y2="2432" x1="2192" />
            <wire x2="2576" y1="2336" y2="2336" x1="2208" />
            <wire x2="2208" y1="2336" y2="2432" x1="2208" />
        </branch>
        <instance x="256" y="1024" name="XLXI_3" orien="R0" />
        <instance x="576" y="1024" name="XLXI_2" orien="R0">
        </instance>
        <instance x="528" y="1536" name="XLXI_78" orien="R0">
        </instance>
        <instance x="976" y="960" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_221">
            <wire x2="496" y1="992" y2="992" x1="480" />
            <wire x2="544" y1="992" y2="992" x1="496" />
            <wire x2="576" y1="992" y2="992" x1="544" />
            <wire x2="496" y1="992" y2="1504" x1="496" />
            <wire x2="528" y1="1504" y2="1504" x1="496" />
            <wire x2="976" y1="672" y2="672" x1="544" />
            <wire x2="544" y1="672" y2="992" x1="544" />
        </branch>
        <iomarker fontsize="28" x="1424" y="672" name="HS" orien="R0" />
        <iomarker fontsize="28" x="1424" y="736" name="VS" orien="R0" />
        <branch name="XLXN_184">
            <wire x2="1680" y1="800" y2="800" x1="1360" />
            <wire x2="1728" y1="800" y2="800" x1="1680" />
            <wire x2="1680" y1="800" y2="1120" x1="1680" />
            <wire x2="1744" y1="1120" y2="1120" x1="1680" />
            <wire x2="1680" y1="1120" y2="2240" x1="1680" />
            <wire x2="1808" y1="2240" y2="2240" x1="1680" />
            <wire x2="1680" y1="2240" y2="2608" x1="1680" />
            <wire x2="2544" y1="2608" y2="2608" x1="1680" />
            <wire x2="2576" y1="2528" y2="2528" x1="2544" />
            <wire x2="2544" y1="2528" y2="2608" x1="2544" />
        </branch>
        <branch name="reset">
            <wire x2="1312" y1="2176" y2="2176" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="2176" name="reset" orien="R180" />
        <instance x="1312" y="2208" name="XLXI_80" orien="R0" />
        <branch name="red_0">
            <wire x2="3376" y1="736" y2="736" x1="3296" />
        </branch>
        <branch name="red_1">
            <wire x2="3376" y1="800" y2="800" x1="3296" />
        </branch>
        <branch name="red_2">
            <wire x2="3376" y1="864" y2="864" x1="3296" />
        </branch>
        <branch name="blue_1">
            <wire x2="3376" y1="1248" y2="1248" x1="3296" />
        </branch>
        <branch name="blue_0">
            <wire x2="3376" y1="1184" y2="1184" x1="3296" />
        </branch>
        <branch name="green_0">
            <wire x2="3376" y1="960" y2="960" x1="3296" />
        </branch>
        <branch name="green_1">
            <wire x2="3376" y1="1024" y2="1024" x1="3296" />
        </branch>
        <branch name="green_2">
            <wire x2="3376" y1="1088" y2="1088" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3376" y="864" name="red_2" orien="R0" />
        <iomarker fontsize="28" x="3376" y="736" name="red_0" orien="R0" />
        <iomarker fontsize="28" x="3376" y="800" name="red_1" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1184" name="blue_0" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1248" name="blue_1" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1088" name="green_2" orien="R0" />
        <iomarker fontsize="28" x="3376" y="960" name="green_0" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1024" name="green_1" orien="R0" />
        <instance x="3072" y="832" name="XLXI_6" orien="R0" />
        <instance x="3072" y="896" name="XLXI_7" orien="R0" />
        <instance x="3072" y="768" name="XLXI_5" orien="R0" />
        <instance x="3072" y="1280" name="XLXI_12" orien="R0" />
        <instance x="3072" y="1216" name="XLXI_11" orien="R0" />
        <instance x="3072" y="1120" name="XLXI_10" orien="R0" />
        <instance x="3072" y="1056" name="XLXI_9" orien="R0" />
        <instance x="3072" y="992" name="XLXI_8" orien="R0" />
        <branch name="XLXN_189">
            <wire x2="3008" y1="1184" y2="1184" x1="2992" />
            <wire x2="3072" y1="1184" y2="1184" x1="3008" />
            <wire x2="3008" y1="1184" y2="1248" x1="3008" />
            <wire x2="3072" y1="1248" y2="1248" x1="3008" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="3008" y1="1024" y2="1024" x1="2992" />
            <wire x2="3072" y1="1024" y2="1024" x1="3008" />
            <wire x2="3008" y1="1024" y2="1088" x1="3008" />
            <wire x2="3072" y1="1088" y2="1088" x1="3008" />
            <wire x2="3072" y1="960" y2="960" x1="3008" />
            <wire x2="3008" y1="960" y2="1024" x1="3008" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="3008" y1="864" y2="864" x1="2992" />
            <wire x2="3072" y1="864" y2="864" x1="3008" />
            <wire x2="3072" y1="736" y2="736" x1="3008" />
            <wire x2="3008" y1="736" y2="800" x1="3008" />
            <wire x2="3072" y1="800" y2="800" x1="3008" />
            <wire x2="3008" y1="800" y2="864" x1="3008" />
        </branch>
        <instance x="2608" y="1216" name="XLXI_75" orien="R0">
        </instance>
        <branch name="XLXN_179">
            <wire x2="2336" y1="864" y2="864" x1="2112" />
            <wire x2="2336" y1="864" y2="928" x1="2336" />
            <wire x2="2608" y1="928" y2="928" x1="2336" />
        </branch>
        <branch name="XLXN_247">
            <wire x2="2336" y1="1184" y2="1184" x1="2128" />
            <wire x2="2608" y1="1120" y2="1120" x1="2336" />
            <wire x2="2336" y1="1120" y2="1184" x1="2336" />
        </branch>
        <branch name="XLXN_268">
            <wire x2="960" y1="928" y2="2112" x1="960" />
            <wire x2="1808" y1="2112" y2="2112" x1="960" />
            <wire x2="960" y1="2112" y2="2544" x1="960" />
            <wire x2="2400" y1="2544" y2="2544" x1="960" />
            <wire x2="976" y1="928" y2="928" x1="960" />
            <wire x2="2576" y1="2208" y2="2208" x1="2400" />
            <wire x2="2400" y1="2208" y2="2544" x1="2400" />
        </branch>
        <branch name="XLXN_302">
            <wire x2="1552" y1="2176" y2="2176" x1="1536" />
            <wire x2="1808" y1="2176" y2="2176" x1="1552" />
            <wire x2="1552" y1="1888" y2="2176" x1="1552" />
            <wire x2="2256" y1="1888" y2="1888" x1="1552" />
            <wire x2="2256" y1="1888" y2="2272" x1="2256" />
            <wire x2="2576" y1="2272" y2="2272" x1="2256" />
        </branch>
        <branch name="XLXN_270(10:0)">
            <wire x2="1632" y1="864" y2="864" x1="1360" />
            <wire x2="1728" y1="864" y2="864" x1="1632" />
            <wire x2="1632" y1="864" y2="1504" x1="1632" />
            <wire x2="1744" y1="1504" y2="1504" x1="1632" />
            <wire x2="1632" y1="1504" y2="2304" x1="1632" />
            <wire x2="1808" y1="2304" y2="2304" x1="1632" />
            <wire x2="1632" y1="2304" y2="2528" x1="1632" />
            <wire x2="2448" y1="2528" y2="2528" x1="1632" />
            <wire x2="2576" y1="2400" y2="2400" x1="2448" />
            <wire x2="2448" y1="2400" y2="2528" x1="2448" />
        </branch>
        <branch name="XLXN_289(10:0)">
            <wire x2="1584" y1="928" y2="928" x1="1360" />
            <wire x2="1728" y1="928" y2="928" x1="1584" />
            <wire x2="1584" y1="928" y2="1568" x1="1584" />
            <wire x2="1744" y1="1568" y2="1568" x1="1584" />
            <wire x2="1584" y1="1568" y2="2368" x1="1584" />
            <wire x2="1808" y1="2368" y2="2368" x1="1584" />
            <wire x2="1584" y1="2368" y2="2576" x1="1584" />
            <wire x2="2496" y1="2576" y2="2576" x1="1584" />
            <wire x2="2576" y1="2464" y2="2464" x1="2496" />
            <wire x2="2496" y1="2464" y2="2576" x1="2496" />
        </branch>
        <branch name="XLXN_409">
            <wire x2="2496" y1="1440" y2="2112" x1="2496" />
            <wire x2="2976" y1="2112" y2="2112" x1="2496" />
            <wire x2="2976" y1="2112" y2="2528" x1="2976" />
            <wire x2="2608" y1="1440" y2="1440" x1="2496" />
            <wire x2="2976" y1="2528" y2="2528" x1="2960" />
        </branch>
        <branch name="XLXN_410">
            <wire x2="2528" y1="1504" y2="2080" x1="2528" />
            <wire x2="3008" y1="2080" y2="2080" x1="2528" />
            <wire x2="3008" y1="2080" y2="2592" x1="3008" />
            <wire x2="2608" y1="1504" y2="1504" x1="2528" />
            <wire x2="3008" y1="2592" y2="2592" x1="2960" />
        </branch>
        <branch name="XLXN_411">
            <wire x2="2560" y1="1568" y2="2048" x1="2560" />
            <wire x2="3040" y1="2048" y2="2048" x1="2560" />
            <wire x2="3040" y1="2048" y2="2656" x1="3040" />
            <wire x2="2608" y1="1568" y2="1568" x1="2560" />
            <wire x2="3040" y1="2656" y2="2656" x1="2960" />
        </branch>
        <instance x="2576" y="2496" name="XLXI_82" orien="R0">
        </instance>
    </sheet>
</drawing>