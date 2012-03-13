<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_522(9:0)" />
        <signal name="XLXN_524(9:0)" />
        <signal name="XLXN_527(3:0)" />
        <signal name="XLXN_528" />
        <signal name="XLXN_530" />
        <signal name="XLXN_548(10:0)" />
        <signal name="XLXN_550(10:0)" />
        <signal name="XLXN_552" />
        <signal name="XLXN_561" />
        <signal name="XLXN_572" />
        <signal name="XLXN_574" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="HS" />
        <signal name="VS" />
        <signal name="XLXN_178" />
        <signal name="XLXN_232" />
        <signal name="location_left(9:0)" />
        <signal name="XLXN_583(9:0)" />
        <signal name="location_right(9:0)" />
        <signal name="XLXN_585(9:0)" />
        <signal name="XLXN_233" />
        <signal name="XLXN_269(3:0)" />
        <signal name="XLXN_588(3:0)" />
        <signal name="XLXN_589" />
        <signal name="XLXN_221" />
        <signal name="XLXN_591" />
        <signal name="XLXN_184" />
        <signal name="red_0" />
        <signal name="red_1" />
        <signal name="red_2" />
        <signal name="blue_1" />
        <signal name="blue_0" />
        <signal name="green_0" />
        <signal name="green_1" />
        <signal name="green_2" />
        <signal name="XLXN_179" />
        <signal name="XLXN_410" />
        <signal name="an_0" />
        <signal name="an_1" />
        <signal name="an_2" />
        <signal name="an_3" />
        <signal name="XLXN_289(10:0)" />
        <signal name="XLXN_609(10:0)" />
        <signal name="XLXN_477(10:0)" />
        <signal name="XLXN_611(10:0)" />
        <signal name="XLXN_478(9:0)" />
        <signal name="XLXN_613" />
        <signal name="XLXN_23" />
        <signal name="XLXN_411" />
        <signal name="XLXN_417" />
        <signal name="down_in" />
        <signal name="up_in" />
        <signal name="right_in" />
        <signal name="left_in" />
        <signal name="XLXN_189" />
        <signal name="XLXN_622" />
        <signal name="XLXN_22" />
        <signal name="XLXN_409" />
        <signal name="XLXN_231" />
        <signal name="XLXN_248" />
        <signal name="XLXN_247" />
        <signal name="XLXN_246" />
        <signal name="XLXN_180" />
        <signal name="XLXN_505" />
        <signal name="XLXN_507" />
        <signal name="XLXN_509" />
        <signal name="XLXN_633" />
        <signal name="XLXN_268" />
        <signal name="XLXN_635" />
        <signal name="XLXN_514" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="HS" />
        <port polarity="Output" name="VS" />
        <port polarity="Output" name="red_0" />
        <port polarity="Output" name="red_1" />
        <port polarity="Output" name="red_2" />
        <port polarity="Output" name="blue_1" />
        <port polarity="Output" name="blue_0" />
        <port polarity="Output" name="green_0" />
        <port polarity="Output" name="green_1" />
        <port polarity="Output" name="green_2" />
        <port polarity="Output" name="an_0" />
        <port polarity="Output" name="an_1" />
        <port polarity="Output" name="an_2" />
        <port polarity="Output" name="an_3" />
        <port polarity="Input" name="down_in" />
        <port polarity="Input" name="up_in" />
        <port polarity="Input" name="right_in" />
        <port polarity="Input" name="left_in" />
        <blockdef name="vga_controller_640_60">
            <timestamp>2012-3-10T19:10:25</timestamp>
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
            <timestamp>2012-3-13T2:53:52</timestamp>
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="544" y2="544" x1="64" />
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
            <rect width="256" x="64" y="-384" height="960" />
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
            <timestamp>2012-3-13T2:0:10</timestamp>
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
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="256" x="64" y="-512" height="636" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="game_message">
            <timestamp>2012-3-13T2:48:6</timestamp>
            <rect width="64" x="368" y="212" height="24" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="304" x="64" y="-320" height="576" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="timer_display">
            <timestamp>2012-3-13T2:58:31</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-128" y2="-128" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="304" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="title">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="-796" y1="-288" y2="-256" x1="-764" />
            <line x2="-764" y1="-256" y2="-288" x1="-732" />
            <line x2="-732" y1="-256" y2="-256" x1="-776" />
            <line x2="-776" y1="-264" y2="-256" x1="-788" />
            <line x2="-796" y1="-256" y2="-256" x1="-840" />
            <line x2="-836" y1="-256" y2="-288" x1="-804" />
            <line x2="-832" y1="-256" y2="-288" x1="-800" />
            <line x2="-828" y1="-256" y2="-288" x1="-796" />
            <line x2="-800" y1="-288" y2="-320" x1="-832" />
            <line x2="-796" y1="-288" y2="-320" x1="-828" />
            <line x2="-796" y1="-352" y2="-384" x1="-828" />
            <line x2="-796" y1="-384" y2="-384" x1="-840" />
            <line x2="-764" y1="-384" y2="-352" x1="-796" />
            <line x2="-832" y1="-320" y2="-352" x1="-800" />
            <line x2="-828" y1="-320" y2="-352" x1="-796" />
            <line x2="-836" y1="-320" y2="-352" x1="-804" />
            <line x2="-800" y1="-352" y2="-384" x1="-832" />
            <line x2="-804" y1="-352" y2="-384" x1="-836" />
            <line x2="-840" y1="-352" y2="-384" x1="-872" />
            <line x2="-836" y1="-352" y2="-384" x1="-868" />
            <line x2="-764" y1="-384" y2="-352" x1="-732" />
            <line x2="-732" y1="-384" y2="-384" x1="-776" />
            <line x2="-776" y1="-376" y2="-384" x1="-788" />
            <line x2="-736" y1="-356" y2="-384" x1="-764" />
            <line x2="-740" y1="-360" y2="-384" x1="-768" />
            <line x2="-740" y1="-356" y2="-384" x1="-768" />
            <line x2="-744" y1="-360" y2="-384" x1="-772" />
            <line x2="-748" y1="-360" y2="-384" x1="-772" />
            <line x2="-752" y1="-360" y2="-384" x1="-772" />
            <line x2="-808" y1="-352" y2="-384" x1="-840" />
            <line x2="-812" y1="-352" y2="-384" x1="-844" />
            <line x2="-816" y1="-352" y2="-384" x1="-848" />
            <line x2="-820" y1="-352" y2="-384" x1="-852" />
            <line x2="-848" y1="-256" y2="-288" x1="-816" />
            <line x2="-852" y1="-256" y2="-288" x1="-820" />
            <line x2="-828" y1="-352" y2="-352" x1="-872" />
            <line x2="-868" y1="-320" y2="-352" x1="-836" />
            <line x2="-864" y1="-320" y2="-352" x1="-832" />
            <line x2="-860" y1="-320" y2="-352" x1="-828" />
            <line x2="-856" y1="-320" y2="-352" x1="-824" />
            <line x2="-840" y1="-288" y2="-320" x1="-872" />
            <line x2="-828" y1="-288" y2="-288" x1="-872" />
            <line x2="-828" y1="-352" y2="-384" x1="-860" />
            <line x2="-832" y1="-352" y2="-384" x1="-864" />
            <line x2="-824" y1="-352" y2="-384" x1="-856" />
            <line x2="-824" y1="-288" y2="-320" x1="-856" />
            <line x2="-820" y1="-288" y2="-320" x1="-852" />
            <line x2="-816" y1="-288" y2="-320" x1="-848" />
            <line x2="-812" y1="-288" y2="-320" x1="-844" />
            <line x2="-808" y1="-288" y2="-320" x1="-840" />
            <line x2="-804" y1="-288" y2="-320" x1="-836" />
            <line x2="-836" y1="-288" y2="-320" x1="-868" />
            <line x2="-832" y1="-288" y2="-320" x1="-864" />
            <line x2="-828" y1="-288" y2="-320" x1="-860" />
            <line x2="-872" y1="-320" y2="-352" x1="-840" />
            <line x2="-852" y1="-320" y2="-352" x1="-820" />
            <line x2="-848" y1="-320" y2="-352" x1="-816" />
            <line x2="-844" y1="-320" y2="-352" x1="-812" />
            <line x2="-840" y1="-320" y2="-352" x1="-808" />
            <line x2="-840" y1="-256" y2="-288" x1="-808" />
            <line x2="-844" y1="-256" y2="-288" x1="-812" />
            <line x2="-868" y1="-256" y2="-288" x1="-836" />
            <line x2="-872" y1="-256" y2="-288" x1="-840" />
            <line x2="-856" y1="-256" y2="-288" x1="-824" />
            <line x2="-860" y1="-256" y2="-288" x1="-828" />
            <line x2="-864" y1="-256" y2="-288" x1="-832" />
            <line x2="-756" y1="-364" y2="-384" x1="-772" />
            <line x2="-756" y1="-364" y2="-384" x1="-776" />
            <line x2="-760" y1="-368" y2="-384" x1="-776" />
            <line x2="-764" y1="-368" y2="-384" x1="-780" />
            <line x2="-768" y1="-372" y2="-384" x1="-780" />
            <line x2="-772" y1="-372" y2="-384" x1="-784" />
            <line x2="-772" y1="-376" y2="-384" x1="-784" />
            <line x2="-612" y1="-272" y2="-368" x1="-612" />
            <line x2="-616" y1="-272" y2="-368" x1="-616" />
            <line x2="-620" y1="-272" y2="-368" x1="-620" />
            <line x2="-612" y1="-276" y2="-276" x1="-564" />
            <line x2="-456" y1="-272" y2="-368" x1="-456" />
            <line x2="-460" y1="-272" y2="-368" x1="-460" />
            <line x2="-640" y1="-272" y2="-368" x1="-640" />
            <line x2="-444" y1="-272" y2="-368" x1="-392" />
            <line x2="-444" y1="-368" y2="-272" x1="-392" />
            <line x2="-712" y1="-272" y2="-368" x1="-660" />
            <line x2="-716" y1="-368" y2="-272" x1="-660" />
            <line x2="-544" y1="-272" y2="-368" x1="-544" />
            <line x2="-644" y1="-272" y2="-368" x1="-644" />
            <line x2="-636" y1="-272" y2="-368" x1="-636" />
            <line x2="-708" y1="-272" y2="-368" x1="-656" />
            <line x2="-520" y1="-272" y2="-368" x1="-468" />
            <line x2="-716" y1="-272" y2="-368" x1="-660" />
            <line x2="-720" y1="-272" y2="-368" x1="-664" />
            <line x2="-524" y1="-272" y2="-368" x1="-524" />
            <line x2="-528" y1="-272" y2="-368" x1="-528" />
            <line x2="-632" y1="-272" y2="-368" x1="-632" />
            <line x2="-524" y1="-272" y2="-368" x1="-468" />
            <line x2="-540" y1="-272" y2="-368" x1="-540" />
            <line x2="-516" y1="-272" y2="-368" x1="-464" />
            <line x2="-516" y1="-272" y2="-368" x1="-460" />
            <line x2="-548" y1="-272" y2="-368" x1="-548" />
            <line x2="-440" y1="-272" y2="-368" x1="-388" />
            <line x2="-612" y1="-272" y2="-272" x1="-564" />
            <line x2="-720" y1="-368" y2="-272" x1="-664" />
            <line x2="-784" y1="-256" y2="-264" x1="-772" />
            <line x2="-772" y1="-268" y2="-256" x1="-784" />
            <line x2="-780" y1="-256" y2="-268" x1="-768" />
            <line x2="-764" y1="-272" y2="-256" x1="-780" />
            <line x2="-776" y1="-256" y2="-272" x1="-760" />
            <line x2="-756" y1="-276" y2="-256" x1="-776" />
            <line x2="-772" y1="-256" y2="-276" x1="-756" />
            <line x2="-752" y1="-280" y2="-256" x1="-772" />
            <line x2="-772" y1="-256" y2="-280" x1="-748" />
            <line x2="-744" y1="-280" y2="-256" x1="-772" />
            <line x2="-768" y1="-256" y2="-280" x1="-740" />
            <line x2="-740" y1="-284" y2="-256" x1="-768" />
            <line x2="-764" y1="-256" y2="-284" x1="-736" />
            <line x2="-436" y1="-272" y2="-368" x1="-388" />
            <line x2="-436" y1="-272" y2="-368" x1="-384" />
            <line x2="-440" y1="-368" y2="-272" x1="-388" />
            <line x2="-1140" y1="-176" y2="-176" x1="-112" />
            <line x2="-1136" y1="-416" y2="-212" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-416" y2="-220" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-416" y2="-416" style="linewidth:W" x1="-1136" />
            <line x2="-80" y1="-128" y2="-128" x1="-1136" />
            <line x2="-80" y1="-220" y2="-220" x1="-1132" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-352" y1="-80" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-1136" y1="-224" y2="-80" style="linewidth:W" x1="-1136" />
            <line x2="-152" y1="-80" y2="-80" style="linewidth:W" x1="-144" />
            <line x2="-80" y1="-224" y2="-80" style="linewidth:W" x1="-80" />
            <line x2="-80" y1="-176" y2="-176" x1="-112" />
            <line x2="-144" y1="-128" y2="-128" x1="-176" />
            <line x2="-296" y1="-128" y2="-80" x1="-296" />
        </blockdef>
        <block symbolname="title" name="XLXI_106">
            <attr value="    Maze That Pays - EGR 426 Project 2" name="TitleFieldText" />
            <attr value="    Steven Diemer" name="NameFieldText" />
        </block>
        <block symbolname="static_background" name="XLXI_4">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_178" name="r" />
            <blockpin signalname="XLXN_179" name="g" />
            <blockpin signalname="XLXN_180" name="b" />
        </block>
        <block symbolname="coins" name="XLXI_79">
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_514" name="reset" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="location_left(9:0)" name="char_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="char_top(9:0)" />
            <blockpin signalname="XLXN_231" name="r_coin" />
            <blockpin signalname="XLXN_232" name="g_coin" />
            <blockpin signalname="XLXN_233" name="b_coin" />
            <blockpin signalname="XLXN_269(3:0)" name="coin_display(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_221" name="O" />
        </block>
        <block symbolname="clock_250Hz" name="XLXI_78">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_221" name="reset" />
            <blockpin signalname="XLXN_417" name="clk_250" />
        </block>
        <block symbolname="vga_controller_640_60" name="XLXI_1">
            <blockpin signalname="XLXN_221" name="rst" />
            <blockpin signalname="XLXN_268" name="pixel_clk" />
            <blockpin signalname="HS" name="HS" />
            <blockpin signalname="VS" name="VS" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
        </block>
        <block symbolname="inv" name="XLXI_80">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_514" name="O" />
        </block>
        <block symbolname="game_message" name="XLXI_82">
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_417" name="clk_250" />
            <blockpin signalname="XLXN_514" name="rst" />
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_269(3:0)" name="coins_left(3:0)" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_409" name="r_win" />
            <blockpin signalname="XLXN_410" name="g_win" />
            <blockpin signalname="XLXN_411" name="b_win" />
            <blockpin signalname="XLXN_478(9:0)" name="time_remaining(9:0)" />
        </block>
        <block symbolname="clock_25mhz" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_221" name="reset" />
            <blockpin signalname="XLXN_268" name="pixel_clk" />
        </block>
        <block symbolname="vcc" name="XLXI_101">
            <blockpin signalname="an_0" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_102">
            <blockpin signalname="an_1" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_103">
            <blockpin signalname="an_2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_104">
            <blockpin signalname="an_3" name="P" />
        </block>
        <block symbolname="timer_display" name="XLXI_105">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_478(9:0)" name="time_remaining(9:0)" />
            <blockpin signalname="XLXN_505" name="r_timer" />
            <blockpin signalname="XLXN_507" name="g_timer" />
            <blockpin signalname="XLXN_509" name="b_timer" />
            <blockpin signalname="XLXN_268" name="clk" />
            <blockpin signalname="XLXN_514" name="rst" />
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
        <block symbolname="game_player" name="XLXI_81">
            <blockpin signalname="XLXN_184" name="blank" />
            <blockpin signalname="left_in" name="left" />
            <blockpin signalname="right_in" name="right" />
            <blockpin signalname="up_in" name="up" />
            <blockpin signalname="down_in" name="down" />
            <blockpin signalname="XLXN_417" name="move_clock" />
            <blockpin signalname="XLXN_477(10:0)" name="hcount(10:0)" />
            <blockpin signalname="XLXN_289(10:0)" name="vcount(10:0)" />
            <blockpin signalname="XLXN_246" name="r" />
            <blockpin signalname="XLXN_247" name="g" />
            <blockpin signalname="XLXN_248" name="b" />
            <blockpin signalname="location_left(9:0)" name="location_left(9:0)" />
            <blockpin signalname="location_right(9:0)" name="location_top(9:0)" />
            <blockpin signalname="XLXN_514" name="reset" />
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
            <blockpin signalname="XLXN_409" name="r_mess" />
            <blockpin signalname="XLXN_410" name="g_mess" />
            <blockpin signalname="XLXN_411" name="b_mess" />
            <blockpin signalname="XLXN_23" name="r_buf" />
            <blockpin signalname="XLXN_22" name="g_buf" />
            <blockpin signalname="XLXN_189" name="b_buf" />
            <blockpin signalname="XLXN_505" name="r_timer" />
            <blockpin signalname="XLXN_507" name="g_timer" />
            <blockpin signalname="XLXN_509" name="b_timer" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="5488" y="3568" name="XLXI_106" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="736" y1="736" y2="736" x1="656" />
            <wire x2="736" y1="736" y2="1248" x1="736" />
            <wire x2="1040" y1="1248" y2="1248" x1="736" />
            <wire x2="1072" y1="736" y2="736" x1="736" />
        </branch>
        <branch name="reset">
            <wire x2="768" y1="800" y2="800" x1="688" />
        </branch>
        <branch name="HS">
            <wire x2="1936" y1="480" y2="480" x1="1872" />
        </branch>
        <branch name="VS">
            <wire x2="1936" y1="544" y2="544" x1="1872" />
        </branch>
        <instance x="2240" y="768" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_178">
            <wire x2="3104" y1="608" y2="608" x1="2624" />
            <wire x2="3104" y1="608" y2="672" x1="3104" />
            <wire x2="3712" y1="672" y2="672" x1="3104" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="2848" y1="1920" y2="1920" x1="2704" />
            <wire x2="2848" y1="1120" y2="1920" x1="2848" />
            <wire x2="3712" y1="1120" y2="1120" x1="2848" />
        </branch>
        <branch name="location_left(9:0)">
            <wire x2="2272" y1="1680" y2="1792" x1="2272" />
            <wire x2="2320" y1="1792" y2="1792" x1="2272" />
            <wire x2="2704" y1="1680" y2="1680" x1="2272" />
            <wire x2="2704" y1="1440" y2="1440" x1="2640" />
            <wire x2="2704" y1="1440" y2="1680" x1="2704" />
        </branch>
        <branch name="location_right(9:0)">
            <wire x2="2240" y1="1648" y2="1856" x1="2240" />
            <wire x2="2320" y1="1856" y2="1856" x1="2240" />
            <wire x2="2672" y1="1648" y2="1648" x1="2240" />
            <wire x2="2672" y1="1504" y2="1504" x1="2640" />
            <wire x2="2672" y1="1504" y2="1648" x1="2672" />
        </branch>
        <instance x="2320" y="2080" name="XLXI_79" orien="R0">
        </instance>
        <branch name="XLXN_233">
            <wire x2="2880" y1="2048" y2="2048" x1="2704" />
            <wire x2="2880" y1="1184" y2="2048" x1="2880" />
            <wire x2="3712" y1="1184" y2="1184" x1="2880" />
        </branch>
        <branch name="XLXN_269(3:0)">
            <wire x2="2720" y1="2240" y2="2240" x1="2704" />
            <wire x2="3088" y1="2144" y2="2144" x1="2720" />
            <wire x2="2720" y1="2144" y2="2240" x1="2720" />
        </branch>
        <instance x="768" y="832" name="XLXI_3" orien="R0" />
        <instance x="1040" y="1344" name="XLXI_78" orien="R0">
        </instance>
        <instance x="1488" y="768" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_221">
            <wire x2="1008" y1="800" y2="800" x1="992" />
            <wire x2="1056" y1="800" y2="800" x1="1008" />
            <wire x2="1072" y1="800" y2="800" x1="1056" />
            <wire x2="1008" y1="800" y2="1312" x1="1008" />
            <wire x2="1040" y1="1312" y2="1312" x1="1008" />
            <wire x2="1488" y1="480" y2="480" x1="1056" />
            <wire x2="1056" y1="480" y2="800" x1="1056" />
        </branch>
        <branch name="XLXN_184">
            <wire x2="2192" y1="608" y2="608" x1="1872" />
            <wire x2="2240" y1="608" y2="608" x1="2192" />
            <wire x2="2192" y1="608" y2="928" x1="2192" />
            <wire x2="2192" y1="928" y2="2048" x1="2192" />
            <wire x2="2320" y1="2048" y2="2048" x1="2192" />
            <wire x2="2192" y1="2048" y2="2416" x1="2192" />
            <wire x2="3024" y1="2416" y2="2416" x1="2192" />
            <wire x2="3024" y1="2416" y2="2768" x1="3024" />
            <wire x2="3824" y1="2768" y2="2768" x1="3024" />
            <wire x2="2256" y1="928" y2="928" x1="2192" />
            <wire x2="3024" y1="2336" y2="2416" x1="3024" />
            <wire x2="3088" y1="2336" y2="2336" x1="3024" />
            <wire x2="4000" y1="2464" y2="2464" x1="3824" />
            <wire x2="3824" y1="2464" y2="2768" x1="3824" />
        </branch>
        <branch name="reset">
            <wire x2="1824" y1="1984" y2="1984" x1="1792" />
        </branch>
        <instance x="1824" y="2016" name="XLXI_80" orien="R0" />
        <branch name="red_0">
            <wire x2="4672" y1="544" y2="544" x1="4544" />
        </branch>
        <branch name="red_1">
            <wire x2="4672" y1="608" y2="608" x1="4544" />
        </branch>
        <branch name="red_2">
            <wire x2="4672" y1="672" y2="672" x1="4544" />
        </branch>
        <branch name="blue_1">
            <wire x2="4672" y1="1056" y2="1056" x1="4544" />
        </branch>
        <branch name="blue_0">
            <wire x2="4672" y1="992" y2="992" x1="4544" />
        </branch>
        <branch name="green_0">
            <wire x2="4672" y1="768" y2="768" x1="4544" />
        </branch>
        <branch name="green_1">
            <wire x2="4672" y1="832" y2="832" x1="4544" />
        </branch>
        <branch name="green_2">
            <wire x2="4672" y1="896" y2="896" x1="4544" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="3072" y1="672" y2="672" x1="2624" />
            <wire x2="3072" y1="672" y2="736" x1="3072" />
            <wire x2="3712" y1="736" y2="736" x1="3072" />
        </branch>
        <instance x="3088" y="2304" name="XLXI_82" orien="R0">
        </instance>
        <branch name="XLXN_410">
            <wire x2="3568" y1="2400" y2="2400" x1="3520" />
            <wire x2="3568" y1="1312" y2="2400" x1="3568" />
            <wire x2="3712" y1="1312" y2="1312" x1="3568" />
        </branch>
        <instance x="1072" y="832" name="XLXI_2" orien="R0">
        </instance>
        <instance x="576" y="1840" name="XLXI_101" orien="R0" />
        <branch name="an_0">
            <wire x2="640" y1="1840" y2="1904" x1="640" />
            <wire x2="736" y1="1904" y2="1904" x1="640" />
        </branch>
        <instance x="576" y="2064" name="XLXI_102" orien="R0" />
        <branch name="an_1">
            <wire x2="640" y1="2064" y2="2128" x1="640" />
            <wire x2="736" y1="2128" y2="2128" x1="640" />
        </branch>
        <instance x="576" y="2288" name="XLXI_103" orien="R0" />
        <branch name="an_2">
            <wire x2="640" y1="2288" y2="2352" x1="640" />
            <wire x2="736" y1="2352" y2="2352" x1="640" />
        </branch>
        <instance x="576" y="2512" name="XLXI_104" orien="R0" />
        <branch name="an_3">
            <wire x2="640" y1="2512" y2="2576" x1="640" />
            <wire x2="736" y1="2576" y2="2576" x1="640" />
        </branch>
        <instance x="4000" y="2688" name="XLXI_105" orien="R0">
        </instance>
        <branch name="XLXN_289(10:0)">
            <wire x2="2096" y1="736" y2="736" x1="1872" />
            <wire x2="2240" y1="736" y2="736" x1="2096" />
            <wire x2="2096" y1="736" y2="1376" x1="2096" />
            <wire x2="2096" y1="1376" y2="2176" x1="2096" />
            <wire x2="2320" y1="2176" y2="2176" x1="2096" />
            <wire x2="2096" y1="2176" y2="2384" x1="2096" />
            <wire x2="2992" y1="2384" y2="2384" x1="2096" />
            <wire x2="2096" y1="2384" y2="2656" x1="2096" />
            <wire x2="4000" y1="2656" y2="2656" x1="2096" />
            <wire x2="2256" y1="1376" y2="1376" x1="2096" />
            <wire x2="3088" y1="2272" y2="2272" x1="2992" />
            <wire x2="2992" y1="2272" y2="2384" x1="2992" />
        </branch>
        <branch name="XLXN_477(10:0)">
            <wire x2="2144" y1="672" y2="672" x1="1872" />
            <wire x2="2240" y1="672" y2="672" x1="2144" />
            <wire x2="2144" y1="672" y2="1312" x1="2144" />
            <wire x2="2144" y1="1312" y2="2112" x1="2144" />
            <wire x2="2320" y1="2112" y2="2112" x1="2144" />
            <wire x2="2144" y1="2112" y2="2336" x1="2144" />
            <wire x2="2960" y1="2336" y2="2336" x1="2144" />
            <wire x2="2144" y1="2336" y2="2592" x1="2144" />
            <wire x2="4000" y1="2592" y2="2592" x1="2144" />
            <wire x2="2256" y1="1312" y2="1312" x1="2144" />
            <wire x2="3088" y1="2208" y2="2208" x1="2960" />
            <wire x2="2960" y1="2208" y2="2336" x1="2960" />
        </branch>
        <branch name="XLXN_478(9:0)">
            <wire x2="4000" y1="2528" y2="2528" x1="3520" />
        </branch>
        <instance x="4320" y="640" name="XLXI_6" orien="R0" />
        <instance x="4320" y="704" name="XLXI_7" orien="R0" />
        <instance x="4320" y="576" name="XLXI_5" orien="R0" />
        <instance x="4320" y="1088" name="XLXI_12" orien="R0" />
        <instance x="4320" y="1024" name="XLXI_11" orien="R0" />
        <instance x="4320" y="928" name="XLXI_10" orien="R0" />
        <instance x="4320" y="864" name="XLXI_9" orien="R0" />
        <instance x="4320" y="800" name="XLXI_8" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="4240" y1="672" y2="672" x1="4096" />
            <wire x2="4320" y1="672" y2="672" x1="4240" />
            <wire x2="4320" y1="544" y2="544" x1="4240" />
            <wire x2="4240" y1="544" y2="608" x1="4240" />
            <wire x2="4320" y1="608" y2="608" x1="4240" />
            <wire x2="4240" y1="608" y2="672" x1="4240" />
        </branch>
        <branch name="XLXN_411">
            <wire x2="3600" y1="2464" y2="2464" x1="3520" />
            <wire x2="3600" y1="1376" y2="2464" x1="3600" />
            <wire x2="3712" y1="1376" y2="1376" x1="3600" />
        </branch>
        <branch name="XLXN_417">
            <wire x2="1568" y1="1248" y2="1248" x1="1424" />
            <wire x2="1568" y1="1248" y2="2464" x1="1568" />
            <wire x2="3088" y1="2464" y2="2464" x1="1568" />
            <wire x2="2256" y1="1248" y2="1248" x1="1568" />
        </branch>
        <branch name="down_in">
            <wire x2="2256" y1="1184" y2="1184" x1="1888" />
        </branch>
        <branch name="up_in">
            <wire x2="2256" y1="1120" y2="1120" x1="1888" />
        </branch>
        <branch name="right_in">
            <wire x2="2256" y1="1056" y2="1056" x1="1888" />
        </branch>
        <branch name="left_in">
            <wire x2="2256" y1="992" y2="992" x1="1888" />
        </branch>
        <instance x="2256" y="1408" name="XLXI_81" orien="R0">
        </instance>
        <branch name="XLXN_189">
            <wire x2="4240" y1="992" y2="992" x1="4096" />
            <wire x2="4320" y1="992" y2="992" x1="4240" />
            <wire x2="4240" y1="992" y2="1056" x1="4240" />
            <wire x2="4320" y1="1056" y2="1056" x1="4240" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="4240" y1="832" y2="832" x1="4096" />
            <wire x2="4320" y1="832" y2="832" x1="4240" />
            <wire x2="4240" y1="832" y2="896" x1="4240" />
            <wire x2="4320" y1="896" y2="896" x1="4240" />
            <wire x2="4320" y1="768" y2="768" x1="4240" />
            <wire x2="4240" y1="768" y2="832" x1="4240" />
        </branch>
        <branch name="XLXN_409">
            <wire x2="3536" y1="2336" y2="2336" x1="3520" />
            <wire x2="3536" y1="1248" y2="2336" x1="3536" />
            <wire x2="3712" y1="1248" y2="1248" x1="3536" />
        </branch>
        <branch name="XLXN_231">
            <wire x2="2816" y1="1792" y2="1792" x1="2704" />
            <wire x2="2816" y1="1056" y2="1792" x1="2816" />
            <wire x2="3712" y1="1056" y2="1056" x1="2816" />
        </branch>
        <branch name="XLXN_248">
            <wire x2="2768" y1="1056" y2="1056" x1="2640" />
            <wire x2="2768" y1="992" y2="1056" x1="2768" />
            <wire x2="3712" y1="992" y2="992" x1="2768" />
        </branch>
        <branch name="XLXN_247">
            <wire x2="2736" y1="992" y2="992" x1="2640" />
            <wire x2="2736" y1="928" y2="992" x1="2736" />
            <wire x2="3712" y1="928" y2="928" x1="2736" />
        </branch>
        <branch name="XLXN_246">
            <wire x2="2656" y1="928" y2="928" x1="2640" />
            <wire x2="2656" y1="864" y2="928" x1="2656" />
            <wire x2="3712" y1="864" y2="864" x1="2656" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="3024" y1="736" y2="736" x1="2624" />
            <wire x2="3024" y1="736" y2="800" x1="3024" />
            <wire x2="3712" y1="800" y2="800" x1="3024" />
        </branch>
        <instance x="3712" y="1024" name="XLXI_75" orien="R0">
        </instance>
        <branch name="XLXN_505">
            <wire x2="3632" y1="1440" y2="2320" x1="3632" />
            <wire x2="4448" y1="2320" y2="2320" x1="3632" />
            <wire x2="4448" y1="2320" y2="2464" x1="4448" />
            <wire x2="3712" y1="1440" y2="1440" x1="3632" />
            <wire x2="4448" y1="2464" y2="2464" x1="4432" />
        </branch>
        <branch name="XLXN_507">
            <wire x2="3664" y1="1504" y2="2272" x1="3664" />
            <wire x2="4496" y1="2272" y2="2272" x1="3664" />
            <wire x2="4496" y1="2272" y2="2560" x1="4496" />
            <wire x2="3712" y1="1504" y2="1504" x1="3664" />
            <wire x2="4496" y1="2560" y2="2560" x1="4432" />
        </branch>
        <branch name="XLXN_509">
            <wire x2="3712" y1="1568" y2="1568" x1="3696" />
            <wire x2="3696" y1="1568" y2="2224" x1="3696" />
            <wire x2="4528" y1="2224" y2="2224" x1="3696" />
            <wire x2="4528" y1="2224" y2="2656" x1="4528" />
            <wire x2="4528" y1="2656" y2="2656" x1="4432" />
        </branch>
        <branch name="XLXN_268">
            <wire x2="1472" y1="736" y2="736" x1="1456" />
            <wire x2="1472" y1="736" y2="1920" x1="1472" />
            <wire x2="2320" y1="1920" y2="1920" x1="1472" />
            <wire x2="1472" y1="1920" y2="2304" x1="1472" />
            <wire x2="2912" y1="2304" y2="2304" x1="1472" />
            <wire x2="1472" y1="2304" y2="2896" x1="1472" />
            <wire x2="3888" y1="2896" y2="2896" x1="1472" />
            <wire x2="1488" y1="736" y2="736" x1="1472" />
            <wire x2="3088" y1="2016" y2="2016" x1="2912" />
            <wire x2="2912" y1="2016" y2="2304" x1="2912" />
            <wire x2="3888" y1="2720" y2="2896" x1="3888" />
            <wire x2="4000" y1="2720" y2="2720" x1="3888" />
        </branch>
        <branch name="XLXN_514">
            <wire x2="2064" y1="1984" y2="1984" x1="2048" />
            <wire x2="2320" y1="1984" y2="1984" x1="2064" />
            <wire x2="2064" y1="1984" y2="2816" x1="2064" />
            <wire x2="4000" y1="2816" y2="2816" x1="2064" />
            <wire x2="2064" y1="1440" y2="1696" x1="2064" />
            <wire x2="2064" y1="1696" y2="1984" x1="2064" />
            <wire x2="2768" y1="1696" y2="1696" x1="2064" />
            <wire x2="2768" y1="1696" y2="2080" x1="2768" />
            <wire x2="3088" y1="2080" y2="2080" x1="2768" />
            <wire x2="2256" y1="1440" y2="1440" x1="2064" />
            <wire x2="4000" y1="2784" y2="2816" x1="4000" />
        </branch>
        <iomarker fontsize="28" x="656" y="736" name="clk" orien="R180" />
        <iomarker fontsize="28" x="688" y="800" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1888" y="992" name="left_in" orien="R180" />
        <iomarker fontsize="28" x="1888" y="1056" name="right_in" orien="R180" />
        <iomarker fontsize="28" x="1888" y="1120" name="up_in" orien="R180" />
        <iomarker fontsize="28" x="1888" y="1184" name="down_in" orien="R180" />
        <iomarker fontsize="28" x="1936" y="480" name="HS" orien="R0" />
        <iomarker fontsize="28" x="1936" y="544" name="VS" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1984" name="reset" orien="R180" />
        <iomarker fontsize="28" x="736" y="1904" name="an_0" orien="R0" />
        <iomarker fontsize="28" x="736" y="2128" name="an_1" orien="R0" />
        <iomarker fontsize="28" x="736" y="2352" name="an_2" orien="R0" />
        <iomarker fontsize="28" x="736" y="2576" name="an_3" orien="R0" />
        <iomarker fontsize="28" x="4672" y="672" name="red_2" orien="R0" />
        <iomarker fontsize="28" x="4672" y="544" name="red_0" orien="R0" />
        <iomarker fontsize="28" x="4672" y="608" name="red_1" orien="R0" />
        <iomarker fontsize="28" x="4672" y="992" name="blue_0" orien="R0" />
        <iomarker fontsize="28" x="4672" y="1056" name="blue_1" orien="R0" />
        <iomarker fontsize="28" x="4672" y="896" name="green_2" orien="R0" />
        <iomarker fontsize="28" x="4672" y="768" name="green_0" orien="R0" />
        <iomarker fontsize="28" x="4672" y="832" name="green_1" orien="R0" />
        <text style="alignment:TCENTER;fontsize:250;fontname:Arial" x="2656" y="40">Maze That Pays</text>
    </sheet>
</drawing>