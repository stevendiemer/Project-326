<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="OUTPUT(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="anode_out(3:0)" />
        <signal name="sev_seg(7:0)" />
        <signal name="switches(7:0)" />
        <signal name="CLK_50" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="OUTPUT(7:0)" />
        <port polarity="Output" name="anode_out(3:0)" />
        <port polarity="Output" name="sev_seg(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <port polarity="Input" name="CLK_50" />
        <blockdef name="cpu">
            <timestamp>2011-3-16T22:9:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-156" y2="-156" x1="320" />
            <rect width="64" x="320" y="-168" height="24" />
        </blockdef>
        <blockdef name="sev_seg_display">
            <timestamp>2012-3-20T4:0:12</timestamp>
            <rect width="368" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="cpu" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="switches(7:0)" name="Inport0(7:0)" />
            <blockpin name="Inport1(7:0)" />
            <blockpin signalname="OUTPUT(7:0)" name="Outport0(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="Outport1(7:0)" />
        </block>
        <block symbolname="sev_seg_display" name="XLXI_2">
            <blockpin signalname="CLK_50" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="OUTPUT(7:0)" name="num_display1(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="num_display2(7:0)" />
            <blockpin signalname="anode_out(3:0)" name="anode_out(3:0)" />
            <blockpin signalname="sev_seg(7:0)" name="sev_seg(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1440" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1088" y1="1216" y2="1216" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1216" name="CLK" orien="R180" />
        <branch name="RESET">
            <wire x2="1088" y1="1280" y2="1280" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1280" name="RESET" orien="R180" />
        <branch name="OUTPUT(7:0)">
            <wire x2="1488" y1="1216" y2="1216" x1="1472" />
            <wire x2="1872" y1="1216" y2="1216" x1="1488" />
            <wire x2="2000" y1="784" y2="784" x1="1488" />
            <wire x2="1488" y1="784" y2="1216" x1="1488" />
        </branch>
        <instance x="1872" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2000" y="784" name="OUTPUT(7:0)" orien="R0" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1152" type="branch" />
            <wire x2="1872" y1="1152" y2="1152" x1="1792" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1872" y1="1280" y2="1280" x1="1472" />
        </branch>
        <branch name="anode_out(3:0)">
            <wire x2="2544" y1="1088" y2="1088" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1088" name="anode_out(3:0)" orien="R0" />
        <branch name="sev_seg(7:0)">
            <wire x2="2384" y1="1280" y2="1280" x1="2368" />
            <wire x2="2544" y1="1280" y2="1280" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1280" name="sev_seg(7:0)" orien="R0" />
        <branch name="switches(7:0)">
            <wire x2="1088" y1="1344" y2="1344" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1344" name="switches(7:0)" orien="R180" />
        <branch name="CLK_50">
            <wire x2="1872" y1="1088" y2="1088" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1088" name="CLK_50" orien="R180" />
    </sheet>
</drawing>