<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="11" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="battery">
<description>&lt;b&gt;Lithium Batteries and NC Accus&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="CH291-1220LF">
<description>&lt;b&gt;Battery Holder, SMT, 12mm&lt;/b&gt;&lt;p&gt;
multicomp PART NO. CH291-1220LF&lt;br&gt;
Source: &lt;a href="http://www.farnell.com/datasheets/1505860.pdf"&gt; Data sheet &lt;/a&gt;</description>
<smd name="-" x="0" y="14.1458" dx="2.3" dy="4.3" layer="1"/>
<smd name="+" x="0" y="-2.2955" dx="2.3" dy="3.66" layer="1"/>
<hole x="0" y="2" drill="1.3"/>
<hole x="0" y="9.5" drill="1"/>
<wire x1="-6.4239" y1="1.995" x2="-1.5375" y2="13.6375" width="0.2" layer="21" curve="-111.250047"/>
<wire x1="1.5375" y1="13.6375" x2="6.4239" y2="1.995" width="0.2" layer="21" curve="-111.445767"/>
<wire x1="-6.4239" y1="1.995" x2="6.4239" y2="1.995" width="0.2" layer="51" curve="-245.830438"/>
<wire x1="-6.4239" y1="1.995" x2="-6.9825" y2="0.9975" width="0.2" layer="21" curve="-124.211808"/>
<wire x1="-6.9825" y1="0.9975" x2="-7.4214" y2="0.5586" width="0.2" layer="21" curve="92.702019"/>
<wire x1="-7.4214" y1="0.5586" x2="-7.4214" y2="-0.2394" width="0.2" layer="21"/>
<wire x1="-7.4214" y1="-0.2394" x2="-6.8628" y2="-0.7581" width="0.2" layer="21" curve="94.242193"/>
<wire x1="-6.8628" y1="-0.7581" x2="-4.5885" y2="-0.7581" width="0.2" layer="21"/>
<wire x1="-4.5885" y1="-0.7581" x2="-1.5215" y2="-1.4364" width="0.2" layer="21"/>
<wire x1="-1.5215" y1="-1.4364" x2="-1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="6.4239" y1="1.995" x2="6.9825" y2="0.9975" width="0.2" layer="21" curve="124.211808"/>
<wire x1="6.9825" y1="0.9975" x2="7.4214" y2="0.5586" width="0.2" layer="21" curve="-92.702019"/>
<wire x1="7.4214" y1="0.5586" x2="7.4214" y2="-0.2394" width="0.2" layer="21"/>
<wire x1="7.4214" y1="-0.2394" x2="6.8628" y2="-0.7581" width="0.2" layer="21" curve="-94.242193"/>
<wire x1="6.8628" y1="-0.7581" x2="4.5885" y2="-0.7581" width="0.2" layer="21"/>
<wire x1="4.5885" y1="-0.7581" x2="1.5215" y2="-1.4364" width="0.2" layer="21"/>
<wire x1="1.5215" y1="-1.4364" x2="1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-6.5" y1="0.1596" x2="6.5" y2="0.1596" width="0.2" layer="51"/>
<wire x1="-3.3117" y1="0.6783" x2="-1.8354" y2="12.2892" width="0.2" layer="21" curve="-131.708908"/>
<wire x1="1.7955" y1="12.2892" x2="3.3117" y2="0.6783" width="0.2" layer="21" curve="-132.206586"/>
<wire x1="1.5215" y1="0.1596" x2="6.5" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-6.5" y1="0.1596" x2="-1.5215" y2="0.1596" width="0.2" layer="21"/>
<wire x1="-3.3117" y1="0.6783" x2="-3.5125" y2="0.1625" width="0.2" layer="21" curve="-159.758355"/>
<wire x1="3.3117" y1="0.6783" x2="3.5" y2="0.1625" width="0.2" layer="21" curve="157.437467"/>
<text x="2" y="14" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="1.75" y="-3.5" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.9" y1="12" x2="0.9" y2="15.825" layer="51"/>
<rectangle x1="-0.9" y1="-3.625" x2="0.9" y2="-0.5" layer="51"/>
<wire x1="-3" y1="11.75" x2="-2.5" y2="11" width="0.2" layer="21"/>
<wire x1="-2.5" y1="11" x2="-3.5" y2="10.25" width="0.2" layer="21"/>
<wire x1="-3.5" y1="10.25" x2="-4.125" y2="10.8875" width="0.2" layer="21"/>
<wire x1="3" y1="11.75" x2="2.5" y2="11" width="0.2" layer="21"/>
<wire x1="2.5" y1="11" x2="3.5" y2="10.25" width="0.2" layer="21"/>
<wire x1="3.5" y1="10.25" x2="4.125" y2="10.8875" width="0.2" layer="21"/>
<wire x1="-1.5" y1="10" x2="-1.5" y2="3" width="0.2" layer="21"/>
<wire x1="-1.5" y1="3" x2="1.5" y2="3" width="0.2" layer="21"/>
<wire x1="1.5" y1="3" x2="1.5" y2="10" width="0.2" layer="21"/>
<wire x1="1.5" y1="10" x2="1" y2="10" width="0.2" layer="21"/>
<wire x1="1" y1="10" x2="1" y2="3.75" width="0.2" layer="21"/>
<wire x1="1" y1="3.75" x2="0.25" y2="3.75" width="0.2" layer="21"/>
<wire x1="0.25" y1="3.75" x2="0.25" y2="5.5" width="0.2" layer="21"/>
<wire x1="0.25" y1="5.5" x2="-0.25" y2="5.5" width="0.2" layer="21"/>
<wire x1="-0.25" y1="5.5" x2="-0.25" y2="3.75" width="0.2" layer="21"/>
<wire x1="-0.25" y1="3.75" x2="-1" y2="3.75" width="0.2" layer="21"/>
<wire x1="-1" y1="3.75" x2="-1" y2="10" width="0.2" layer="21"/>
<wire x1="-1" y1="10" x2="-1.5" y2="10" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="1V2">
<wire x1="-0.635" y1="0.635" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="0.635" y1="2.54" x2="0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0.635" y1="0" x2="0.635" y2="-2.54" width="0.4064" layer="94"/>
<text x="-1.27" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="-" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CH291-1220LF" prefix="G">
<description>&lt;b&gt;Battery Holder, SMT, 12mm&lt;/b&gt;&lt;p&gt;
multicomp PART NO. CH291-1220LF&lt;br&gt;
Source: &lt;a href="http://www.farnell.com/datasheets/1505860.pdf"&gt; Data sheet &lt;/a&gt;</description>
<gates>
<gate name="G1" symbol="1V2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CH291-1220LF">
<connects>
<connect gate="G1" pin="+" pad="+"/>
<connect gate="G1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="V_BATT">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="V_BATT" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="3.3V">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3.3V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V_BATT" prefix="SUPPLY">
<description>&lt;b&gt;V_BATT&lt;/b&gt;&lt;br&gt;
Generic symbol for the battery input to a system.</description>
<gates>
<gate name="G$1" symbol="V_BATT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3.3V" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diode">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOD-123_MINI-SMA">
<description>&lt;b&gt;Molded plasitc,JEDEC SOD-123/Mini SMA&lt;/b&gt;&lt;p&gt;
Source: Comchip CGRM4001-G.pdf</description>
<wire x1="-1.8725" y1="0.835" x2="1.8725" y2="0.835" width="0.127" layer="51"/>
<wire x1="-1.8725" y1="-0.835" x2="1.8725" y2="-0.835" width="0.127" layer="51"/>
<wire x1="-0.3175" y1="0" x2="0.3175" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="0.3175" y1="-0.4763" x2="0.3175" y2="0" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="0.4763" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0.4763" x2="-0.3175" y2="0" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.3175" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.3175" y2="0.4763" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.5613" y2="0" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.5613" y2="0" width="0.127" layer="21"/>
<smd name="A" x="1.8" y="0" dx="1.5" dy="2.1" layer="1" rot="R180"/>
<smd name="C" x="-1.8" y="0" dx="1.5" dy="2.1" layer="1" rot="R180"/>
<text x="-3.048" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.048" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.95" y1="-0.9" x2="-1.5875" y2="0.9" layer="51"/>
<rectangle x1="1.5875" y1="-0.9" x2="1.95" y2="0.9" layer="51"/>
<rectangle x1="-1.0249" y1="-0.9" x2="-0.6625" y2="0.9" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="D">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CGRM400*-G" prefix="D">
<description>&lt;b&gt;Molded plasitc,JEDEC SOD-123/Mini SMA&lt;/b&gt;&lt;p&gt;
Source: Comchip CGRM4001-G.pdf</description>
<gates>
<gate name="G$1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOD-123_MINI-SMA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="1"/>
<technology name="2"/>
<technology name="3"/>
<technology name="4"/>
<technology name="5"/>
<technology name="6"/>
<technology name="7"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Electromechanical">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find anything that moves- switches, relays, buttons, potentiometers. Also, anything that goes on a board but isn't electrical in nature- screws, standoffs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SWITCH-SPDT">
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="0" y="-2.54" drill="1.016" diameter="1.8796"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="AYZ0202">
<description>&lt;b&gt;DPDT Slide Switch SMD&lt;/b&gt;
www.SparkFun.com SKU : Comp-SMDS</description>
<wire x1="-3.6" y1="1.75" x2="-3.6" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-3.6" y1="-1.75" x2="3.6" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="3.6" y1="-1.75" x2="3.6" y2="1.75" width="0.2032" layer="21"/>
<wire x1="3.6" y1="1.75" x2="-3.6" y2="1.75" width="0.2032" layer="21"/>
<smd name="3" x="2.5" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="2" x="0" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="1" x="-2.5" y="2.825" dx="1" dy="1.15" layer="1"/>
<smd name="6" x="2.5" y="-2.825" dx="1" dy="1.15" layer="1"/>
<smd name="5" x="0" y="-2.825" dx="1" dy="1.15" layer="1"/>
<smd name="4" x="-2.5" y="-2.825" dx="1" dy="1.15" layer="1"/>
<text x="-2.54" y="1.143" size="0.4064" layer="25">&gt;Name</text>
<text x="0.508" y="1.143" size="0.4064" layer="27">&gt;Value</text>
<hole x="1.5" y="0" drill="0.85"/>
<hole x="-1.5" y="0" drill="0.85"/>
</package>
<package name="SWITCHE-DPDT">
<wire x1="8" y1="3.25" x2="-8" y2="3.25" width="0.127" layer="51"/>
<wire x1="-8" y1="3.25" x2="-8" y2="-3.25" width="0.127" layer="51"/>
<wire x1="-8" y1="-3.25" x2="8" y2="-3.25" width="0.127" layer="51"/>
<wire x1="8" y1="-3.25" x2="8" y2="3.25" width="0.127" layer="51"/>
<wire x1="-6" y1="3.25" x2="6" y2="3.25" width="0.2032" layer="21"/>
<wire x1="8" y1="1" x2="8" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-3.25" x2="-6" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-8" y1="-1" x2="-8" y2="1" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.5" y="3" drill="1.5" diameter="2.54"/>
<pad name="P$2" x="-7.5" y="-3" drill="1.5" diameter="2.54"/>
<pad name="P$3" x="7.5" y="3" drill="1.5" diameter="2.54"/>
<pad name="P$4" x="7.5" y="-3" drill="1.5" diameter="2.54"/>
<pad name="1" x="-4" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="2" x="0" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="3" x="4" y="1.25" drill="0.7" diameter="1.6764"/>
<pad name="4" x="-4" y="-1.25" drill="0.7" diameter="1.6764"/>
<pad name="5" x="0" y="-1.25" drill="0.7" diameter="1.6764"/>
<pad name="6" x="4" y="-1.25" drill="0.7" diameter="1.6764"/>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SWITCH-SPDT-SMD">
<wire x1="-4.5" y1="1.75" x2="-4.5" y2="-1.75" width="0.127" layer="51"/>
<wire x1="-4.5" y1="-1.75" x2="4.5" y2="-1.75" width="0.127" layer="51"/>
<wire x1="4.5" y1="-1.75" x2="4.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="4.5" y1="1.75" x2="2" y2="1.75" width="0.127" layer="51"/>
<wire x1="2" y1="1.75" x2="0.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="1.75" x2="-4.5" y2="1.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="1.75" x2="0.5" y2="3.75" width="0.127" layer="51"/>
<wire x1="0.5" y1="3.75" x2="2" y2="3.75" width="0.127" layer="51"/>
<wire x1="2" y1="3.75" x2="2" y2="1.75" width="0.127" layer="51"/>
<wire x1="-4" y1="-1.75" x2="-4.5" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="-1.75" x2="-4.5" y2="1.75" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.75" x2="4.5" y2="1.75" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.75" x2="4.5" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.75" x2="4" y2="-1.75" width="0.2032" layer="21"/>
<smd name="1" x="-2.5" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<smd name="2" x="0" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<smd name="3" x="2.5" y="-2.75" dx="1.2" dy="2.5" layer="1" rot="R180"/>
<text x="-1.27" y="0.635" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-1.27" size="0.6096" layer="27">&gt;Value</text>
<hole x="-3.55" y="0" drill="0.9"/>
<hole x="3.55" y="0" drill="0.9"/>
</package>
<package name="SWITCH-SPDT_LOCK.007S">
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.7178" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="0" y="-2.7178" drill="1.016" diameter="1.8796"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="-0.3048" x2="0.2286" y2="0.3048" layer="51"/>
<rectangle x1="-0.2286" y1="2.2352" x2="0.2286" y2="2.8448" layer="51"/>
<rectangle x1="-0.2286" y1="-2.8448" x2="0.2286" y2="-2.2352" layer="51"/>
</package>
<package name="SWITCH-SPDT_KIT">
<description>&lt;h3&gt;SWITCH-SPDT_KIT&lt;/h3&gt;
Through-hole SPDT Switch&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="2.175" y1="5.815" x2="-2.175" y2="5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="5.815" x2="-2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="-2.175" y1="-5.815" x2="2.175" y2="-5.815" width="0.2032" layer="21"/>
<wire x1="2.175" y1="-5.815" x2="2.175" y2="5.815" width="0.2032" layer="21"/>
<pad name="1" x="0" y="2.7178" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="3" x="0" y="-2.7178" drill="1.016" diameter="1.8796" stop="no"/>
<text x="-3.81" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="-0.3048" x2="0.2286" y2="0.3048" layer="51"/>
<rectangle x1="-0.2286" y1="2.2352" x2="0.2286" y2="2.8448" layer="51"/>
<rectangle x1="-0.2286" y1="-2.8448" x2="0.2286" y2="-2.2352" layer="51"/>
<polygon width="0.127" layer="30">
<vertex x="-0.0178" y="1.8414" curve="-90.039946"/>
<vertex x="-0.8787" y="2.6975" curve="-90"/>
<vertex x="-0.0026" y="3.5916" curve="-90.006409"/>
<vertex x="0.8738" y="2.6975" curve="-90.03214"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.0051" y="-3.5967" curve="-90.006558"/>
<vertex x="-0.8788" y="-2.7431" curve="-90.037923"/>
<vertex x="0.0128" y="-1.8363" curve="-90.006318"/>
<vertex x="0.8814" y="-2.7432" curve="-90.038792"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-0.0102" y="-0.8738" curve="-90.019852"/>
<vertex x="-0.8762" y="-0.0203" curve="-90.019119"/>
<vertex x="0.0153" y="0.8789" curve="-90"/>
<vertex x="0.8739" y="-0.0077" curve="-90.038897"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0" y="2.2758" curve="-90.012891"/>
<vertex x="-0.4445" y="2.7" curve="-90"/>
<vertex x="0" y="3.1673" curve="-90"/>
<vertex x="0.4419" y="2.7102" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.0026" y="-3.1648" curve="-90.012891"/>
<vertex x="-0.4419" y="-2.7406" curve="-90"/>
<vertex x="0.0026" y="-2.2733" curve="-90"/>
<vertex x="0.4445" y="-2.7304" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="0.0102" y="-0.4471" curve="-90.012891"/>
<vertex x="-0.4343" y="-0.0229" curve="-90"/>
<vertex x="0.0102" y="0.4444" curve="-90"/>
<vertex x="0.4521" y="-0.0127" curve="-90.012967"/>
</polygon>
</package>
<package name="SWITCH-SPST-SMD-A">
<wire x1="-3.35" y1="1.3" x2="-3.35" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-3.35" y1="-1.3" x2="3.35" y2="-1.3" width="0.127" layer="51"/>
<wire x1="3.35" y1="-1.3" x2="3.35" y2="1.3" width="0.127" layer="51"/>
<wire x1="3.35" y1="1.3" x2="-0.1" y2="1.3" width="0.127" layer="51"/>
<wire x1="-0.1" y1="1.3" x2="-1.4" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.4" y1="1.3" x2="-3.35" y2="1.3" width="0.127" layer="51"/>
<wire x1="-0.1" y1="1.3" x2="-0.1" y2="2.8" width="0.127" layer="51"/>
<wire x1="-0.1" y1="2.8" x2="-1.4" y2="2.8" width="0.127" layer="51"/>
<wire x1="-1.4" y1="2.8" x2="-1.4" y2="1.3" width="0.127" layer="51"/>
<wire x1="-3.35" y1="0.3" x2="-3.35" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="3.35" y1="0.3" x2="3.35" y2="-0.3" width="0.2032" layer="21"/>
<wire x1="2.7" y1="1.3" x2="-2.7" y2="1.3" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1.3" x2="0" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="2" x="-0.75" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="3" x="2.25" y="-1.75" dx="0.7" dy="1.5" layer="1" rot="R180"/>
<smd name="GND1" x="-3.65" y="1" dx="1" dy="0.6" layer="1"/>
<smd name="GND2" x="-3.65" y="-1.1" dx="1" dy="0.8" layer="1"/>
<smd name="GND3" x="3.65" y="1" dx="1" dy="0.6" layer="1"/>
<smd name="GND4" x="3.65" y="-1.1" dx="1" dy="0.8" layer="1"/>
<text x="-1.27" y="0.635" size="0.6096" layer="25">&gt;Name</text>
<text x="-1.27" y="-1.27" size="0.6096" layer="27">&gt;Value</text>
<hole x="-1.5" y="0" drill="0.9"/>
<hole x="1.5" y="0" drill="0.9"/>
</package>
<package name="TACTILE-PTH">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="TACTILE_SWITCH_SMD-2">
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<wire x1="-2.25" y1="2.25" x2="2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="2.25" x2="2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="-2.25" x2="-2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-2.25" x2="-2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="-2.2" y1="0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="1.3" y1="2.2" x2="-1.3" y2="2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="-2.2" x2="1.3" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="0.8" x2="1.8" y2="0.8" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="1.8" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.8" x2="-2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="2" x="2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="3" x="-2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="4" x="-2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE-PTH-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<wire x1="-6" y1="5" x2="-5" y2="6" width="0.2032" layer="21" curve="-90"/>
<wire x1="5" y1="6" x2="6" y2="5" width="0.2032" layer="21" curve="-90"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21" curve="-90"/>
<wire x1="-5" y1="-6" x2="-6" y2="-5" width="0.2032" layer="21" curve="-90"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<pad name="4" x="-6.25" y="2.5" drill="1.2" diameter="2.159"/>
<pad name="2" x="-6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="1" x="6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="3" x="6.25" y="2.5" drill="1.2" diameter="2.159"/>
</package>
<package name="TACTILE-SWITCH-1101NE">
<description>SparkFun SKU# COM-08229</description>
<wire x1="-3" y1="1.1" x2="-3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="3" y1="1.1" x2="3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="-2.75" y1="1.75" x2="-3" y2="1.5" width="0.2032" layer="21" curve="90"/>
<wire x1="-2.75" y1="1.75" x2="2.75" y2="1.75" width="0.2032" layer="21"/>
<wire x1="2.75" y1="1.75" x2="3" y2="1.5" width="0.2032" layer="21" curve="-90"/>
<wire x1="3" y1="-1.5" x2="2.75" y2="-1.75" width="0.2032" layer="21" curve="-90"/>
<wire x1="2.75" y1="-1.75" x2="-2.75" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-3" y1="-1.5" x2="-2.75" y2="-1.75" width="0.2032" layer="21" curve="90"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-3" y1="1.1" x2="-3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="1.1" x2="3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="-1.5" x2="3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="-1.5" y2="-0.75" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-0.75" x2="-1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-2" y1="0" x2="-1" y2="0" width="0.127" layer="51"/>
<wire x1="-1" y1="0" x2="0.1" y2="0.5" width="0.127" layer="51"/>
<wire x1="0.3" y1="0" x2="2" y2="0" width="0.127" layer="51"/>
<smd name="1" x="-3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<smd name="2" x="3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<text x="-3" y="2" size="0.762" layer="25">&gt;NAME</text>
<text x="-3" y="-2.7" size="0.762" layer="27">&gt;VALUE</text>
</package>
<package name="REED_SWITCH_PTH">
<wire x1="-6.985" y1="-0.635" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-0.635" x2="-6.985" y2="0" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0.635" x2="6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="6.985" y1="0.635" x2="6.985" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-7.62" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="7.62" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE_SWITCH_TALL">
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.254" layer="21"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.254" layer="21"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.254" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.75" width="0.254" layer="21"/>
<smd name="A1" x="-3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="A2" x="3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B1" x="-3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B2" x="3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
</package>
<package name="REED_SWITCH_PLASTIC">
<wire x1="-7.5" y1="-1.65" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="-1.65" x2="-7.5" y2="0" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="1.65" x2="7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="7.5" y1="1.65" x2="7.5" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.72" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.72" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE-PTH-SIDEEZ">
<wire x1="1.5" y1="-3.8" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="3.5" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="3.5" x2="3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3.65" y1="3.5" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="3" y2="2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="2" x2="3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="1" x2="-3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.65" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.65" y1="-2" x2="3.65" y2="1" width="0.2032" layer="21"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.2032" layer="21"/>
<pad name="ANCHOR1" x="-3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="ANCHOR2" x="3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="1" x="-2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<pad name="2" x="2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<circle x="2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="1.143" width="0" layer="30"/>
<circle x="2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="-2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="3.5" y="2.5" radius="1.143" width="0" layer="30"/>
</package>
<package name="TACTILE_SWITCH_SMD-3">
<wire x1="-2.04" y1="-0.44" x2="-2.04" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="1.14" x2="1.04" y2="1.14" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="0.8" width="0.15" layer="21"/>
<smd name="1" x="-1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="2" x="1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="3" x="-1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="4" x="1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<wire x1="2.06" y1="-0.44" x2="2.06" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="-1.16" x2="1.04" y2="-1.16" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-SMD-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<smd name="4" x="-6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="2" x="-6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="1" x="6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="3" x="6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<wire x1="-6" y1="-5" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="-6" y2="5" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-PTH-EZ">
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<polygon width="0.127" layer="30">
<vertex x="-3.2664" y="3.142"/>
<vertex x="-3.2589" y="3.1445" curve="89.986886"/>
<vertex x="-4.1326" y="2.286"/>
<vertex x="-4.1351" y="2.2657" curve="90.00652"/>
<vertex x="-3.2563" y="1.392"/>
<vertex x="-3.2487" y="1.3869" curve="90.006616"/>
<vertex x="-2.3826" y="2.2403"/>
<vertex x="-2.3775" y="2.2683" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2462" y="2.7026"/>
<vertex x="-3.2589" y="2.7051" curve="90.026544"/>
<vertex x="-3.6881" y="2.2733"/>
<vertex x="-3.6881" y="2.2632" curve="89.974074"/>
<vertex x="-3.2562" y="1.8213"/>
<vertex x="-3.2259" y="1.8186" curve="90.051271"/>
<vertex x="-2.8093" y="2.2658"/>
<vertex x="-2.8093" y="2.2606" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="3.1395"/>
<vertex x="3.2486" y="3.142" curve="89.986886"/>
<vertex x="2.3749" y="2.2835"/>
<vertex x="2.3724" y="2.2632" curve="90.00652"/>
<vertex x="3.2512" y="1.3895"/>
<vertex x="3.2588" y="1.3844" curve="90.006616"/>
<vertex x="4.1249" y="2.2378"/>
<vertex x="4.13" y="2.2658" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="2.7001"/>
<vertex x="3.2486" y="2.7026" curve="90.026544"/>
<vertex x="2.8194" y="2.2708"/>
<vertex x="2.8194" y="2.2607" curve="89.974074"/>
<vertex x="3.2513" y="1.8188"/>
<vertex x="3.2816" y="1.8161" curve="90.051271"/>
<vertex x="3.6982" y="2.2633"/>
<vertex x="3.6982" y="2.2581" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.2613" y="-1.3868"/>
<vertex x="-3.2538" y="-1.3843" curve="89.986886"/>
<vertex x="-4.1275" y="-2.2428"/>
<vertex x="-4.13" y="-2.2631" curve="90.00652"/>
<vertex x="-3.2512" y="-3.1368"/>
<vertex x="-3.2436" y="-3.1419" curve="90.006616"/>
<vertex x="-2.3775" y="-2.2885"/>
<vertex x="-2.3724" y="-2.2605" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2411" y="-1.8262"/>
<vertex x="-3.2538" y="-1.8237" curve="90.026544"/>
<vertex x="-3.683" y="-2.2555"/>
<vertex x="-3.683" y="-2.2656" curve="89.974074"/>
<vertex x="-3.2511" y="-2.7075"/>
<vertex x="-3.2208" y="-2.7102" curve="90.051271"/>
<vertex x="-2.8042" y="-2.263"/>
<vertex x="-2.8042" y="-2.2682" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="-1.3843"/>
<vertex x="3.2486" y="-1.3818" curve="89.986886"/>
<vertex x="2.3749" y="-2.2403"/>
<vertex x="2.3724" y="-2.2606" curve="90.00652"/>
<vertex x="3.2512" y="-3.1343"/>
<vertex x="3.2588" y="-3.1394" curve="90.006616"/>
<vertex x="4.1249" y="-2.286"/>
<vertex x="4.13" y="-2.258" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="-1.8237"/>
<vertex x="3.2486" y="-1.8212" curve="90.026544"/>
<vertex x="2.8194" y="-2.253"/>
<vertex x="2.8194" y="-2.2631" curve="89.974074"/>
<vertex x="3.2513" y="-2.705"/>
<vertex x="3.2816" y="-2.7077" curve="90.051271"/>
<vertex x="3.6982" y="-2.2605"/>
<vertex x="3.6982" y="-2.2657" curve="90.012964"/>
</polygon>
</package>
<package name="TACTILE-SWITCH-SMD">
<wire x1="-1.54" y1="-2.54" x2="-2.54" y2="-1.54" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-1.24" x2="-2.54" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.54" x2="-1.54" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-1.54" y1="2.54" x2="1.54" y2="2.54" width="0.2032" layer="21"/>
<wire x1="1.54" y1="2.54" x2="2.54" y2="1.54" width="0.2032" layer="51"/>
<wire x1="2.54" y1="1.24" x2="2.54" y2="-1.24" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.54" x2="1.54" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="1.54" y1="-2.54" x2="-1.54" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="-2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="2" x="2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="3" x="-2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="4" x="2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<hole x="0" y="0.9" drill="0.7"/>
<hole x="0" y="-0.9" drill="0.7"/>
<smd name="1" x="-1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<wire x1="-2" y1="1.2" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="2" y2="1.2" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.2" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-1.5" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.7" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="0.7" y2="-2.1" width="0.127" layer="21"/>
<wire x1="0.7" y1="-2.1" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<text x="-2" y="1.7" size="0.8128" layer="25" ratio="15">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TOGGLE">
<wire x1="0" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.175" y2="-2.54" width="0.127" layer="94"/>
<wire x1="2.54" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0.2032" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0.2032" layer="94"/>
<circle x="0" y="0" radius="0.3592" width="0.2032" layer="94"/>
<text x="-1.905" y="-6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="S" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="O" x="5.08" y="2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="SWITCH-MOMENTARY-2">
<wire x1="1.905" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="2"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SWITCH-SPDT" prefix="S" uservalue="yes">
<description>&lt;b&gt;SPDT Switch&lt;/b&gt;&lt;br&gt;
Simple slide switch, Spark Fun Electronics SKU : COM-00102&lt;br&gt;
DPDT SMT slide switch, AYZ0202, SWCH-08179</description>
<gates>
<gate name="1" symbol="TOGGLE" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="SWITCH-SPDT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08261"/>
</technology>
</technologies>
</device>
<device name="SMD" package="AYZ0202">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08179" constant="no"/>
<attribute name="SF_ID" value="COM-00597" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="SWITCHE-DPDT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH3" package="R_SW_TH">
<connects>
<connect gate="1" pin="O" pad="P$1"/>
<connect gate="1" pin="P" pad="P$2"/>
<connect gate="1" pin="S" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="SWITCH-SPDT-SMD">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_LOCK" package="SWITCH-SPDT_LOCK.007S">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="SWITCH-SPDT_KIT">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08261" constant="no"/>
</technology>
</technologies>
</device>
<device name="-SMD-A" package="SWITCH-SPST-SMD-A">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWITCH-MOMENTARY-2" prefix="S">
<description>Various NO switches- pushbuttons, reed, etc</description>
<gates>
<gate name="G$1" symbol="SWITCH-MOMENTARY-2" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="TACTILE-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" SWCH-08441" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-2" package="TACTILE_SWITCH_SMD-2">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-09213"/>
</technology>
</technologies>
</device>
<device name="12MM" package="TACTILE-PTH-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-09185" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-1101NE" package="TACTILE-SWITCH-1101NE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-00815" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH_REED" package="REED_SWITCH_PTH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-4" package="TACTILE_SWITCH_TALL">
<connects>
<connect gate="G$1" pin="1" pad="A2"/>
<connect gate="G$1" pin="2" pad="B2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-11966" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH_REED2" package="REED_SWITCH_PLASTIC">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-10467" constant="no"/>
</technology>
</technologies>
</device>
<device name="SIDE_EZ" package="TACTILE-PTH-SIDEEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-3" package="TACTILE_SWITCH_SMD-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-12MM" package="TACTILE-SMD-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_EZ" package="TACTILE-PTH-EZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08247" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-REDUNDANT" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08247" constant="no"/>
</technology>
</technologies>
</device>
<device name="TACTILE-SWITCH-SMD-RIGHT-ANGLE" package="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-12265" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603-CAP">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="0" y1="0.0305" x2="0" y2="-0.0305" width="0.5588" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="EIA3216">
<wire x1="-1" y1="-1.2" x2="-2.5" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-1.2" x2="-2.5" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="1.2" x2="-1" y2="1.2" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.2" x2="2.1" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="2.1" y1="-1.2" x2="2.5" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="2.5" y1="-0.8" x2="2.5" y2="0.8" width="0.2032" layer="21"/>
<wire x1="2.5" y1="0.8" x2="2.1" y2="1.2" width="0.2032" layer="21"/>
<wire x1="2.1" y1="1.2" x2="1" y2="1.2" width="0.2032" layer="21"/>
<wire x1="0.381" y1="1.016" x2="0.381" y2="-1.016" width="0.127" layer="21"/>
<smd name="C" x="-1.4" y="0" dx="1.6" dy="1.4" layer="1" rot="R90"/>
<smd name="A" x="1.4" y="0" dx="1.6" dy="1.4" layer="1" rot="R90"/>
<text x="-2.54" y="1.381" size="0.4064" layer="25">&gt;NAME</text>
<text x="0.408" y="1.332" size="0.4064" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="CAP_POL">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202" cap="flat"/>
<wire x1="-2.4669" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.376341" cap="flat"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.253" y1="0.668" x2="-1.364" y2="0.795" layer="94"/>
<rectangle x1="-1.872" y1="0.287" x2="-1.745" y2="1.176" layer="94"/>
<pin name="+" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="-" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="100PF-50V-5%(0603)" prefix="C" uservalue="yes">
<description>CAP-07883</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-07883" constant="no"/>
<attribute name="VALUE" value="100pF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0.1UF-25V-5%(0603)" prefix="C" uservalue="yes">
<description>CAP-08604</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08604"/>
<attribute name="VALUE" value="0.1uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1.0UF-16V-10%(0603)" prefix="C" uservalue="yes">
<description>CAP-00868</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-CAP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00868"/>
<attribute name="VALUE" value="1.0uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="10UF-16V-10%(TANT)" prefix="C" uservalue="yes">
<description>CAP-00811&lt;BR&gt;
1206/EIA-3216 Tantalum capacitor</description>
<gates>
<gate name="G$1" symbol="CAP_POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="EIA3216">
<connects>
<connect gate="G$1" pin="+" pad="A"/>
<connect gate="G$1" pin="-" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00811"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="User-Submitted">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find submitted parts from SparkFun users everywhere!&lt;br&gt;&lt;br&gt;
These are not necessarily parts we carry, but are parts that other users have determined function well with other parts in our libraries. Please keep in mind that it is the end user's responsibility to ensure correctness and suitablity for a given componet or application.
&lt;br&gt;&lt;br&gt;
If you find these parts useful, please consider helping the open-source community by contributing your own through GitHub. https://github.com/sparkfun/SparkFun-Eagle-Libraries
&lt;br&gt;&lt;br&gt;

&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SWPA4018S">
<smd name="P$1" x="-1.5" y="0" dx="1.3" dy="3.7" layer="1"/>
<smd name="P$2" x="1.5" y="0" dx="1.3" dy="3.7" layer="1"/>
</package>
<package name="M08-1.27">
<smd name="P$1" x="0" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$2" x="1.27" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$3" x="2.54" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$4" x="3.81" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$5" x="5.08" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$6" x="6.35" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$7" x="7.62" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<smd name="P$8" x="8.89" y="0" dx="1" dy="2" layer="1" roundness="100"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="10.16" y2="-2.54" width="0.127" layer="21"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="0" width="0.127" layer="21"/>
<polygon width="0.05" layer="21">
<vertex x="0" y="-1.6"/>
<vertex x="-0.4" y="-2"/>
<vertex x="0.4" y="-2"/>
</polygon>
</package>
<package name="WSOF-6">
<smd name="P$1" x="-0.5" y="-1.3" dx="0.3" dy="0.7" layer="1"/>
<smd name="P$2" x="0" y="-1.3" dx="0.3" dy="0.7" layer="1"/>
<smd name="P$3" x="0.5" y="-1.3" dx="0.3" dy="0.7" layer="1"/>
<smd name="P$4" x="0.5" y="1.3" dx="0.3" dy="0.7" layer="1"/>
<smd name="P$5" x="0" y="1.3" dx="0.3" dy="0.7" layer="1"/>
<smd name="P$6" x="-0.5" y="1.3" dx="0.3" dy="0.7" layer="1"/>
<wire x1="-1" y1="1.5" x2="-1" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1" y1="-1.5" x2="1" y2="1.5" width="0.127" layer="21"/>
<circle x="-0.896" y="-2.089" radius="0.170815625" width="0.1" layer="21"/>
<text x="-1.3" y="-1.5" size="0.5" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="INDUCTOR">
<pin name="P$1" x="-10.16" y="0" length="middle"/>
<pin name="P$2" x="10.16" y="0" length="middle" rot="R180"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="2.54" width="0.254" layer="94" curve="-90"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94" curve="-90"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="0" width="0.254" layer="94" curve="-90"/>
</symbol>
<symbol name="NRF24L01_MOUDLE">
<pin name="VCC" x="-2.54" y="7.62" length="middle"/>
<pin name="CE" x="-2.54" y="5.08" length="middle"/>
<pin name="CSN" x="-2.54" y="2.54" length="middle"/>
<pin name="SCK" x="-2.54" y="0" length="middle"/>
<pin name="MOSI" x="-2.54" y="-2.54" length="middle"/>
<pin name="MISO" x="-2.54" y="-5.08" length="middle"/>
<pin name="IRQ" x="-2.54" y="-7.62" length="middle"/>
<pin name="GND" x="-2.54" y="-10.16" length="middle"/>
<wire x1="5.08" y1="10.16" x2="0" y2="10.16" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="0" y="12.7" size="1.27" layer="95">&gt;NAME</text>
<text x="0" y="-15.24" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="BH1750">
<pin name="VCC" x="-12.7" y="2.54" length="middle"/>
<pin name="ADDR" x="-12.7" y="0" length="middle"/>
<pin name="GND" x="-12.7" y="-2.54" length="middle"/>
<pin name="SDA" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="DVI" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="SCL" x="12.7" y="-2.54" length="middle" rot="R180"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="2.032" layer="95">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="2.032" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SWPA4018S3R3MT">
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SWPA4018S">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NRF24L01_MODULE_SMD">
<gates>
<gate name="G$1" symbol="NRF24L01_MOUDLE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="M08-1.27">
<connects>
<connect gate="G$1" pin="CE" pad="P$2"/>
<connect gate="G$1" pin="CSN" pad="P$3"/>
<connect gate="G$1" pin="GND" pad="P$8"/>
<connect gate="G$1" pin="IRQ" pad="P$7"/>
<connect gate="G$1" pin="MISO" pad="P$6"/>
<connect gate="G$1" pin="MOSI" pad="P$5"/>
<connect gate="G$1" pin="SCK" pad="P$4"/>
<connect gate="G$1" pin="VCC" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BH1750">
<gates>
<gate name="G$1" symbol="BH1750" x="0" y="0"/>
</gates>
<devices>
<device name="" package="WSOF-6">
<connects>
<connect gate="G$1" pin="ADDR" pad="P$2"/>
<connect gate="G$1" pin="DVI" pad="P$5"/>
<connect gate="G$1" pin="GND" pad="P$3"/>
<connect gate="G$1" pin="SCL" pad="P$6"/>
<connect gate="G$1" pin="SDA" pad="P$4"/>
<connect gate="G$1" pin="VCC" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0603">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1.5KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-08306</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-08306" constant="no"/>
<attribute name="VALUE" value="1.5KOHM" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0.22OHM-1/4W-1%(0805)" prefix="R" uservalue="yes">
<description>RES-09883</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-09883"/>
<attribute name="VALUE" value="0.22" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Passives">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="PAD-JUMPER-3-NC_BY_PASTE_YES_SILK_FULL_BOX">
<wire x1="1.27" y1="-1.016" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.524" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="0.762" x2="-1.27" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="-0.762" x2="-1.27" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.762" x2="1.524" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.762" x2="-1.524" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.508" x2="-1.016" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.016" y1="0.508" x2="-1.016" y2="-0.508" width="0.127" layer="51"/>
<wire x1="-1.016" y1="-0.508" x2="1.016" y2="-0.508" width="0.127" layer="51"/>
<wire x1="1.016" y1="-0.508" x2="1.016" y2="0.508" width="0.127" layer="51"/>
<smd name="1" x="-0.8128" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<smd name="2" x="0" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<smd name="3" x="0.8128" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="-1.905" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-0.33138125" y="-0.4445" size="0.254" layer="51" rot="R40">PASTE</text>
<rectangle x1="-1.4986" y1="-0.9906" x2="1.4986" y2="0.9906" layer="31"/>
</package>
<package name="PTH-JUMPER-2-NO_NO_SILK">
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778"/>
<text x="-2.54" y="-1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="0" y="-1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="INDUCTOR-1206">
<wire x1="-1.778" y1="2.032" x2="-3.81" y2="2.032" width="0.127" layer="21"/>
<wire x1="-3.81" y1="2.032" x2="-3.81" y2="-2.032" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-2.032" x2="-1.524" y2="-2.032" width="0.127" layer="21"/>
<wire x1="1.524" y1="2.032" x2="3.81" y2="2.032" width="0.127" layer="21"/>
<wire x1="3.81" y1="2.032" x2="3.81" y2="-2.032" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.032" x2="1.524" y2="-2.032" width="0.127" layer="21"/>
<smd name="P$1" x="-2.54" y="0" dx="3.556" dy="2.032" layer="1" rot="R90"/>
<smd name="P$2" x="2.54" y="0" dx="3.556" dy="2.032" layer="1" rot="R90"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="-2.54" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="0603">
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<circle x="0" y="0" radius="0.127" width="0.127" layer="21"/>
<circle x="0" y="0" radius="0.0254" width="0.127" layer="21"/>
<circle x="0" y="0" radius="0.218496875" width="0.127" layer="21"/>
</package>
<package name="CR54">
<description>From: http://www.niccomp.com/catalog/npis_ls.pdf</description>
<wire x1="2.6" y1="2.6" x2="-2.6" y2="2.6" width="0.127" layer="51"/>
<wire x1="-2.6" y1="2.6" x2="-2.6" y2="-2.6" width="0.127" layer="51"/>
<wire x1="-2.6" y1="-2.6" x2="2.6" y2="-2.6" width="0.127" layer="51"/>
<wire x1="2.6" y1="-2.6" x2="2.6" y2="2.6" width="0.127" layer="51"/>
<wire x1="-2.87" y1="2.6" x2="-2.87" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="-2.87" x2="2.6" y2="-2.87" width="0.2032" layer="21"/>
<wire x1="2.87" y1="-2.6" x2="2.87" y2="2.6" width="0.2032" layer="21"/>
<wire x1="2.6" y1="2.87" x2="-2.6" y2="2.87" width="0.2032" layer="21"/>
<smd name="P$1" x="0" y="1.85" dx="4.2" dy="1.4" layer="1"/>
<smd name="P$2" x="0" y="-1.85" dx="4.2" dy="1.4" layer="1"/>
<text x="-2.04" y="0.41" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.04" y="-0.59" size="0.4064" layer="27">&gt;Value</text>
<rectangle x1="-2.1" y1="1.15" x2="2.1" y2="2.55" layer="51"/>
<rectangle x1="-2.1" y1="-2.55" x2="2.1" y2="-1.15" layer="51"/>
<wire x1="-2.87" y1="-2.6" x2="-2.6" y2="-2.87" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-2.87" x2="2.87" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="-2.87" y1="2.6" x2="-2.6" y2="2.87" width="0.2032" layer="21"/>
<wire x1="2.6" y1="2.87" x2="2.87" y2="2.6" width="0.2032" layer="21"/>
</package>
<package name="CDRH125">
<wire x1="-3.5" y1="6" x2="-6" y2="6" width="0.2032" layer="21"/>
<wire x1="-6" y1="6" x2="-6" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-6" x2="-3.5" y2="-6" width="0.2032" layer="21"/>
<wire x1="3.5" y1="-6" x2="6" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="-6" x2="6" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="6" x2="3.5" y2="6" width="0.2032" layer="21"/>
<smd name="1" x="0" y="4.9" dx="5.4" dy="4" layer="1"/>
<smd name="2" x="0" y="-4.9" dx="5.4" dy="4" layer="1"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.54" y="-1.27" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="B82462G">
<wire x1="3.15" y1="3.15" x2="-3.15" y2="3.15" width="0.127" layer="51"/>
<wire x1="-3.15" y1="3.15" x2="-3.15" y2="-3.15" width="0.127" layer="51"/>
<wire x1="-3.15" y1="-3.15" x2="3.15" y2="-3.15" width="0.127" layer="51"/>
<wire x1="3.15" y1="-3.15" x2="3.15" y2="3.15" width="0.127" layer="51"/>
<wire x1="-3.15" y1="3.15" x2="-2" y2="3.15" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="3.15" x2="-3.15" y2="-3.15" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="-3.15" x2="-2" y2="-3.15" width="0.2032" layer="21"/>
<wire x1="2" y1="-3.15" x2="3.15" y2="-3.15" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-3.15" x2="3.15" y2="3.15" width="0.2032" layer="21"/>
<wire x1="3.15" y1="3.15" x2="2" y2="3.15" width="0.2032" layer="21"/>
<smd name="P$1" x="0" y="2.75" dx="2.4" dy="1.5" layer="1"/>
<smd name="P$2" x="0" y="-2.75" dx="2.4" dy="1.5" layer="1"/>
</package>
<package name="CR75">
<wire x1="-1" y1="3.65" x2="7" y2="3.65" width="0.127" layer="21"/>
<wire x1="7" y1="3.65" x2="7" y2="2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="3.65" x2="-1" y2="2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-3.65" x2="7" y2="-3.65" width="0.127" layer="21"/>
<wire x1="7" y1="-3.65" x2="7" y2="-2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-3.65" x2="-1" y2="-2.55" width="0.127" layer="21"/>
<smd name="P$1" x="0" y="0" dx="4.7" dy="1.75" layer="1" rot="R90"/>
<smd name="P$2" x="6.05" y="0" dx="4.7" dy="1.75" layer="1" rot="R90"/>
</package>
<package name="1210">
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="1.3" x2="1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.6" y1="-1.3" x2="-1.6" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="-1.3" x2="-1.6" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.6" y1="1.3" x2="1.6" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.2032" layer="21"/>
<smd name="1" x="-1.6" y="0" dx="1.2" dy="2" layer="1"/>
<smd name="2" x="1.6" y="0" dx="1.2" dy="2" layer="1"/>
<text x="-0.8" y="0.5" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.9" y="-0.7" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1007">
<description>1007 (2518 metric) package</description>
<wire x1="0.9" y1="1.25" x2="-0.9" y2="1.25" width="0.127" layer="51"/>
<wire x1="-0.9" y1="1.25" x2="-0.9" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-0.9" y1="-1.25" x2="0.9" y2="-1.25" width="0.127" layer="51"/>
<wire x1="0.9" y1="-1.25" x2="0.9" y2="1.25" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.4" x2="-1" y2="0.4" width="0.127" layer="21"/>
<wire x1="1" y1="-0.4" x2="1" y2="0.4" width="0.127" layer="21"/>
<smd name="1" x="0" y="1" dx="2" dy="0.8" layer="1"/>
<smd name="2" x="0" y="-1" dx="2" dy="0.8" layer="1"/>
<text x="-1" y="1.6" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="COOPER_UP4B">
<wire x1="-6.3" y1="7" x2="-7.5" y2="2" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="2" x2="-7.5" y2="-2" width="0.2032" layer="21"/>
<wire x1="-7.5" y1="-2" x2="-6.3" y2="-7" width="0.2032" layer="21"/>
<wire x1="7.5" y1="2" x2="7.5" y2="-2" width="0.2032" layer="21"/>
<wire x1="7.5" y1="2" x2="6.3" y2="7" width="0.2032" layer="21"/>
<wire x1="7.5" y1="-2" x2="6.3" y2="-7" width="0.2032" layer="21"/>
<smd name="1" x="0" y="8.9" dx="12" dy="4.3" layer="1"/>
<smd name="2" x="0" y="-8.9" dx="12" dy="4.3" layer="1"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.54" y="-1.27" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="CDRH3D28">
<wire x1="-2.0503" y1="-0.677" x2="-2.0505" y2="0.6629" width="0.127" layer="51"/>
<wire x1="0.6192" y1="1.9926" x2="-0.7206" y2="1.9927" width="0.127" layer="51"/>
<wire x1="1.9491" y1="0.6627" x2="1.9491" y2="-0.677" width="0.127" layer="51"/>
<wire x1="-2.0505" y1="0.6629" x2="-0.7206" y2="1.9927" width="0.127" layer="51"/>
<wire x1="1.9491" y1="0.6627" x2="0.6192" y2="1.9926" width="0.127" layer="51"/>
<wire x1="1.9503" y1="-0.6737" x2="-0.0506" y2="-2.6748" width="0.127" layer="51"/>
<wire x1="-0.0436" y1="-2.6999" x2="1.2914" y2="-1.3649" width="0.127" layer="21"/>
<wire x1="-0.0436" y1="-2.6999" x2="-1.3785" y2="-1.3649" width="0.127" layer="21"/>
<wire x1="-2.0434" y1="-0.68" x2="-0.0535" y2="-2.6698" width="0.127" layer="51"/>
<wire x1="-1.7435" y1="1" x2="-0.7895" y2="1.954" width="0.127" layer="21"/>
<wire x1="1.6563" y1="0.9999" x2="0.7024" y2="1.9538" width="0.127" layer="21"/>
<smd name="2" x="1.849" y="-0.007" dx="1.5" dy="1.4" layer="1" rot="R270"/>
<smd name="1" x="-1.9504" y="-0.007" dx="1.5" dy="1.4" layer="1" rot="R270"/>
<text x="-2.492" y="2.524" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.492" y="-3.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="CR75_V2">
<wire x1="-1" y1="3.65" x2="7" y2="3.65" width="0.127" layer="21"/>
<wire x1="7" y1="3.65" x2="7" y2="2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="3.65" x2="-1" y2="2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-3.65" x2="7" y2="-3.65" width="0.127" layer="21"/>
<wire x1="7" y1="-3.65" x2="7" y2="-2.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-3.65" x2="-1" y2="-2.55" width="0.127" layer="21"/>
<smd name="P$1" x="-0.254" y="0" dx="2.54" dy="1.524" layer="1" rot="R90"/>
<smd name="P$2" x="6.304" y="0" dx="2.54" dy="1.524" layer="1" rot="R90"/>
</package>
<package name="CDRH2D09">
<description>1.3x1.3mm 1.7mm between. Fits Sumida CDRH2D09, CDRH2D18 inductor</description>
<wire x1="-1.2" y1="0.9" x2="-0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="1.5" x2="1.2" y2="0.9" width="0.2032" layer="21"/>
<wire x1="-1.2" y1="-0.9" x2="-0.6783" y2="-1.3739" width="0.2032" layer="21"/>
<wire x1="-0.6783" y1="-1.3739" x2="0.6783" y2="-1.3739" width="0.2032" layer="21" curve="85.420723"/>
<wire x1="0.6783" y1="-1.3739" x2="1.2" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-0.6" x2="-0.7071" y2="-1.3929" width="0.03" layer="51"/>
<wire x1="-0.7071" y1="-1.3929" x2="0.7071" y2="-1.3929" width="0.03" layer="51" curve="90"/>
<wire x1="0.7071" y1="-1.3929" x2="1.5" y2="-0.6" width="0.03" layer="51"/>
<wire x1="1.5" y1="-0.6" x2="1.5" y2="0.6" width="0.03" layer="51"/>
<wire x1="1.5" y1="0.6" x2="0.6" y2="1.5" width="0.03" layer="51"/>
<wire x1="0.6" y1="1.5" x2="-0.6" y2="1.5" width="0.03" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="-1.5" y2="0.6" width="0.03" layer="51"/>
<wire x1="-1.5" y1="0.6" x2="-1.5" y2="-0.6" width="0.03" layer="51"/>
<smd name="P$1" x="-1.5" y="0" dx="1.3" dy="1.3" layer="1" rot="R90"/>
<smd name="P$2" x="1.5" y="0" dx="1.3" dy="1.3" layer="1" rot="R90"/>
<text x="2.8" y="0.7" size="0.4064" layer="25">&gt;NAME</text>
<text x="2.8" y="-1" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="NPI75C">
<wire x1="-3.9" y1="3.5" x2="-3.9" y2="-3.5" width="0.1778" layer="51"/>
<wire x1="-3.9" y1="-3.5" x2="3.9" y2="-3.5" width="0.1778" layer="51"/>
<wire x1="3.9" y1="-3.5" x2="3.9" y2="3.5" width="0.1778" layer="51"/>
<wire x1="0.8" y1="3.5" x2="-0.8" y2="3.5" width="0.1778" layer="21"/>
<wire x1="-0.8" y1="-3.5" x2="0.8" y2="-3.5" width="0.1778" layer="21"/>
<wire x1="3.9" y1="3.5" x2="-3.9" y2="3.5" width="0.1778" layer="51"/>
<smd name="1" x="-2.5" y="0" dx="3" dy="7.5" layer="1"/>
<smd name="2" x="2.5" y="0" dx="3" dy="7.5" layer="1"/>
</package>
<package name="SRU5028">
<wire x1="1.2048" y1="-2.473" x2="2.4476" y2="-1.2048" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-0.9" x2="2.6" y2="0.9" width="0.2032" layer="51"/>
<wire x1="2.473" y1="1.2048" x2="1.2048" y2="2.4476" width="0.2032" layer="21"/>
<wire x1="0.9" y1="2.6" x2="-0.9" y2="2.6" width="0.2032" layer="51"/>
<wire x1="-1.1794" y1="2.4222" x2="-2.4222" y2="1.2048" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="0.9" x2="-2.6" y2="-0.9" width="0.2032" layer="51"/>
<wire x1="-2.3968" y1="-1.1794" x2="-1.2048" y2="-2.4476" width="0.2032" layer="21"/>
<wire x1="-0.9" y1="-2.6" x2="0.9" y2="-2.6" width="0.2032" layer="51"/>
<circle x="1.5" y="0" radius="0.1414" width="0.4" layer="21"/>
<smd name="P$1" x="0" y="2.4" dx="2" dy="1.1" layer="1"/>
<smd name="P$2" x="0" y="-2.4" dx="2" dy="1.1" layer="1"/>
<smd name="1" x="2.4" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="-2.4" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<text x="-2.54" y="3.175" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="SRU1038">
<wire x1="-5" y1="-1.6" x2="-5" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-5" y1="1.6" x2="-1.6" y2="5" width="0.2032" layer="51"/>
<wire x1="-1.6" y1="5" x2="1.6" y2="5" width="0.2032" layer="51"/>
<wire x1="1.6" y1="5" x2="5" y2="1.6" width="0.2032" layer="51"/>
<wire x1="5" y1="1.6" x2="5" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="5" y1="-1.6" x2="1.6" y2="-5" width="0.2032" layer="51"/>
<wire x1="1.6" y1="-5" x2="-1.6" y2="-5" width="0.2032" layer="51"/>
<wire x1="-1.6" y1="-5" x2="-5" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-4.5" y1="2.1" x2="-1.6" y2="5" width="0.254" layer="21"/>
<wire x1="-1.6" y1="5" x2="1.6" y2="5" width="0.254" layer="21"/>
<wire x1="1.6" y1="-5" x2="-1.6" y2="-5" width="0.254" layer="21"/>
<wire x1="1.6" y1="5" x2="4.5" y2="2.1" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-2.1" x2="-1.6" y2="-5" width="0.254" layer="21"/>
<wire x1="1.6" y1="-5" x2="4.5" y2="-2.1" width="0.254" layer="21"/>
<smd name="2" x="4.5" y="0" dx="1.8" dy="3.6" layer="1"/>
<smd name="1" x="-4.5" y="0" dx="1.8" dy="3.6" layer="1"/>
<text x="-2.54" y="2.54" size="1.016" layer="25">&gt;Name</text>
<text x="-2.54" y="-3.302" size="1.016" layer="27">&gt;Value</text>
</package>
<package name="CR54-KIT">
<wire x1="-3.048" y1="-3.548" x2="-2.794" y2="-3.802" width="0.2032" layer="21"/>
<wire x1="-2.794" y1="-3.802" x2="2.794" y2="-3.802" width="0.2032" layer="21"/>
<wire x1="2.794" y1="-3.802" x2="3.048" y2="-3.548" width="0.2032" layer="21"/>
<wire x1="3.048" y1="-3.548" x2="3.048" y2="3.548" width="0.2032" layer="21"/>
<wire x1="3.048" y1="3.548" x2="2.794" y2="3.802" width="0.2032" layer="21"/>
<wire x1="2.794" y1="3.802" x2="-2.794" y2="3.802" width="0.2032" layer="21"/>
<wire x1="-2.794" y1="3.802" x2="-3.048" y2="3.548" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="3.548" x2="-3.048" y2="-3.548" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="-2.5" y2="2.5" width="0.1778" layer="51"/>
<wire x1="-2.5" y1="2.5" x2="2.5" y2="2.5" width="0.1778" layer="51"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="-2.5" width="0.1778" layer="51"/>
<wire x1="2.5" y1="-2.5" x2="-2.5" y2="-2.5" width="0.1778" layer="51"/>
<circle x="0" y="0.508" radius="0.127" width="0.2032" layer="21"/>
<smd name="P$1" x="0" y="2.17" dx="5" dy="2.65" layer="1"/>
<smd name="P$2" x="0" y="-2.17" dx="5" dy="2.65" layer="1"/>
<text x="-2.54" y="4.01" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.7" y="-4.39" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="DR1030">
<description>For Coiltronics/Cooper DR1030 series inductors</description>
<wire x1="5.15" y1="5.25" x2="5.15" y2="-5.25" width="0.127" layer="21"/>
<wire x1="-5.15" y1="-5.25" x2="-5.15" y2="5.25" width="0.127" layer="21"/>
<smd name="2" x="0" y="-4.45" dx="3.3" dy="1.6" layer="1"/>
<smd name="1" x="0" y="4.45" dx="3.3" dy="1.6" layer="1"/>
<wire x1="5.15" y1="-5.25" x2="2" y2="-5.25" width="0.127" layer="21"/>
<wire x1="-5.15" y1="-5.25" x2="-2" y2="-5.25" width="0.127" layer="21"/>
<wire x1="-5.15" y1="5.25" x2="-2" y2="5.25" width="0.127" layer="21"/>
<wire x1="5.15" y1="5.25" x2="2" y2="5.25" width="0.127" layer="21"/>
<text x="-3.81" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-3.81" y="-1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="VLF4012A">
<wire x1="-1.85" y1="0.925" x2="-0.925" y2="1.85" width="0.127" layer="21"/>
<wire x1="-0.925" y1="1.85" x2="0.925" y2="1.85" width="0.127" layer="21"/>
<wire x1="0.925" y1="1.85" x2="1.85" y2="0.925" width="0.127" layer="21"/>
<wire x1="1.85" y1="0.925" x2="1.85" y2="-0.925" width="0.127" layer="21"/>
<wire x1="1.85" y1="-0.925" x2="0.925" y2="-1.85" width="0.127" layer="21"/>
<wire x1="-0.925" y1="-1.85" x2="-1.85" y2="-0.925" width="0.127" layer="21"/>
<wire x1="-1.85" y1="0.925" x2="-1.85" y2="-0.925" width="0.127" layer="21"/>
<wire x1="-0.925" y1="-1.85" x2="0.925" y2="-1.85" width="0.127" layer="21"/>
<smd name="P$1" x="-1.9" y="0" dx="0.9" dy="1.3" layer="1"/>
<smd name="P$2" x="1.9" y="0" dx="0.9" dy="1.3" layer="1"/>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="RLB0912">
<circle x="0" y="0" radius="4.445" width="0.2032" layer="21"/>
<pad name="2" x="-2.5019" y="0" drill="0.8128" diameter="1.651"/>
<text x="-1.905" y="-3.048" size="0.8128" layer="27">&gt;Value</text>
<text x="-0.762" y="2.921" size="0.4064" layer="25">&gt;Name</text>
<pad name="1" x="2.5019" y="0" drill="0.8128" diameter="1.651"/>
</package>
<package name="SRN6045">
<smd name="1" x="-2.175" y="-0.175" dx="6" dy="2.5" layer="1" rot="R90"/>
<smd name="2" x="2.125" y="-0.175" dx="6" dy="2.5" layer="1" rot="R90"/>
<wire x1="-2.175" y1="-3.175" x2="-3.175" y2="-2.175" width="0.127" layer="51"/>
<wire x1="-3.175" y1="-2.175" x2="-3.175" y2="1.825" width="0.127" layer="51"/>
<wire x1="-3.175" y1="1.825" x2="-2.175" y2="2.825" width="0.127" layer="51"/>
<wire x1="-2.175" y1="2.825" x2="2.125" y2="2.825" width="0.127" layer="51"/>
<wire x1="2.125" y1="2.825" x2="3.125" y2="1.825" width="0.127" layer="51"/>
<wire x1="3.125" y1="1.825" x2="3.125" y2="-2.175" width="0.127" layer="51"/>
<wire x1="3.125" y1="-2.175" x2="2.125" y2="-3.175" width="0.127" layer="51"/>
<wire x1="2.125" y1="-3.175" x2="-2.175" y2="-3.175" width="0.127" layer="51"/>
<text x="-4.175" y="3.825" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.175" y="-5.175" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.762" y1="2.794" x2="0.762" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-3.175" x2="0.762" y2="-3.175" width="0.1524" layer="21"/>
</package>
<package name="SDR0403">
<description>Footprint for Bourns SDR0403 family inductors</description>
<smd name="P$1" x="-1.65" y="0" dx="4.5" dy="1.8" layer="1" rot="R90"/>
<smd name="P$2" x="1.65" y="0" dx="4.5" dy="1.8" layer="1" rot="R90"/>
<wire x1="-0.5" y1="2" x2="0.5" y2="2" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-2" x2="0.5" y2="-2" width="0.127" layer="21"/>
<text x="-0.762" y="-0.254" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-0.889" y="1.016" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="INDUCTOR-SRP4020">
<smd name="P$1" x="-2.05" y="0" dx="1.5" dy="1.9" layer="1" rot="R90"/>
<smd name="P$2" x="2.05" y="0" dx="1.5" dy="1.9" layer="1" rot="R90"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="2" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-2" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<text x="-2.032" y="2.286" size="0.8128" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-2.032" y="-3.048" size="0.8128" layer="25" font="vector" ratio="15">&gt;VALUE</text>
</package>
<package name="INDUCTOR_4.7UH">
<wire x1="-1.2" y1="0.9" x2="-0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="1.5" x2="1.2" y2="0.9" width="0.2032" layer="21"/>
<wire x1="-1.2" y1="-0.9" x2="-0.6783" y2="-1.3739" width="0.2032" layer="21"/>
<wire x1="-0.6783" y1="-1.3739" x2="0.6783" y2="-1.3739" width="0.2032" layer="21" curve="85.420723"/>
<wire x1="0.6783" y1="-1.3739" x2="1.2" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-0.6" x2="-0.7071" y2="-1.3929" width="0.03" layer="51"/>
<wire x1="-0.7071" y1="-1.3929" x2="0.7071" y2="-1.3929" width="0.03" layer="51" curve="90"/>
<wire x1="0.7071" y1="-1.3929" x2="1.5" y2="-0.6" width="0.03" layer="51"/>
<wire x1="1.5" y1="-0.6" x2="1.5" y2="0.6" width="0.03" layer="51"/>
<wire x1="1.5" y1="0.6" x2="0.6" y2="1.5" width="0.03" layer="51"/>
<wire x1="0.6" y1="1.5" x2="-0.6" y2="1.5" width="0.03" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="-1.5" y2="0.6" width="0.03" layer="51"/>
<wire x1="-1.5" y1="0.6" x2="-1.5" y2="-0.6" width="0.03" layer="51"/>
<smd name="P$1" x="-1.5" y="0" dx="1.3" dy="1.3" layer="1" rot="R90"/>
<smd name="P$2" x="1.5" y="0" dx="1.3" dy="1.3" layer="1" rot="R90"/>
<text x="2.8" y="0.7" size="0.4064" layer="25">&gt;NAME</text>
<text x="2.8" y="-1" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="INDUCTOR_SDR1307">
<smd name="P$1" x="0" y="4.6" dx="14" dy="4.75" layer="1"/>
<smd name="P$2" x="0" y="-4.6" dx="14" dy="4.75" layer="1"/>
<wire x1="-6.5" y1="1.5" x2="-6.5" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="6.5" y1="1.5" x2="6.5" y2="-1.5" width="0.3048" layer="21"/>
<text x="-7" y="7.5" size="0.8128" layer="25" font="vector" ratio="15">&gt;NAME</text>
<text x="-7" y="-8.5" size="0.8128" layer="27" font="vector" ratio="15">&gt;VALUE</text>
</package>
<package name="PAD-HUMPER-3-1&amp;2_NC_BY_PASTE_YES_SILK_FULL_BOX">
<wire x1="1.27" y1="-1.016" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.524" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="0.762" x2="-1.27" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.524" y1="-0.762" x2="-1.27" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.762" x2="1.524" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.762" x2="-1.524" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.1778" y1="0.508" x2="-1.0287" y2="0.508" width="0.127" layer="51"/>
<wire x1="-1.0287" y1="0.508" x2="-1.0287" y2="-0.508" width="0.127" layer="51"/>
<wire x1="-1.0287" y1="-0.508" x2="0.1778" y2="-0.508" width="0.127" layer="51"/>
<wire x1="0.1778" y1="-0.508" x2="0.1778" y2="0.508" width="0.127" layer="51"/>
<smd name="1" x="-0.8128" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<smd name="2" x="0" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<smd name="3" x="0.8128" y="0" dx="0.635" dy="1.27" layer="1" cream="no"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-1.905" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-0.7747" y="-0.4445" size="0.254" layer="51" rot="R40">PASTE</text>
<rectangle x1="-1.4224" y1="-1.016" x2="0.2794" y2="0.9906" layer="31"/>
</package>
</packages>
<symbols>
<symbol name="PAD-JUMPER-3-NC_BY_PASTE">
<wire x1="-0.635" y1="-1.397" x2="0.635" y2="-1.397" width="1.27" layer="94" curve="180" cap="flat"/>
<wire x1="-0.635" y1="1.397" x2="0.635" y2="1.397" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="-0.635" x2="1.27" y2="0.635" layer="94"/>
<pin name="3" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="3.175" layer="95"/>
</symbol>
<symbol name="PTH-JUMPER-2-NO">
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.27" width="0.4064" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.4064" layer="94"/>
<text x="-1.27" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="0" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="0" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="INDUCTOR">
<wire x1="0" y1="5.08" x2="1.27" y2="3.81" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="2.54" x2="1.27" y2="3.81" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="90" cap="flat"/>
<text x="2.54" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="PAD-JUMPER-3-1&amp;2_NC_BY_PASTE_YES_SILK_FULL_BOX">
<wire x1="-0.635" y1="-1.397" x2="0.635" y2="-1.397" width="1.27" layer="94" curve="180" cap="flat"/>
<wire x1="-0.635" y1="1.397" x2="0.635" y2="1.397" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="-0.635" x2="1.27" y2="0.635" layer="94"/>
<pin name="3" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<polygon width="0.254" layer="95">
<vertex x="1.524" y="-0.9144"/>
<vertex x="1.524" y="1.3716" curve="90"/>
<vertex x="0" y="2.8956" curve="90"/>
<vertex x="-1.524" y="1.3716"/>
<vertex x="-1.524" y="-0.9144"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="JUMPER-PAD-3-NC_BY_PASTE" prefix="SJ">
<gates>
<gate name="G$1" symbol="PAD-JUMPER-3-NC_BY_PASTE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PAD-JUMPER-3-NC_BY_PASTE_YES_SILK_FULL_BOX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JUMPER-PTH-2-NO" prefix="SJ">
<gates>
<gate name="G$1" symbol="PTH-JUMPER-2-NO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PTH-JUMPER-2-NO_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="INDUCTOR" prefix="L" uservalue="yes">
<description>&lt;b&gt;Inductors&lt;/b&gt;&lt;p&gt;
Basic Inductor/Choke - 0603 and 1206. Footprints are not proven and vary greatly between part numbers.&lt;br&gt;
INDUCTOR POWER 3.3UH 4.0A SMD&lt;br&gt;
0.197" L x 0.197" W x 0.177" H (5.00mm x 5.00mm x 4.50mm)</description>
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="H*" package="INDUCTOR-1206">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="1206"/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CR54" package="CR54">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PWR" package="CDRH125">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-B82462G" package="B82462G">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="68UH-1A" package="CR75">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-09739"/>
<attribute name="VALUE" value="68uH"/>
</technology>
</technologies>
</device>
<device name="1210" package="1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1007" package="1007">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_" package="COOPER_UP4B">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-" package="CDRH3D28">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CR75_V2" package="CR75_V2">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="." package="CDRH2D09">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NPI75" package="NPI75C">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SRU5028" package="SRU5028">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SRU1038" package="SRU1038">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CR54-KIT" package="CR54-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DR1030" package="DR1030">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VLF4012A" package="VLF4012A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.6" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RLB0912" package="RLB0912">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="BOURNS_SRN6045" package="SRN6045">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-11627"/>
<attribute name="VALUE" value="33uH"/>
</technology>
</technologies>
</device>
<device name="SDR0403-560KL" package="SDR0403">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIST" value="DIGIKEY"/>
<attribute name="DIST_ID" value="SDR0403-560KLCT-ND"/>
<attribute name="VALUE" value="56uH"/>
</technology>
</technologies>
</device>
<device name="30OHM,1.8A" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07859"/>
</technology>
</technologies>
</device>
<device name="" package="INDUCTOR-SRP4020">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="INDUCTOR_4.7UH" package="INDUCTOR_4.7UH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-10146"/>
</technology>
</technologies>
</device>
<device name="SDR13-7-270ML" package="INDUCTOR_SDR1307">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-12529" constant="no"/>
<attribute name="VALUE" value="27uH" constant="no"/>
</technology>
</technologies>
</device>
<device name="CR54-3.3UH" package="CR54">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="NDUC-11157" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JUMPER_PAD-3-1&amp;2_NC_BY_PASTE">
<gates>
<gate name="G$1" symbol="PAD-JUMPER-3-1&amp;2_NC_BY_PASTE_YES_SILK_FULL_BOX" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PAD-HUMPER-3-1&amp;2_NC_BY_PASTE_YES_SILK_FULL_BOX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VDD">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-LED">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find discrete LEDs for illumination or indication, but no displays.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="LED-1206">
<wire x1="-1" y1="1" x2="-2.4" y2="1" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="1" x2="-2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-1" x2="-1" y2="-1" width="0.2032" layer="21"/>
<wire x1="1" y1="1" x2="2.4" y2="1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1" x2="2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1" x2="1" y2="-1" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0.7" x2="0.3" y2="0" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0" x2="0.3" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="0.3" y1="0" x2="-0.3" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.3" y1="0.6" x2="-0.3" y2="-0.6" width="0.2032" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="0" width="0.2032" layer="21"/>
<smd name="A" x="-1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<smd name="C" x="1.5" y="0" dx="1.2" dy="1.4" layer="1"/>
<text x="-0.889" y="1.397" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.778" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="LED-0603">
<wire x1="0.46" y1="0.17" x2="0" y2="0.17" width="0.2032" layer="21"/>
<wire x1="-0.46" y1="0.17" x2="0" y2="0.17" width="0.2032" layer="21"/>
<wire x1="0" y1="0.17" x2="0.2338" y2="-0.14" width="0.2032" layer="21"/>
<wire x1="-0.0254" y1="0.1546" x2="-0.2184" y2="-0.14" width="0.2032" layer="21"/>
<smd name="C" x="0" y="0.877" dx="1" dy="1" layer="1" roundness="30"/>
<smd name="A" x="0" y="-0.877" dx="1" dy="1" layer="1" roundness="30"/>
<text x="-0.6985" y="-0.889" size="0.4064" layer="25" rot="R90">&gt;NAME</text>
<text x="1.0795" y="-1.016" size="0.4064" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED-YELLOW" prefix="D" uservalue="yes">
<description>Yellow SMD LEDs&lt;br&gt;
LilyPad 1206- DIO-09909&lt;br&gt;
0603- DIO-09003&lt;br&gt;
"SMART" means more efficient and expensive</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="LILYPAD" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09909"/>
<attribute name="VALUE" value="Yellow" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-09003"/>
<attribute name="VALUE" value="Yellow" constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="LED-1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-00820" constant="no"/>
<attribute name="VALUE" value="YELLOW" constant="no"/>
</technology>
</technologies>
</device>
<device name="0603-SMART" package="LED-0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="DIO-11230" constant="no"/>
<attribute name="VALUE" value="Yellow" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="2X4">
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="2" x="-3.81" y="1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="3" x="-1.27" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="4" x="-1.27" y="1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="5" x="1.27" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="6" x="1.27" y="1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="7" x="3.81" y="-1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="8" x="3.81" y="1.27" drill="1.016" diameter="1.8796" shape="octagon"/>
<text x="-5.08" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
</package>
<package name="2X4_SMD">
<circle x="0" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-2.54" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-2.54" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="0" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="2.54" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="2.54" y="1.27" radius="0.7" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-2.5" x2="-3.81" y2="2.5" width="0.127" layer="51"/>
<wire x1="-3.81" y1="2.5" x2="6.35" y2="2.5" width="0.127" layer="51"/>
<wire x1="6.35" y1="2.5" x2="6.35" y2="-2.5" width="0.127" layer="51"/>
<wire x1="6.35" y1="-2.5" x2="-3.81" y2="-2.5" width="0.127" layer="51"/>
<rectangle x1="-0.3" y1="2.55" x2="0.3" y2="3.35" layer="51"/>
<rectangle x1="-2.84" y1="2.55" x2="-2.24" y2="3.35" layer="51"/>
<rectangle x1="2.24" y1="2.55" x2="2.84" y2="3.35" layer="51"/>
<rectangle x1="-2.84" y1="-3.35" x2="-2.24" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="-0.3" y1="-3.35" x2="0.3" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="2.24" y1="-3.35" x2="2.84" y2="-2.55" layer="51" rot="R180"/>
<smd name="1" x="-2.54" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="2" x="-2.54" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="3" x="0" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="4" x="0" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="5" x="2.54" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="6" x="2.54" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<text x="-3.502" y="0.1" size="0.4064" layer="25">&gt;Name</text>
<text x="-3.502" y="-0.408" size="0.4064" layer="27">&gt;Value</text>
<smd name="8" x="5.08" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="7" x="5.08" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<rectangle x1="4.78" y1="-3.35" x2="5.38" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="2.24" y1="2.55" x2="2.84" y2="3.35" layer="51"/>
<rectangle x1="4.78" y1="2.55" x2="5.38" y2="3.35" layer="51"/>
<circle x="2.54" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="5.08" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="5.08" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="2.54" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="M04X2">
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<text x="-4.572" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-4.064" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M04X2" prefix="JP" uservalue="yes">
<description>.1" header, two rows of four.</description>
<gates>
<gate name="G$1" symbol="M04X2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="DIP"/>
</technologies>
</device>
<device name="SMD" package="2X4_SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Sensors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find sensors- accelerometers, gyros, compasses, magnetometers, light sensors, imagers, temp sensors, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="BMP180">
<smd name="1" x="1.5" y="1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="0" y="1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="3" x="-1.5" y="1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="4" x="-1.5" y="-1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="5" x="0" y="-1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="6" x="1.5" y="-1.45" dx="0.5" dy="0.6" layer="1" rot="R90"/>
<smd name="7" x="1.5" y="0" dx="0.5" dy="0.6" layer="1" rot="R180"/>
<wire x1="-1.9" y1="1.8" x2="-1.9" y2="-1.8" width="0.127" layer="51"/>
<wire x1="-1.9" y1="-1.8" x2="1.9" y2="-1.8" width="0.127" layer="51"/>
<wire x1="1.9" y1="-1.8" x2="1.9" y2="1.8" width="0.127" layer="51"/>
<wire x1="1.9" y1="1.8" x2="-1.9" y2="1.8" width="0.127" layer="51"/>
<circle x="0.75" y="0.75" radius="0.125" width="0.6096" layer="21"/>
<wire x1="-1.5" y1="1" x2="-1.5" y2="-1" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-1" x2="-1" y2="-1.5" width="0.127" layer="51" curve="90"/>
<wire x1="-1" y1="-1.5" x2="1" y2="-1.5" width="0.127" layer="51"/>
<wire x1="1" y1="-1.5" x2="1.5" y2="-1" width="0.127" layer="51" curve="90"/>
<wire x1="1.5" y1="-1" x2="1.5" y2="1" width="0.127" layer="51"/>
<wire x1="1.5" y1="1" x2="1" y2="1.5" width="0.127" layer="51" curve="90"/>
<wire x1="1" y1="1.5" x2="-1" y2="1.5" width="0.127" layer="51"/>
<wire x1="-1" y1="1.5" x2="-1.5" y2="1" width="0.127" layer="51" curve="90"/>
<wire x1="-2" y1="1.875" x2="-2" y2="-1.875" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.875" x2="2" y2="-1.875" width="0.127" layer="21"/>
<wire x1="2" y1="-1.875" x2="2" y2="1.875" width="0.127" layer="21"/>
<wire x1="2" y1="1.875" x2="-2" y2="1.875" width="0.127" layer="21"/>
<circle x="0.75" y="0.75" radius="0.125" width="0.6096" layer="21"/>
<text x="-2" y="2" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-3.375" size="1.27" layer="27">&gt;VALUE</text>
<circle x="0.75" y="0.75" radius="0.125" width="0.6096" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="BMP180">
<description>BOSCH BMP180 DIGITAL BAROMETRIC PRESSURE SENSOR&lt;p&gt;

Web page: &lt;a href="http://www.bosch-sensortec.com/en/homepage/products_3/environmental_sensors_1/bmp180_1/bmp180"&gt;http://www.bosch-sensortec.com/en/homepage/products_3/environmental_sensors_1/bmp180_1/bmp180&lt;/a&gt;&lt;br&gt;
Datasheet: &lt;a href="http://ae-bst.resource.bosch.com/media/products/dokumente/bmp180/BST-BMP180-DS000-09.pdf"&gt; http://ae-bst.resource.bosch.com/media/products/dokumente/bmp180/BST-BMP180-DS000-09.pdf&lt;/a&gt;&lt;p&gt;

The BMP180 is the function compatible successor of the BMP085, a new generation of high
precision digital pressure sensors for consumer applications.&lt;p&gt;
The ultra-low power, low voltage electronics of the BMP180 is optimized for use in mobile phones,
PDAs, GPS navigation devices and outdoor equipment. With a low altitude noise of merely 0.25m at
fast conversion time, the BMP180 offers superior performance. The I2C interface allows for easy
system integration with a microcontroller.&lt;p&gt;
The BMP180 is based on piezo-resistive technology for EMC robustness, high accuracy and linearity as
well as long term stability.&lt;p&gt;

Key features:&lt;p&gt;

- Temperature measurement included&lt;br&gt;
- I2C interface&lt;br&gt;
- Fully calibrated&lt;br&gt;
- Pb-free, halogen-free and RoHS compliant,&lt;br&gt;
- MSL 1&lt;p&gt;

Basic specs:&lt;p&gt;

Pressure range: 300 to 1100hPa (+9000m to -500m relating to sea level)&lt;br&gt;
Supply voltage: 1.8 to 3.6V (VDD), 1.62V to 3.6V (VDDIO)&lt;br&gt;
Package: LGA package with metal lid&lt;br&gt;
Small footprint: 3.6mm x 3.8mm&lt;br&gt;
Super-flat: 0.93mm height&lt;br&gt;
Low power: 5μA at 1 sample / sec. in standard mode&lt;br&gt;
Low noise: 0.06hPa (0.5m) in ultra low power mode, 0.02hPa (0.17m) advanced resolution mode&lt;p&gt;

Typical applications:&lt;p&gt;

- Enhancement of GPS navigation (dead-reckoning, slope detection, etc.)&lt;br&gt;
- In- and out-door navigation&lt;br&gt;
- Leisure and sports&lt;br&gt;
- Weather forecast&lt;br&gt;
- Vertical velocity indication (rise/sink speed)</description>
<pin name="VDD" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDIO" x="15.24" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="SCL" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="SDA" x="-15.24" y="2.54" length="middle"/>
<pin name="GND" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMP180" prefix="U">
<description>BOSCH BMP180 DIGITAL BAROMETRIC PRESSURE SENSOR&lt;p&gt;

Web page: &lt;a href="http://www.bosch-sensortec.com/en/homepage/products_3/environmental_sensors_1/bmp180_1/bmp180"&gt;http://www.bosch-sensortec.com/en/homepage/products_3/environmental_sensors_1/bmp180_1/bmp180&lt;/a&gt;&lt;br&gt;
Datasheet: &lt;a href="http://ae-bst.resource.bosch.com/media/products/dokumente/bmp180/BST-BMP180-DS000-09.pdf"&gt; http://ae-bst.resource.bosch.com/media/products/dokumente/bmp180/BST-BMP180-DS000-09.pdf&lt;/a&gt;&lt;p&gt;

The BMP180 is the function compatible successor of the BMP085, a new generation of high
precision digital pressure sensors for consumer applications.&lt;p&gt;
The ultra-low power, low voltage electronics of the BMP180 is optimized for use in mobile phones,
PDAs, GPS navigation devices and outdoor equipment. With a low altitude noise of merely 0.25m at
fast conversion time, the BMP180 offers superior performance. The I2C interface allows for easy
system integration with a microcontroller.&lt;p&gt;
The BMP180 is based on piezo-resistive technology for EMC robustness, high accuracy and linearity as
well as long term stability.&lt;p&gt;

Key features:&lt;p&gt;

- Temperature measurement included&lt;br&gt;
- I2C interface&lt;br&gt;
- Fully calibrated&lt;br&gt;
- Pb-free, halogen-free and RoHS compliant,&lt;br&gt;
- MSL 1&lt;p&gt;

Basic specs:&lt;p&gt;

Pressure range: 300 to 1100hPa (+9000m to -500m relating to sea level)&lt;br&gt;
Supply voltage: 1.8 to 3.6V (VDD), 1.62V to 3.6V (VDDIO)&lt;br&gt;
Package: LGA package with metal lid&lt;br&gt;
Small footprint: 3.6mm x 3.8mm&lt;br&gt;
Super-flat: 0.93mm height&lt;br&gt;
Low power: 5μA at 1 sample / sec. in standard mode&lt;br&gt;
Low noise: 0.06hPa (0.5m) in ultra low power mode, 0.02hPa (0.17m) advanced resolution mode&lt;p&gt;

Typical applications:&lt;p&gt;

- Enhancement of GPS navigation (dead-reckoning, slope detection, etc.)&lt;br&gt;
- In- and out-door navigation&lt;br&gt;
- Leisure and sports&lt;br&gt;
- Weather forecast&lt;br&gt;
- Vertical velocity indication (rise/sink speed)</description>
<gates>
<gate name="G$1" symbol="BMP180" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BMP180">
<connects>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="SCL" pad="5"/>
<connect gate="G$1" pin="SDA" pad="6"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VDDIO" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="r1">
<packages>
<package name="DRV(S-PWSON-N6)">
<smd name="1" x="0.65" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="2" x="0" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="3" x="-0.65" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="4" x="-0.65" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="5" x="0" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="6" x="0.65" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="NC" x="0" y="0" dx="1.4" dy="0.8" layer="1"/>
<wire x1="-1.05" y1="1.05" x2="-1.05" y2="-1.05" width="0.127" layer="21"/>
<wire x1="1.05" y1="1.05" x2="1.05" y2="-1.05" width="0.127" layer="21"/>
<circle x="1.4" y="1.1" radius="0.14141875" width="0.127" layer="21"/>
<wire x1="-1.05" y1="1.05" x2="-0.95" y2="1.05" width="0.127" layer="21"/>
<wire x1="1.05" y1="1.05" x2="0.95" y2="1.05" width="0.127" layer="21"/>
<wire x1="-1.05" y1="-1.05" x2="-0.95" y2="-1.05" width="0.127" layer="21"/>
<wire x1="1.05" y1="-1.05" x2="0.95" y2="-1.05" width="0.127" layer="21"/>
<text x="1.27" y="-1.27" size="0.762" layer="25" font="vector">&gt;NAME</text>
</package>
<package name="DDC(R-PDSO-G6)">
<smd name="1" x="0.95" y="1.35" dx="0.6" dy="1.1" layer="1"/>
<smd name="2" x="0" y="1.35" dx="0.6" dy="1.1" layer="1"/>
<smd name="3" x="-0.95" y="1.35" dx="0.6" dy="1.1" layer="1"/>
<smd name="4" x="-0.95" y="-1.35" dx="0.6" dy="1.1" layer="1"/>
<smd name="5" x="0" y="-1.35" dx="0.6" dy="1.1" layer="1"/>
<smd name="6" x="0.95" y="-1.35" dx="0.6" dy="1.1" layer="1"/>
<wire x1="-1.6" y1="0.9" x2="-1.6" y2="-0.9" width="0.127" layer="21"/>
<wire x1="1.6" y1="0.9" x2="1.6" y2="-0.9" width="0.127" layer="21"/>
<circle x="2" y="1.2" radius="0.22360625" width="0.127" layer="21"/>
<text x="-2" y="-0.9" size="0.762" layer="21" font="vector" rot="R90">&gt;NAME</text>
</package>
<package name="YZT(S-XBGA-N4)">
<smd name="A1" x="0.25" y="-0.25" dx="0.25" dy="0.25" layer="1" roundness="100"/>
<smd name="A2" x="-0.25" y="-0.25" dx="0.25" dy="0.25" layer="1" roundness="100"/>
<smd name="B1" x="0.25" y="0.25" dx="0.25" dy="0.25" layer="1" roundness="100"/>
<smd name="B2" x="-0.25" y="0.25" dx="0.25" dy="0.25" layer="1" roundness="100"/>
<wire x1="-0.7" y1="0.7" x2="0.7" y2="0.7" width="0.127" layer="21"/>
<wire x1="0.7" y1="0.7" x2="0.7" y2="-0.7" width="0.127" layer="21"/>
<wire x1="0.7" y1="-0.7" x2="-0.7" y2="-0.7" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-0.7" x2="-0.7" y2="0.7" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="0.9" y="-0.9"/>
<vertex x="0.5" y="-0.9"/>
<vertex x="0.5" y="-0.5"/>
<vertex x="0.9" y="-0.5"/>
</polygon>
<text x="1.25" y="-0.7" size="0.762" layer="25" font="vector">&gt;NAME</text>
</package>
<package name="DMB(S-PWSON-N6)">
<smd name="1" x="1" y="1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="-1.5" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.5" x2="1.5" y2="-1.5" width="0.127" layer="21"/>
<smd name="2" x="0" y="1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<smd name="3" x="-1" y="1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<smd name="4" x="-1" y="-1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<smd name="5" x="0" y="-1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<smd name="6" x="1" y="-1.5" dx="0.5" dy="0.8" layer="1" roundness="100"/>
<smd name="P$1" x="0" y="0" dx="2.4" dy="1.5" layer="1" roundness="20"/>
<circle x="2.1" y="1.3" radius="0.282840625" width="0.127" layer="21"/>
<text x="-1.9" y="-1.5" size="0.762" layer="21" font="vector" rot="R90">&gt;NAME</text>
</package>
<package name="TSSOP20">
<smd name="1" x="-2.925" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="2" x="-2.275" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="3" x="-1.625" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="4" x="-0.975" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="5" x="-0.325" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="6" x="0.325" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="7" x="0.975" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="8" x="1.625" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="9" x="2.275" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="10" x="2.925" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="11" x="2.925" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="12" x="2.275" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="13" x="1.625" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="14" x="0.975" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="15" x="0.325" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="16" x="-0.325" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="17" x="-0.975" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="18" x="-1.625" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="19" x="-2.275" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="20" x="-2.925" y="2.875" dx="0.4" dy="1.35" layer="1"/>
<wire x1="-3" y1="-2.2" x2="3" y2="-2.2" width="0.127" layer="21"/>
<wire x1="3" y1="-2.2" x2="3.3" y2="-1.9" width="0.127" layer="21" curve="90"/>
<wire x1="3.3" y1="-1.9" x2="3.3" y2="1.9" width="0.127" layer="21"/>
<wire x1="3.3" y1="1.9" x2="3" y2="2.2" width="0.127" layer="21" curve="90"/>
<wire x1="3" y1="2.2" x2="-3" y2="2.2" width="0.127" layer="21"/>
<wire x1="-3" y1="2.2" x2="-3.3" y2="1.9" width="0.127" layer="21" curve="90"/>
<wire x1="-3.3" y1="1.9" x2="-3.3" y2="-1.9" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-1.9" x2="-3" y2="-2.2" width="0.127" layer="21" curve="90"/>
<circle x="-2.3" y="-1.1" radius="0.360553125" width="0.127" layer="21"/>
<text x="-3.8" y="-2" size="0.762" layer="21" font="vector" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TPS61291">
<pin name="SW" x="-15.24" y="2.54" length="middle"/>
<pin name="VOUT" x="-15.24" y="0" length="middle"/>
<pin name="VIN" x="-15.24" y="-2.54" length="middle"/>
<pin name="GND" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="VSEL" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="EN/BYP" x="15.24" y="-2.54" length="middle" rot="R180"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-5.08" x2="12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="12.7" y1="5.08" x2="-12.7" y2="5.08" width="0.254" layer="94"/>
<text x="-12.7" y="7.62" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-12.7" y="-7.62" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="TPL5110">
<pin name="VDD" x="-20.32" y="2.54" length="middle"/>
<pin name="GND" x="-20.32" y="0" length="middle"/>
<pin name="DELAY/M_DRV" x="-20.32" y="-2.54" length="middle"/>
<pin name="EN/ONE_SHOT" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="DRV" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="DONE" x="20.32" y="-2.54" length="middle" rot="R180"/>
<wire x1="-17.78" y1="5.08" x2="-17.78" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-5.08" x2="17.78" y2="-5.08" width="0.254" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="17.78" y2="5.08" width="0.254" layer="94"/>
<wire x1="17.78" y1="5.08" x2="-17.78" y2="5.08" width="0.254" layer="94"/>
<text x="-17.78" y="7.62" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-17.78" y="-7.62" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="TPS22907">
<pin name="VIN" x="-12.7" y="2.54" length="middle"/>
<pin name="ON" x="-12.7" y="0" length="middle"/>
<pin name="VOUT" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="GND" x="12.7" y="0" length="middle" rot="R180"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-10.16" y="-5.08" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="HDC1050">
<pin name="SDA" x="-12.7" y="2.54" length="middle"/>
<pin name="GND" x="-12.7" y="0" length="middle"/>
<pin name="SCL" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="VDD" x="12.7" y="0" length="middle" rot="R180"/>
<wire x1="-10.16" y1="5.08" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-10.16" y="-5.08" size="1.27" layer="96" font="vector">&gt;VALUE</text>
</symbol>
<symbol name="STM32F030F4">
<pin name="VDDA" x="-17.78" y="20.32" length="middle"/>
<pin name="VDD" x="-17.78" y="17.78" length="middle"/>
<pin name="VSS" x="-17.78" y="10.16" length="middle"/>
<pin name="PF0-OSC_IN" x="-17.78" y="2.54" length="middle"/>
<pin name="PF1-OSC_OUT" x="-17.78" y="0" length="middle"/>
<pin name="BOOT0" x="-17.78" y="-5.08" length="middle"/>
<pin name="NRST" x="-17.78" y="-10.16" length="middle"/>
<pin name="PA0" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="PA1" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="PA2" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="PA3" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="PA4" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="PA5" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="PA6" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="PA7" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="PA10" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="PA13" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="PA14" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="PB1" x="20.32" y="20.32" length="middle" rot="R180"/>
<wire x1="17.78" y1="20.02" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<text x="-15.24" y="25.4" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-15.24" y="-15.24" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<pin name="PA9" x="20.32" y="10.16" length="middle" rot="R180"/>
<wire x1="17.78" y1="22.86" x2="17.78" y2="20.32" width="0.254" layer="94"/>
<wire x1="-15.24" y1="22.86" x2="-15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-12.7" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="22.86" x2="17.78" y2="22.86" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TPS61291">
<gates>
<gate name="U1" symbol="TPS61291" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRV(S-PWSON-N6)">
<connects>
<connect gate="U1" pin="EN/BYP" pad="4"/>
<connect gate="U1" pin="GND" pad="6"/>
<connect gate="U1" pin="SW" pad="1"/>
<connect gate="U1" pin="VIN" pad="3"/>
<connect gate="U1" pin="VOUT" pad="2"/>
<connect gate="U1" pin="VSEL" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TLP5110">
<gates>
<gate name="G$1" symbol="TPL5110" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DDC(R-PDSO-G6)">
<connects>
<connect gate="G$1" pin="DELAY/M_DRV" pad="3"/>
<connect gate="G$1" pin="DONE" pad="4"/>
<connect gate="G$1" pin="DRV" pad="5"/>
<connect gate="G$1" pin="EN/ONE_SHOT" pad="6"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS22907">
<gates>
<gate name="G$1" symbol="TPS22907" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="YZT(S-XBGA-N4)">
<connects>
<connect gate="G$1" pin="GND" pad="B1"/>
<connect gate="G$1" pin="ON" pad="B2"/>
<connect gate="G$1" pin="VIN" pad="A2"/>
<connect gate="G$1" pin="VOUT" pad="A1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HDC1050">
<gates>
<gate name="G$1" symbol="HDC1050" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="DMB(S-PWSON-N6)">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="1"/>
<connect gate="G$1" pin="VDD" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="STM32F030F4">
<gates>
<gate name="U1" symbol="STM32F030F4" x="-2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="TSSOP20">
<connects>
<connect gate="U1" pin="BOOT0" pad="1"/>
<connect gate="U1" pin="NRST" pad="4"/>
<connect gate="U1" pin="PA0" pad="6"/>
<connect gate="U1" pin="PA1" pad="7"/>
<connect gate="U1" pin="PA10" pad="18"/>
<connect gate="U1" pin="PA13" pad="19"/>
<connect gate="U1" pin="PA14" pad="20"/>
<connect gate="U1" pin="PA2" pad="8"/>
<connect gate="U1" pin="PA3" pad="9"/>
<connect gate="U1" pin="PA4" pad="10"/>
<connect gate="U1" pin="PA5" pad="11"/>
<connect gate="U1" pin="PA6" pad="12"/>
<connect gate="U1" pin="PA7" pad="13"/>
<connect gate="U1" pin="PA9" pad="17"/>
<connect gate="U1" pin="PB1" pad="14"/>
<connect gate="U1" pin="PF0-OSC_IN" pad="2"/>
<connect gate="U1" pin="PF1-OSC_OUT" pad="3"/>
<connect gate="U1" pin="VDD" pad="16"/>
<connect gate="U1" pin="VDDA" pad="5"/>
<connect gate="U1" pin="VSS" pad="15"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-RF">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find things that send or receive RF- GPS, cellular modules, Bluetooth, WiFi, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="QFN20">
<wire x1="-1.5" y1="2" x2="-2" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.0762" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.0762" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.0762" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.0762" layer="51"/>
<smd name="0" x="0" y="0" dx="1" dy="1" layer="1" rot="R180" cream="no"/>
<smd name="16" x="1" y="1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<smd name="15" x="1.9" y="1" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="14" x="1.9" y="0.5" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="13" x="1.9" y="0" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="12" x="1.9" y="-0.5" dx="0.65" dy="0.3" layer="1" rot="R180" cream="no"/>
<smd name="11" x="1.9" y="-1" dx="0.65" dy="0.3" layer="1" rot="R180" cream="no"/>
<smd name="10" x="1" y="-1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<smd name="9" x="0.5" y="-1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<smd name="8" x="0" y="-1.9" dx="0.65" dy="0.3" layer="1" rot="R270" cream="no"/>
<smd name="7" x="-0.5" y="-1.9" dx="0.65" dy="0.3" layer="1" rot="R270" cream="no"/>
<smd name="6" x="-1" y="-1.9" dx="0.65" dy="0.3" layer="1" rot="R270" cream="no"/>
<smd name="5" x="-1.9" y="-1" dx="0.65" dy="0.3" layer="1" rot="R180" cream="no"/>
<smd name="4" x="-1.9" y="-0.5" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="3" x="-1.9" y="0" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="2" x="-1.9" y="0.5" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="1" x="-1.9" y="1" dx="0.65" dy="0.3" layer="1" cream="no"/>
<smd name="17" x="0.5" y="1.9" dx="0.65" dy="0.3" layer="1" rot="R270" cream="no"/>
<smd name="18" x="0" y="1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<smd name="19" x="-0.5" y="1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<smd name="20" x="-1" y="1.9" dx="0.65" dy="0.3" layer="1" rot="R90" cream="no"/>
<text x="-1.27" y="0.889" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="-1.27" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="31"/>
<rectangle x1="-2.0955" y1="0.9017" x2="-1.6129" y2="1.1049" layer="31"/>
<rectangle x1="-2.0955" y1="0.3937" x2="-1.6129" y2="0.5969" layer="31"/>
<rectangle x1="-2.0955" y1="-0.1016" x2="-1.6129" y2="0.1016" layer="31"/>
<rectangle x1="-2.0955" y1="-0.5969" x2="-1.6129" y2="-0.3937" layer="31"/>
<rectangle x1="-2.0955" y1="-1.1049" x2="-1.6129" y2="-0.9017" layer="31"/>
<rectangle x1="1.6129" y1="0.9017" x2="2.0955" y2="1.1049" layer="31"/>
<rectangle x1="1.6129" y1="0.3937" x2="2.0955" y2="0.5969" layer="31"/>
<rectangle x1="1.6129" y1="-0.1016" x2="2.0955" y2="0.1016" layer="31"/>
<rectangle x1="1.6129" y1="-0.5969" x2="2.0955" y2="-0.3937" layer="31"/>
<rectangle x1="1.6129" y1="-1.1049" x2="2.0955" y2="-0.9017" layer="31"/>
<rectangle x1="-1.2446" y1="1.7526" x2="-0.762" y2="1.9558" layer="31" rot="R90"/>
<rectangle x1="-0.7366" y1="1.7526" x2="-0.254" y2="1.9558" layer="31" rot="R90"/>
<rectangle x1="-0.2413" y1="1.7526" x2="0.2413" y2="1.9558" layer="31" rot="R90"/>
<rectangle x1="0.254" y1="1.7526" x2="0.7366" y2="1.9558" layer="31" rot="R90"/>
<rectangle x1="0.762" y1="1.7526" x2="1.2446" y2="1.9558" layer="31" rot="R90"/>
<rectangle x1="-1.2446" y1="-1.9558" x2="-0.762" y2="-1.7526" layer="31" rot="R90"/>
<rectangle x1="-0.7366" y1="-1.9558" x2="-0.254" y2="-1.7526" layer="31" rot="R90"/>
<rectangle x1="-0.2413" y1="-1.9558" x2="0.2413" y2="-1.7526" layer="31" rot="R90"/>
<rectangle x1="0.254" y1="-1.9558" x2="0.7366" y2="-1.7526" layer="31" rot="R90"/>
<rectangle x1="0.762" y1="-1.9558" x2="1.2446" y2="-1.7526" layer="31" rot="R90"/>
</package>
<package name="ANTENNA-CHIP2">
<wire x1="-0.889" y1="0.508" x2="-0.889" y2="-0.508" width="0.2032" layer="21"/>
<wire x1="0.889" y1="0.508" x2="0.889" y2="-0.508" width="0.2032" layer="21"/>
<smd name="FEED" x="0" y="1.25" dx="1.7" dy="1" layer="1"/>
<smd name="P$2" x="0" y="-1.25" dx="1.7" dy="1" layer="1"/>
</package>
<package name="ANTENNA-CHIP3">
<wire x1="-1" y1="3.4" x2="-1" y2="2" width="0.2032" layer="21"/>
<wire x1="-1" y1="2" x2="-1" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="1" y1="3.4" x2="1" y2="2" width="0.2032" layer="21"/>
<wire x1="1" y1="2" x2="1" y2="-3.4" width="0.2032" layer="21"/>
<wire x1="1" y1="2" x2="-1" y2="2" width="0.2032" layer="21"/>
<smd name="FEED" x="0" y="4.5" dx="1.8" dy="1.5" layer="1"/>
<smd name="NC" x="0" y="-4.5" dx="1.8" dy="1.5" layer="1"/>
</package>
<package name="ANTENNA-CHIP4">
<wire x1="-4" y1="1" x2="-4" y2="-1" width="0.127" layer="51"/>
<wire x1="-4" y1="-1" x2="4" y2="-1" width="0.127" layer="51"/>
<wire x1="4" y1="-1" x2="4" y2="1" width="0.127" layer="51"/>
<wire x1="4" y1="1" x2="-4" y2="1" width="0.127" layer="51"/>
<wire x1="-3" y1="1" x2="3" y2="1" width="0.2032" layer="21"/>
<wire x1="3" y1="-1" x2="-3" y2="-1" width="0.2032" layer="21"/>
<circle x="-3" y="0.6" radius="0.1414" width="0.127" layer="21"/>
<smd name="SIG" x="-4" y="0" dx="1" dy="2" layer="1"/>
<smd name="NC" x="4" y="0" dx="1" dy="2" layer="1"/>
<text x="-1.651" y="-0.254" size="0.6096" layer="51">152111</text>
<text x="-4" y="-2" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-3.99" y="1.59" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="ANTENNA-CHIP5">
<wire x1="-2.413" y1="-1.143" x2="2.413" y2="-1.143" width="0.2032" layer="21"/>
<wire x1="-2.413" y1="1.143" x2="2.413" y2="1.143" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="2.159" y2="0" width="0.2032" layer="21"/>
<wire x1="2.159" y1="0" x2="1.778" y2="0.381" width="0.2032" layer="21"/>
<wire x1="2.159" y1="0" x2="1.778" y2="-0.381" width="0.2032" layer="21"/>
<smd name="FEED" x="-3.302" y="0" dx="1.016" dy="2.54" layer="1" rot="R180"/>
<smd name="NC" x="3.302" y="0" dx="1.016" dy="2.54" layer="1" rot="R180"/>
<text x="0.508" y="0.127" size="0.8128" layer="51">AF</text>
<text x="-2.54" y="0.381" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.54" y="-0.762" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="ANTENNA-CHIP6">
<description>Footprint for Part#1575AT43A40</description>
<wire x1="-2.7" y1="1" x2="2.7" y2="1" width="0.127" layer="21"/>
<wire x1="-2.7" y1="-1" x2="2.7" y2="-1" width="0.127" layer="21"/>
<wire x1="-2.6" y1="0.3" x2="-2.6" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-0.3" x2="-1.6" y2="-0.3" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-0.3" x2="-1.6" y2="0.3" width="0.127" layer="21"/>
<wire x1="-1.6" y1="0.3" x2="-2.6" y2="0.3" width="0.127" layer="21"/>
<wire x1="-3.5" y1="1" x2="3.5" y2="1" width="0.127" layer="51"/>
<wire x1="3.5" y1="1" x2="3.5" y2="-1" width="0.127" layer="51"/>
<wire x1="3.5" y1="-1" x2="-3.5" y2="-1" width="0.127" layer="51"/>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="1" width="0.127" layer="51"/>
<smd name="NC" x="3.4" y="0" dx="2" dy="0.75" layer="1" rot="R90"/>
<smd name="1" x="-3.4" y="0" dx="2" dy="0.75" layer="1" rot="R90"/>
<text x="-3.81" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.7" y="-1.3" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="ANTENNA-CHIP_2500AT44M0400">
<smd name="FEED" x="-4" y="0" dx="1" dy="1.5" layer="1"/>
<smd name="NC" x="4" y="0" dx="1" dy="1.5" layer="1"/>
<wire x1="-4" y1="0.5" x2="-2.5" y2="0.5" width="0.127" layer="51"/>
<wire x1="-2.5" y1="0.5" x2="4" y2="0.5" width="0.127" layer="51"/>
<wire x1="4" y1="0.5" x2="4" y2="-0.5" width="0.127" layer="51"/>
<wire x1="4" y1="-0.5" x2="-2.5" y2="-0.5" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-0.5" x2="-4" y2="-0.5" width="0.127" layer="51"/>
<wire x1="-4" y1="-0.5" x2="-4" y2="0.5" width="0.127" layer="51"/>
<wire x1="-3.1" y1="0.5" x2="-2.5" y2="0.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="0.5" x2="3.1" y2="0.5" width="0.2032" layer="21"/>
<wire x1="3.1" y1="-0.5" x2="-2.5" y2="-0.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-0.5" x2="-3.1" y2="-0.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="0.5" x2="-2.5" y2="-0.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="0.5" x2="-2.5" y2="-0.5" width="0.127" layer="51"/>
<text x="-3.302" y="1.016" size="0.4064" layer="25">&gt;NAME</text>
<text x="-3.302" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="NRF24L01-1">
<wire x1="-17.78" y1="12.7" x2="17.78" y2="12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="12.7" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="-17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-12.7" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<text x="-17.78" y="13.462" size="1.6764" layer="95">&gt;NAME</text>
<text x="9.144" y="13.462" size="1.6764" layer="96">&gt;VALUE</text>
<pin name="VDD@7" x="2.54" y="17.78" length="middle" direction="pwr" rot="R270"/>
<pin name="VSS@8" x="-7.62" y="-17.78" length="middle" direction="pwr" rot="R90"/>
<pin name="CE" x="-22.86" y="7.62" length="middle" direction="in"/>
<pin name="MOSI" x="-22.86" y="0" length="middle" direction="in"/>
<pin name="MISO" x="-22.86" y="-2.54" length="middle" direction="out"/>
<pin name="SCK" x="-22.86" y="2.54" length="middle" direction="in"/>
<pin name="VSS@20" x="0" y="-17.78" length="middle" direction="pwr" rot="R90"/>
<pin name="IRQ" x="-22.86" y="-5.08" length="middle" direction="out" function="dot"/>
<pin name="DVDD" x="5.08" y="-17.78" length="middle" direction="pwr" rot="R90"/>
<pin name="XC2" x="12.7" y="-17.78" length="middle" direction="in" rot="R90"/>
<pin name="XC1" x="15.24" y="-17.78" length="middle" direction="in" rot="R90"/>
<pin name="VDD_PA" x="22.86" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="ANT1" x="22.86" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="ANT2" x="22.86" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="VDD@15" x="0" y="17.78" length="middle" direction="pwr" rot="R270"/>
<pin name="IREF" x="7.62" y="-17.78" length="middle" direction="in" rot="R90"/>
<pin name="VDD@18" x="-2.54" y="17.78" length="middle" direction="pwr" rot="R270"/>
<pin name="CSN" x="-22.86" y="5.08" length="middle" direction="in"/>
<pin name="VSS@17" x="-2.54" y="-17.78" length="middle" direction="pwr" rot="R90"/>
<pin name="VSS@14" x="-5.08" y="-17.78" length="middle" direction="pwr" rot="R90"/>
<pin name="VSS@0" x="-10.16" y="-17.78" length="middle" direction="pwr" rot="R90"/>
</symbol>
<symbol name="ANTENNA2">
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="1.27" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="SIGNAL" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NRF24L01">
<description>&lt;b&gt;2.4GHz Low Power Transceiver&lt;/b&gt;
This is the very popular, low cost, very low power RF transceiver from Nordic Semiconductor. Simple SPI interface. SKU: COM-00690</description>
<gates>
<gate name="G$1" symbol="NRF24L01-1" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="QFN20">
<connects>
<connect gate="G$1" pin="ANT1" pad="12"/>
<connect gate="G$1" pin="ANT2" pad="13"/>
<connect gate="G$1" pin="CE" pad="1"/>
<connect gate="G$1" pin="CSN" pad="2"/>
<connect gate="G$1" pin="DVDD" pad="19"/>
<connect gate="G$1" pin="IREF" pad="16"/>
<connect gate="G$1" pin="IRQ" pad="6"/>
<connect gate="G$1" pin="MISO" pad="5"/>
<connect gate="G$1" pin="MOSI" pad="4"/>
<connect gate="G$1" pin="SCK" pad="3"/>
<connect gate="G$1" pin="VDD@15" pad="15"/>
<connect gate="G$1" pin="VDD@18" pad="18"/>
<connect gate="G$1" pin="VDD@7" pad="7"/>
<connect gate="G$1" pin="VDD_PA" pad="11"/>
<connect gate="G$1" pin="VSS@0" pad="0"/>
<connect gate="G$1" pin="VSS@14" pad="14"/>
<connect gate="G$1" pin="VSS@17" pad="17"/>
<connect gate="G$1" pin="VSS@20" pad="20"/>
<connect gate="G$1" pin="VSS@8" pad="8"/>
<connect gate="G$1" pin="XC1" pad="10"/>
<connect gate="G$1" pin="XC2" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANTENNA2">
<description>&lt;b&gt;Chip antenna&lt;/b&gt;&lt;p&gt;
Single endded antenna. Common with smaller chip antennas. CHIP4 package is the GPS Chip Antenna &lt;b&gt;SKU:&lt;/b&gt; GPS-08418. CHIP5 package is 2.4GHz chip antenna &lt;b&gt;SKU:&lt;/b&gt; WRL-00144.</description>
<gates>
<gate name="G$1" symbol="ANTENNA2" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="ANTENNA-CHIP2">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="FEED"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="ANTENNA-CHIP3">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="FEED"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD3" package="ANTENNA-CHIP4">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="SIG"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5" package="ANTENNA-CHIP5">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="FEED"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD6" package="ANTENNA-CHIP6">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2500AT44M0400" package="ANTENNA-CHIP_2500AT44M0400">
<connects>
<connect gate="G$1" pin="SIGNAL" pad="FEED"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="ANT-11807"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="IQD-Frequency-Products">
<description>&lt;b&gt;Crystals and Oscillators&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by IQD Frequency Products&lt;/author&gt;</description>
<packages>
<package name="2.6X2.1-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.8" y="-0.6" dx="0.9" dy="0.8" layer="1"/>
<smd name="2" x="0.8" y="-0.6" dx="0.9" dy="0.8" layer="1"/>
<smd name="3" x="0.8" y="0.6" dx="0.9" dy="0.8" layer="1" rot="R180"/>
<smd name="4" x="-0.8" y="0.6" dx="0.9" dy="0.8" layer="1" rot="R180"/>
<text x="-3.24" y="2.04" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.54" y="-3.41" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.6" y1="1.4" x2="1.7" y2="1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="1.4" x2="1.7" y2="-1.4" width="0.127" layer="21"/>
<wire x1="1.7" y1="-1.4" x2="-1.6" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-1.6" y1="-1.4" x2="-1.6" y2="1.4" width="0.127" layer="21"/>
<wire x1="-1.6" y1="1.4" x2="-2" y2="1.4" width="0.127" layer="21"/>
<wire x1="-2" y1="1.4" x2="-2" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.4" x2="-1.6" y2="-1.4" width="0.127" layer="21"/>
<circle x="-1.8" y="-1.7" radius="0.2" width="0" layer="21"/>
</package>
<package name="7.2X5.2-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-2.54" y="-2.1" dx="1.8" dy="1.6" layer="1"/>
<smd name="2" x="2.54" y="-2.1" dx="1.8" dy="1.6" layer="1"/>
<smd name="3" x="2.54" y="2.1" dx="1.8" dy="1.6" layer="1" rot="R180"/>
<smd name="4" x="-2.54" y="2.1" dx="1.8" dy="1.6" layer="1" rot="R180"/>
<text x="-3.8192" y="4.215" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.1192" y="-5.493" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5.5" y1="3.5" x2="4.63" y2="3.5" width="0.127" layer="21"/>
<wire x1="4.63" y1="3.5" x2="4.73" y2="-3.5" width="0.127" layer="21"/>
<wire x1="4.73" y1="-3.5" x2="-4.74" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-4.74" y1="-3.5" x2="-4.74" y2="3.46" width="0.127" layer="21"/>
<wire x1="-5.5" y1="3.5" x2="-5.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-3.5" x2="-4.74" y2="-3.5" width="0.127" layer="21"/>
<circle x="-5.1" y="-3.8" radius="0.2" width="0" layer="21"/>
</package>
<package name="3.4X2.7-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-3.1" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1.9" x2="-3.1" y2="-1.9" width="0.2032" layer="21"/>
<smd name="1" x="-1.1" y="-0.8" dx="1.4" dy="1.15" layer="1"/>
<smd name="2" x="1.1" y="-0.8" dx="1.4" dy="1.15" layer="1"/>
<smd name="3" x="1.1" y="0.8" dx="1.4" dy="1.15" layer="1" rot="R180"/>
<smd name="4" x="-1.1" y="0.8" dx="1.4" dy="1.15" layer="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.91" width="0.2" layer="21"/>
<wire x1="-2.42" y1="1.9" x2="-2.42" y2="-1.91" width="0.2" layer="21"/>
<wire x1="-3.1" y1="1.9" x2="-3.1" y2="-1.9" width="0.2032" layer="21"/>
<circle x="-2.7" y="-2.3" radius="0.2" width="0" layer="21"/>
</package>
<package name="5.0X3.2-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-3.3" y1="-2.5" x2="2.368" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="2.476" x2="-2.5" y2="-2.476" width="0.2032" layer="21"/>
<wire x1="2.368" y1="2.5" x2="-3.3" y2="2.5" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-2.476" x2="2.4" y2="2.476" width="0.2032" layer="21"/>
<smd name="1" x="-1.25" y="-1.25" dx="1.4" dy="1.4" layer="1" rot="R90"/>
<smd name="2" x="1.25" y="-1.25" dx="1.4" dy="1.4" layer="1" rot="R90"/>
<smd name="3" x="1.25" y="1.25" dx="1.4" dy="1.4" layer="1" rot="R270"/>
<smd name="4" x="-1.25" y="1.25" dx="1.4" dy="1.4" layer="1" rot="R270"/>
<text x="3.04" y="4.39" size="1.27" layer="25" rot="R180">&gt;NAME</text>
<text x="-3.686" y="-4.608" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-3.3" y1="2.5" x2="-3.3" y2="-2.5" width="0.2032" layer="21"/>
<circle x="-2.9" y="-2.9" radius="0.2" width="0" layer="21"/>
</package>
<package name="5.2X3.4-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<wire x1="-4.2" y1="-2.3" x2="3.368" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="2.276" x2="-3.3" y2="-2.176" width="0.2032" layer="21"/>
<wire x1="3.368" y1="2.3" x2="-4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="3.4" y1="-2.276" x2="3.4" y2="2.276" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="-1.1" dx="1.4" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="2.1" y="-1.1" dx="1.4" dy="1.6" layer="1" rot="R90"/>
<smd name="3" x="2.1" y="1.1" dx="1.4" dy="1.6" layer="1" rot="R270"/>
<smd name="4" x="-2.1" y="1.1" dx="1.4" dy="1.6" layer="1" rot="R270"/>
<text x="3.04" y="4.39" size="1.27" layer="25" rot="R180">&gt;NAME</text>
<text x="-3.686" y="-4.608" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-4.2" y1="2.3" x2="-4.2" y2="-2.3" width="0.2032" layer="21"/>
<circle x="-3.7" y="-2.8" radius="0.2" width="0" layer="21"/>
</package>
<package name="2.0X1.6-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.637" y="-0.487" dx="0.875" dy="0.775" layer="1"/>
<smd name="2" x="0.637" y="-0.487" dx="0.875" dy="0.775" layer="1"/>
<smd name="3" x="0.637" y="0.487" dx="0.875" dy="0.775" layer="1" rot="R180"/>
<smd name="4" x="-0.637" y="0.487" dx="0.875" dy="0.775" layer="1" rot="R180"/>
<text x="-2.27" y="1.77" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.67" y="-3.34" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.4" y1="1.3" x2="1.5" y2="1.3" width="0.127" layer="21"/>
<wire x1="1.5" y1="1.3" x2="1.5" y2="-1.3" width="0.127" layer="21"/>
<wire x1="1.5" y1="-1.3" x2="-1.4" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.4" y1="-1.3" x2="-1.4" y2="1.3" width="0.127" layer="21"/>
<wire x1="-1.4" y1="1.3" x2="-1.9" y2="1.3" width="0.127" layer="21"/>
<wire x1="-1.9" y1="1.3" x2="-1.9" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.3" x2="-1.4" y2="-1.3" width="0.127" layer="21"/>
<circle x="-1.6" y="-1.6" radius="0.2" width="0" layer="21"/>
</package>
<package name="2.5X2-4-PAD">
<description>&lt;b&gt;IQD Frequency Products SMD Package&lt;/b&gt;</description>
<smd name="1" x="-0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="2" x="0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="3" x="0.85" y="0.65" dx="1.2" dy="1" layer="1" rot="R180"/>
<smd name="4" x="-0.85" y="0.65" dx="1.2" dy="1" layer="1" rot="R180"/>
<text x="-3.27" y="2.07" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.47" y="-3.54" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-2.1" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="-2.1" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2.1" y1="1.5" x2="-2.1" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.1" y1="1.5" x2="-2.6" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2.6" y1="1.5" x2="-2.6" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-1.5" x2="-2.1" y2="-1.5" width="0.127" layer="21"/>
<circle x="-2.3" y="-1.8" radius="0.2" width="0" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="QG2">
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="0" width="0.4064" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="2.54" y2="2.54" width="0.4064" layer="94"/>
<wire x1="2.54" y1="2.54" x2="6.35" y2="0" width="0.4064" layer="94"/>
<wire x1="6.35" y1="0" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-3.175" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="3.175" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="3.175" x2="-1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="3.175" x2="-1.27" y2="3.175" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.175" x2="-1.27" y2="-3.175" width="0.1524" layer="94"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.826" y1="-0.381" x2="-4.826" y2="0.381" width="0.254" layer="94"/>
<wire x1="-4.826" y1="0.381" x2="-2.794" y2="0.381" width="0.254" layer="94"/>
<wire x1="-2.794" y1="0.381" x2="-2.794" y2="-0.381" width="0.254" layer="94"/>
<wire x1="-4.826" y1="-0.381" x2="-2.794" y2="-0.381" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-1.016" x2="-3.81" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.016" x2="-2.54" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.016" x2="-3.81" y2="3.175" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.016" x2="-2.54" y2="1.016" width="0.254" layer="94"/>
<text x="-7.62" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.985" y="4.318" size="1.524" layer="95">VDD</text>
<text x="-6.985" y="-5.842" size="1.524" layer="95">VSS</text>
<text x="2.54" y="-5.842" size="1.524" layer="95">OUT</text>
<text x="2.54" y="5.588" size="1.524" layer="95">CON</text>
<pin name="VSS" x="-12.7" y="-5.08" visible="pad" length="middle" direction="pwr"/>
<pin name="VDD" x="-12.7" y="5.08" visible="pad" length="middle" direction="pwr"/>
<pin name="OUT" x="12.7" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
<pin name="CON" x="12.7" y="5.08" visible="pad" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="OSC-OE" prefix="OS">
<description>&lt;b&gt;OSCILLATOR WITH OE&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="QG2" x="0" y="0"/>
</gates>
<devices>
<device name="-CFPS-107" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-108" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-109" package="2.6X2.1-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-32" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-39" package="3.4X2.7-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-69" package="5.0X3.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-72" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-73" package="7.2X5.2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-CFPS-9" package="5.2X3.4-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-IQXO-540" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-IQXO-541" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-IQXO-542" package="2.0X1.6-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-IQXO-793" package="2.5X2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-IQXO-794" package="2.5X2-4-PAD">
<connects>
<connect gate="A" pin="CON" pad="1"/>
<connect gate="A" pin="OUT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="G1" library="battery" deviceset="CH291-1220LF" device=""/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="D1" library="diode" deviceset="CGRM400*-G" device="" technology="1" value="B0520LW"/>
<part name="S1" library="SparkFun-Electromechanical" deviceset="SWITCH-SPDT" device="SMD" value="AYZ0202"/>
<part name="C3" library="SparkFun-Capacitors" deviceset="100PF-50V-5%(0603)" device="" value="100pF"/>
<part name="GND4" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="V_BATT" device=""/>
<part name="U$1" library="User-Submitted" deviceset="SWPA4018S3R3MT" device=""/>
<part name="C4" library="SparkFun-Capacitors" deviceset="100PF-50V-5%(0603)" device="" value="0.1uF"/>
<part name="C5" library="SparkFun-Capacitors" deviceset="100PF-50V-5%(0603)" device="" value="10uF"/>
<part name="R1" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="0"/>
<part name="R2" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="0"/>
<part name="R3" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="0"/>
<part name="C6" library="SparkFun-Capacitors" deviceset="100PF-50V-5%(0603)" device="" value="22uF"/>
<part name="GND5" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND6" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND7" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY3" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="R4" library="SparkFun-Resistors" deviceset="0.22OHM-1/4W-1%(0805)" device="" value="40.2K"/>
<part name="R5" library="SparkFun-Resistors" deviceset="0.22OHM-1/4W-1%(0805)" device="" value="48.7K"/>
<part name="GND8" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND9" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND10" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R6" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="10K"/>
<part name="GND11" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SJ1" library="SparkFun-Passives" deviceset="JUMPER-PAD-3-NC_BY_PASTE" device=""/>
<part name="SUPPLY4" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="GND12" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SJ2" library="SparkFun-Passives" deviceset="JUMPER-PTH-2-NO" device="" value="JUMPER-BYPASS"/>
<part name="SUPPLY7" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="VDD" device=""/>
<part name="SJ3" library="SparkFun-Passives" deviceset="JUMPER-PTH-2-NO" device="" value="JUMPER-POWERLED"/>
<part name="SUPPLY9" library="supply2" deviceset="VDD" device=""/>
<part name="R7" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="500"/>
<part name="D2" library="SparkFun-LED" deviceset="LED-YELLOW" device="0603" value="Yellow"/>
<part name="GND14" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U$6" library="User-Submitted" deviceset="NRF24L01_MODULE_SMD" device=""/>
<part name="SUPPLY10" library="supply2" deviceset="VDD" device=""/>
<part name="GND15" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R8" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="R9" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="SUPPLY12" library="supply2" deviceset="VDD" device=""/>
<part name="SUPPLY13" library="supply2" deviceset="VDD" device=""/>
<part name="C8" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="C7" library="SparkFun-Capacitors" deviceset="1.0UF-16V-10%(0603)" device="" value="4.7uF"/>
<part name="C9" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="C10" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="C11" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="SUPPLY15" library="supply2" deviceset="VDD" device=""/>
<part name="GND19" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U1" library="SparkFun-Sensors" deviceset="BMP180" device=""/>
<part name="U$8" library="User-Submitted" deviceset="BH1750" device=""/>
<part name="C12" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="0.1uF"/>
<part name="GND20" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY16" library="supply2" deviceset="VDD" device=""/>
<part name="SUPPLY17" library="supply2" deviceset="VDD" device=""/>
<part name="GND21" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R10" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="1K"/>
<part name="SUPPLY19" library="supply2" deviceset="VDD" device=""/>
<part name="GND23" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SJ5" library="SparkFun-Passives" deviceset="JUMPER-PAD-3-NC_BY_PASTE" device=""/>
<part name="R12" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="500"/>
<part name="D4" library="SparkFun-LED" deviceset="LED-YELLOW" device="0603" value="Yellow"/>
<part name="GND25" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="10UF-16V-10%(TANT)" device="" value="10uF"/>
<part name="U$11" library="r1" deviceset="TPS61291" device=""/>
<part name="U$2" library="r1" deviceset="TLP5110" device=""/>
<part name="U$3" library="r1" deviceset="TPS22907" device=""/>
<part name="SUPPLY20" library="SparkFun-Aesthetics" deviceset="3.3V" device=""/>
<part name="SUPPLY21" library="supply2" deviceset="VDD" device=""/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U$4" library="r1" deviceset="HDC1050" device=""/>
<part name="JP3" library="SparkFun-Connectors" deviceset="M04X2" device="SMD"/>
<part name="SUPPLY5" library="supply2" deviceset="VDD" device=""/>
<part name="GND3" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SJ4" library="SparkFun-Passives" deviceset="JUMPER-PAD-3-NC_BY_PASTE" device=""/>
<part name="GND13" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U$7" library="r1" deviceset="STM32F030F4" device=""/>
<part name="GND16" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R13" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="4.7K"/>
<part name="GND17" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="VDD" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="VDD" device=""/>
<part name="C2" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="1uF"/>
<part name="C13" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="10nF"/>
<part name="L1" library="SparkFun-Passives" deviceset="INDUCTOR" device="0603"/>
<part name="SUPPLY18" library="supply2" deviceset="VDD" device=""/>
<part name="S2" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="SMD-REDUNDANT"/>
<part name="C14" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="100nF"/>
<part name="GND22" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U$5" library="SparkFun-RF" deviceset="NRF24L01" device="SMD"/>
<part name="OS1" library="IQD-Frequency-Products" deviceset="OSC-OE" device="-IQXO-793"/>
<part name="C15" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="100nF"/>
<part name="U$12" library="SparkFun-Passives" deviceset="JUMPER_PAD-3-1&amp;2_NC_BY_PASTE" device=""/>
<part name="U$13" library="SparkFun-Passives" deviceset="JUMPER_PAD-3-1&amp;2_NC_BY_PASTE" device=""/>
<part name="SUPPLY14" library="supply2" deviceset="VDD" device=""/>
<part name="R11" library="SparkFun-Resistors" deviceset="1.5KOHM-1/10W-1%(0603)" device="" value="22K"/>
<part name="C16" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="33nF"/>
<part name="C17" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="10nF"/>
<part name="C18" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="1nF"/>
<part name="GND18" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND24" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND26" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND27" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="SUPPLY22" library="supply2" deviceset="VDD" device=""/>
<part name="L2" library="SparkFun-Passives" deviceset="INDUCTOR" device="0603" value="8.2nH"/>
<part name="L3" library="SparkFun-Passives" deviceset="INDUCTOR" device="0603" value="3.9nH"/>
<part name="L4" library="SparkFun-Passives" deviceset="INDUCTOR" device="0603" value="2.7nH"/>
<part name="C19" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="33nF"/>
<part name="C20" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="33nF"/>
<part name="C21" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="1.5pF"/>
<part name="C22" library="SparkFun-Capacitors" deviceset="0.1UF-25V-5%(0603)" device="" value="1.0pF"/>
<part name="GND28" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND29" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="GND30" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U$14" library="SparkFun-RF" deviceset="ANTENNA2" device="SMD2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="G1" gate="G1" x="17.78" y="129.54" rot="R90"/>
<instance part="GND1" gate="1" x="17.78" y="121.92"/>
<instance part="D1" gate="G$1" x="17.78" y="139.7" rot="R90"/>
<instance part="S1" gate="1" x="30.48" y="154.94" rot="R180"/>
<instance part="C3" gate="G$1" x="58.42" y="147.32"/>
<instance part="GND4" gate="1" x="58.42" y="142.24"/>
<instance part="SUPPLY1" gate="G$1" x="66.04" y="154.94"/>
<instance part="U$1" gate="G$1" x="101.6" y="154.94"/>
<instance part="C4" gate="G$1" x="76.2" y="147.32"/>
<instance part="C5" gate="G$1" x="86.36" y="147.32"/>
<instance part="R1" gate="G$1" x="154.94" y="142.24" rot="R90"/>
<instance part="R2" gate="G$1" x="162.56" y="142.24" rot="R90"/>
<instance part="R3" gate="G$1" x="172.72" y="160.02" rot="R180"/>
<instance part="C6" gate="G$1" x="165.1" y="152.4"/>
<instance part="GND5" gate="1" x="76.2" y="142.24"/>
<instance part="GND6" gate="1" x="86.36" y="142.24"/>
<instance part="GND7" gate="1" x="165.1" y="132.08"/>
<instance part="SUPPLY2" gate="G$1" x="182.88" y="160.02"/>
<instance part="SUPPLY3" gate="G$1" x="50.8" y="124.46"/>
<instance part="R4" gate="G$1" x="50.8" y="109.22" rot="R90"/>
<instance part="R5" gate="G$1" x="43.18" y="109.22" rot="R90"/>
<instance part="GND8" gate="1" x="38.1" y="101.6"/>
<instance part="GND9" gate="1" x="43.18" y="101.6"/>
<instance part="GND10" gate="1" x="50.8" y="101.6"/>
<instance part="R6" gate="G$1" x="99.06" y="106.68" rot="R90"/>
<instance part="GND11" gate="1" x="99.06" y="99.06"/>
<instance part="SJ1" gate="G$1" x="99.06" y="129.54" smashed="yes" rot="R90">
<attribute name="NAME" x="101.6" y="132.461" size="1.778" layer="95"/>
</instance>
<instance part="SUPPLY4" gate="G$1" x="93.98" y="129.54"/>
<instance part="GND12" gate="1" x="104.14" y="127"/>
<instance part="SJ2" gate="G$1" x="185.42" y="137.16" rot="R180"/>
<instance part="SUPPLY7" gate="G$1" x="182.88" y="139.7"/>
<instance part="SUPPLY8" gate="G$1" x="185.42" y="142.24"/>
<instance part="SJ3" gate="G$1" x="200.66" y="137.16" rot="R180"/>
<instance part="SUPPLY9" gate="G$1" x="198.12" y="142.24"/>
<instance part="R7" gate="G$1" x="205.74" y="139.7" rot="R180"/>
<instance part="D2" gate="G$1" x="213.36" y="139.7" rot="R90"/>
<instance part="GND14" gate="1" x="218.44" y="137.16"/>
<instance part="U$6" gate="G$1" x="116.84" y="-15.24"/>
<instance part="SUPPLY10" gate="G$1" x="114.3" y="-5.08"/>
<instance part="GND15" gate="1" x="114.3" y="-27.94"/>
<instance part="R8" gate="G$1" x="71.12" y="66.04" rot="R270"/>
<instance part="R9" gate="G$1" x="78.74" y="66.04" rot="R270"/>
<instance part="SUPPLY12" gate="G$1" x="71.12" y="78.74"/>
<instance part="SUPPLY13" gate="G$1" x="78.74" y="78.74"/>
<instance part="C8" gate="G$1" x="200.66" y="101.6"/>
<instance part="C7" gate="G$1" x="185.42" y="101.6"/>
<instance part="C9" gate="G$1" x="210.82" y="101.6"/>
<instance part="C10" gate="G$1" x="220.98" y="101.6"/>
<instance part="C11" gate="G$1" x="231.14" y="101.6"/>
<instance part="SUPPLY15" gate="G$1" x="185.42" y="111.76"/>
<instance part="GND19" gate="1" x="185.42" y="93.98"/>
<instance part="U1" gate="G$1" x="147.32" y="55.88"/>
<instance part="U$8" gate="G$1" x="205.74" y="60.96"/>
<instance part="C12" gate="G$1" x="241.3" y="101.6"/>
<instance part="GND20" gate="1" x="109.22" y="68.58"/>
<instance part="SUPPLY16" gate="G$1" x="134.62" y="83.82"/>
<instance part="SUPPLY17" gate="G$1" x="162.56" y="63.5"/>
<instance part="GND21" gate="1" x="162.56" y="48.26"/>
<instance part="R10" gate="G$1" x="208.28" y="71.12" rot="R180"/>
<instance part="SUPPLY19" gate="G$1" x="190.5" y="73.66"/>
<instance part="GND23" gate="1" x="193.04" y="53.34"/>
<instance part="SJ5" gate="G$1" x="185.42" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="182.499" y="63.5" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="R12" gate="G$1" x="45.72" y="78.74" rot="R180"/>
<instance part="D4" gate="G$1" x="53.34" y="78.74" rot="R90"/>
<instance part="GND25" gate="1" x="60.96" y="78.74" rot="R90"/>
<instance part="C1" gate="G$1" x="281.94" y="104.14"/>
<instance part="U$11" gate="U1" x="137.16" y="152.4"/>
<instance part="U$2" gate="G$1" x="76.2" y="116.84"/>
<instance part="U$3" gate="G$1" x="147.32" y="119.38"/>
<instance part="SUPPLY20" gate="G$1" x="134.62" y="121.92"/>
<instance part="SUPPLY21" gate="G$1" x="160.02" y="124.46"/>
<instance part="GND2" gate="1" x="160.02" y="116.84"/>
<instance part="U$4" gate="G$1" x="121.92" y="76.2"/>
<instance part="JP3" gate="G$1" x="101.6" y="30.48"/>
<instance part="SUPPLY5" gate="G$1" x="109.22" y="38.1"/>
<instance part="GND3" gate="1" x="91.44" y="22.86"/>
<instance part="SJ4" gate="G$1" x="114.3" y="22.86" smashed="yes" rot="R270">
<attribute name="NAME" x="111.76" y="19.939" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="GND13" gate="1" x="109.22" y="20.32"/>
<instance part="U$7" gate="U1" x="22.86" y="45.72"/>
<instance part="GND16" gate="1" x="-15.24" y="45.72"/>
<instance part="R13" gate="G$1" x="-7.62" y="35.56" rot="R90"/>
<instance part="GND17" gate="1" x="-2.54" y="20.32"/>
<instance part="SUPPLY6" gate="G$1" x="-12.7" y="25.4"/>
<instance part="SUPPLY11" gate="G$1" x="-15.24" y="66.04"/>
<instance part="C2" gate="G$1" x="-10.16" y="60.96"/>
<instance part="C13" gate="G$1" x="0" y="60.96"/>
<instance part="L1" gate="G$1" x="-10.16" y="73.66"/>
<instance part="SUPPLY18" gate="G$1" x="-10.16" y="83.82"/>
<instance part="S2" gate="G$1" x="10.16" y="20.32" smashed="yes" rot="R90">
<attribute name="NAME" x="7.62" y="17.78" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="C14" gate="G$1" x="17.78" y="20.32"/>
<instance part="GND22" gate="1" x="17.78" y="12.7"/>
<instance part="U$5" gate="G$1" x="165.1" y="-17.78"/>
<instance part="OS1" gate="A" x="-2.54" y="106.68"/>
<instance part="C15" gate="G$1" x="-22.86" y="106.68"/>
<instance part="U$12" gate="G$1" x="10.16" y="116.84" rot="R90"/>
<instance part="U$13" gate="G$1" x="-7.62" y="22.86" rot="R270"/>
<instance part="SUPPLY14" gate="G$1" x="-22.86" y="119.38"/>
<instance part="R11" gate="G$1" x="177.8" y="-43.18" rot="R270"/>
<instance part="C16" gate="G$1" x="167.64" y="-43.18"/>
<instance part="C17" gate="G$1" x="152.4" y="5.08"/>
<instance part="C18" gate="G$1" x="142.24" y="5.08"/>
<instance part="GND18" gate="1" x="154.94" y="-38.1"/>
<instance part="GND24" gate="1" x="167.64" y="-50.8"/>
<instance part="GND26" gate="1" x="177.8" y="-50.8"/>
<instance part="GND27" gate="1" x="142.24" y="0"/>
<instance part="SUPPLY22" gate="G$1" x="142.24" y="12.7"/>
<instance part="L2" gate="G$1" x="203.2" y="-15.24"/>
<instance part="L3" gate="G$1" x="220.98" y="-7.62" rot="R90"/>
<instance part="L4" gate="G$1" x="220.98" y="-22.86" rot="R90"/>
<instance part="C19" gate="G$1" x="218.44" y="-33.02"/>
<instance part="C20" gate="G$1" x="228.6" y="-33.02"/>
<instance part="C21" gate="G$1" x="241.3" y="-7.62" rot="R90"/>
<instance part="C22" gate="G$1" x="251.46" y="-15.24"/>
<instance part="GND28" gate="1" x="218.44" y="-38.1"/>
<instance part="GND29" gate="1" x="228.6" y="-38.1"/>
<instance part="GND30" gate="1" x="251.46" y="-20.32"/>
<instance part="U$14" gate="G$1" x="264.16" y="-2.54"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="G1" gate="G1" pin="-"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="165.1" y1="149.86" x2="165.1" y2="134.62" width="0.1524" layer="91"/>
<wire x1="152.4" y1="154.94" x2="160.02" y2="154.94" width="0.1524" layer="91"/>
<wire x1="160.02" y1="154.94" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="162.56" y1="137.16" x2="162.56" y2="134.62" width="0.1524" layer="91"/>
<wire x1="162.56" y1="134.62" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<wire x1="165.1" y1="134.62" x2="162.56" y2="134.62" width="0.1524" layer="91"/>
<junction x="162.56" y="134.62"/>
<pinref part="GND7" gate="1" pin="GND"/>
<junction x="165.1" y="134.62"/>
<pinref part="U$11" gate="U1" pin="GND"/>
</segment>
<segment>
<wire x1="55.88" y1="116.84" x2="38.1" y2="116.84" width="0.1524" layer="91"/>
<wire x1="38.1" y1="116.84" x2="38.1" y2="104.14" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="SJ1" gate="G$1" pin="3"/>
<pinref part="GND12" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="GND14" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<pinref part="GND15" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="185.42" y1="99.06" x2="185.42" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="185.42" y1="96.52" x2="200.66" y2="96.52" width="0.1524" layer="91"/>
<wire x1="200.66" y1="96.52" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="200.66" y1="96.52" x2="210.82" y2="96.52" width="0.1524" layer="91"/>
<wire x1="210.82" y1="96.52" x2="210.82" y2="99.06" width="0.1524" layer="91"/>
<junction x="200.66" y="96.52"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="210.82" y1="96.52" x2="220.98" y2="96.52" width="0.1524" layer="91"/>
<wire x1="220.98" y1="96.52" x2="220.98" y2="99.06" width="0.1524" layer="91"/>
<junction x="210.82" y="96.52"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="220.98" y1="96.52" x2="231.14" y2="96.52" width="0.1524" layer="91"/>
<wire x1="231.14" y1="96.52" x2="231.14" y2="99.06" width="0.1524" layer="91"/>
<junction x="220.98" y="96.52"/>
<pinref part="GND19" gate="1" pin="GND"/>
<junction x="185.42" y="96.52"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="231.14" y1="96.52" x2="241.3" y2="96.52" width="0.1524" layer="91"/>
<wire x1="241.3" y1="96.52" x2="241.3" y2="99.06" width="0.1524" layer="91"/>
<junction x="231.14" y="96.52"/>
<junction x="241.3" y="96.52"/>
<wire x1="241.3" y1="96.52" x2="281.94" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="-"/>
<wire x1="281.94" y1="99.06" x2="281.94" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND21" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="GND"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="193.04" y1="55.88" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<pinref part="SJ5" gate="G$1" pin="1"/>
<wire x1="185.42" y1="55.88" x2="193.04" y2="55.88" width="0.1524" layer="91"/>
<junction x="193.04" y="55.88"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="C"/>
<pinref part="GND25" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="GND"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="109.22" y1="71.12" x2="109.22" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="93.98" y1="35.56" x2="91.44" y2="35.56" width="0.1524" layer="91"/>
<wire x1="91.44" y1="35.56" x2="91.44" y2="25.4" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="SJ4" gate="G$1" pin="3"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="U$7" gate="U1" pin="VSS"/>
<wire x1="5.08" y1="55.88" x2="0" y2="55.88" width="0.1524" layer="91"/>
<wire x1="0" y1="55.88" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="55.88" x2="-15.24" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="55.88" x2="-15.24" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="58.42" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
<junction x="-10.16" y="55.88"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="0" y1="58.42" x2="0" y2="55.88" width="0.1524" layer="91"/>
<junction x="0" y="55.88"/>
</segment>
<segment>
<pinref part="S2" gate="G$1" pin="1"/>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="10.16" y1="15.24" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="17.78" y1="17.78" x2="17.78" y2="15.24" width="0.1524" layer="91"/>
<junction x="17.78" y="15.24"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="1"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VSS@0"/>
<pinref part="U$5" gate="G$1" pin="VSS@8"/>
<wire x1="154.94" y1="-35.56" x2="157.48" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VSS@14"/>
<wire x1="157.48" y1="-35.56" x2="160.02" y2="-35.56" width="0.1524" layer="91"/>
<junction x="157.48" y="-35.56"/>
<pinref part="U$5" gate="G$1" pin="VSS@17"/>
<wire x1="160.02" y1="-35.56" x2="162.56" y2="-35.56" width="0.1524" layer="91"/>
<junction x="160.02" y="-35.56"/>
<pinref part="U$5" gate="G$1" pin="VSS@20"/>
<wire x1="162.56" y1="-35.56" x2="165.1" y2="-35.56" width="0.1524" layer="91"/>
<junction x="162.56" y="-35.56"/>
<pinref part="GND18" gate="1" pin="GND"/>
<junction x="154.94" y="-35.56"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="167.64" y1="-45.72" x2="167.64" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="GND24" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="GND26" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="2"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="142.24" y1="2.54" x2="152.4" y2="2.54" width="0.1524" layer="91"/>
<pinref part="GND27" gate="1" pin="GND"/>
<junction x="142.24" y="2.54"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="2"/>
<pinref part="GND28" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="2"/>
<pinref part="GND29" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C22" gate="G$1" pin="2"/>
<pinref part="GND30" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="G1" gate="G1" pin="+"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="17.78" y1="134.62" x2="17.78" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="S1" gate="1" pin="O"/>
<wire x1="17.78" y1="142.24" x2="17.78" y2="152.4" width="0.1524" layer="91"/>
<wire x1="17.78" y1="152.4" x2="25.4" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="V_BATT" class="0">
<segment>
<pinref part="S1" gate="1" pin="P"/>
<wire x1="33.02" y1="154.94" x2="58.42" y2="154.94" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="58.42" y1="154.94" x2="58.42" y2="152.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="154.94" x2="66.04" y2="154.94" width="0.1524" layer="91"/>
<junction x="58.42" y="154.94"/>
<pinref part="SUPPLY1" gate="G$1" pin="V_BATT"/>
<pinref part="U$1" gate="G$1" pin="P$1"/>
<wire x1="91.44" y1="154.94" x2="86.36" y2="154.94" width="0.1524" layer="91"/>
<junction x="66.04" y="154.94"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="86.36" y1="154.94" x2="76.2" y2="154.94" width="0.1524" layer="91"/>
<wire x1="76.2" y1="154.94" x2="66.04" y2="154.94" width="0.1524" layer="91"/>
<wire x1="76.2" y1="152.4" x2="76.2" y2="154.94" width="0.1524" layer="91"/>
<junction x="76.2" y="154.94"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="86.36" y1="152.4" x2="86.36" y2="154.94" width="0.1524" layer="91"/>
<junction x="86.36" y="154.94"/>
<wire x1="91.44" y1="154.94" x2="91.44" y2="149.86" width="0.1524" layer="91"/>
<junction x="91.44" y="154.94"/>
<wire x1="91.44" y1="149.86" x2="121.92" y2="149.86" width="0.1524" layer="91"/>
<pinref part="U$11" gate="U1" pin="VIN"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="P$2"/>
<wire x1="121.92" y1="154.94" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U$11" gate="U1" pin="SW"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="121.92" y1="152.4" x2="119.38" y2="152.4" width="0.1524" layer="91"/>
<wire x1="119.38" y1="152.4" x2="119.38" y2="160.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="119.38" y1="160.02" x2="165.1" y2="160.02" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="165.1" y1="160.02" x2="167.64" y2="160.02" width="0.1524" layer="91"/>
<wire x1="165.1" y1="157.48" x2="165.1" y2="160.02" width="0.1524" layer="91"/>
<junction x="165.1" y="160.02"/>
<pinref part="U$11" gate="U1" pin="VOUT"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="152.4" y1="149.86" x2="154.94" y2="149.86" width="0.1524" layer="91"/>
<wire x1="154.94" y1="149.86" x2="154.94" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U$11" gate="U1" pin="EN/BYP"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="152.4" y1="152.4" x2="162.56" y2="152.4" width="0.1524" layer="91"/>
<wire x1="162.56" y1="152.4" x2="162.56" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U$11" gate="U1" pin="VSEL"/>
</segment>
</net>
<net name="TPL_DRV" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="154.94" y1="137.16" x2="154.94" y2="134.62" width="0.1524" layer="91"/>
<label x="147.32" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="96.52" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<label x="104.14" y="116.84" size="1.778" layer="95"/>
<pinref part="U$2" gate="G$1" pin="DRV"/>
</segment>
<segment>
<wire x1="134.62" y1="109.22" x2="129.54" y2="109.22" width="0.1524" layer="91"/>
<label x="119.38" y="109.22" size="1.778" layer="95"/>
<pinref part="U$3" gate="G$1" pin="ON"/>
<wire x1="129.54" y1="109.22" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<wire x1="134.62" y1="119.38" x2="129.54" y2="119.38" width="0.1524" layer="91"/>
<wire x1="129.54" y1="119.38" x2="129.54" y2="109.22" width="0.1524" layer="91"/>
<junction x="129.54" y="109.22"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="177.8" y1="160.02" x2="182.88" y2="160.02" width="0.1524" layer="91"/>
<pinref part="SUPPLY2" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<wire x1="55.88" y1="119.38" x2="50.8" y2="119.38" width="0.1524" layer="91"/>
<wire x1="50.8" y1="119.38" x2="50.8" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SUPPLY3" gate="G$1" pin="3.3V"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="SJ1" gate="G$1" pin="1"/>
<pinref part="SUPPLY4" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<pinref part="SJ2" gate="G$1" pin="2"/>
<pinref part="SUPPLY7" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="VIN"/>
<pinref part="SUPPLY20" gate="G$1" pin="3.3V"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="55.88" y1="114.3" x2="50.8" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="50.8" y1="114.3" x2="43.18" y2="114.3" width="0.1524" layer="91"/>
<junction x="50.8" y="114.3"/>
<pinref part="U$2" gate="G$1" pin="DELAY/M_DRV"/>
</segment>
</net>
<net name="DONE" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="96.52" y1="114.3" x2="99.06" y2="114.3" width="0.1524" layer="91"/>
<wire x1="99.06" y1="114.3" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
<wire x1="99.06" y1="114.3" x2="104.14" y2="114.3" width="0.1524" layer="91"/>
<junction x="99.06" y="114.3"/>
<label x="104.14" y="114.3" size="1.778" layer="95"/>
<pinref part="U$2" gate="G$1" pin="DONE"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="96.52" y1="119.38" x2="99.06" y2="119.38" width="0.1524" layer="91"/>
<wire x1="99.06" y1="119.38" x2="99.06" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SJ1" gate="G$1" pin="2"/>
<pinref part="U$2" gate="G$1" pin="EN/ONE_SHOT"/>
</segment>
</net>
<net name="MESH" class="0">
<segment>
<pinref part="SJ2" gate="G$1" pin="1"/>
<pinref part="SUPPLY8" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="SJ3" gate="G$1" pin="2"/>
<pinref part="SUPPLY9" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="VCC"/>
<pinref part="SUPPLY10" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="71.12" y1="71.12" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<pinref part="SUPPLY12" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="78.74" y1="71.12" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<pinref part="SUPPLY13" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="185.42" y1="106.68" x2="185.42" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="200.66" y1="106.68" x2="200.66" y2="109.22" width="0.1524" layer="91"/>
<wire x1="200.66" y1="109.22" x2="185.42" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="200.66" y1="109.22" x2="210.82" y2="109.22" width="0.1524" layer="91"/>
<wire x1="210.82" y1="109.22" x2="210.82" y2="106.68" width="0.1524" layer="91"/>
<junction x="200.66" y="109.22"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="210.82" y1="109.22" x2="220.98" y2="109.22" width="0.1524" layer="91"/>
<wire x1="220.98" y1="109.22" x2="220.98" y2="106.68" width="0.1524" layer="91"/>
<junction x="210.82" y="109.22"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="220.98" y1="109.22" x2="231.14" y2="109.22" width="0.1524" layer="91"/>
<wire x1="231.14" y1="109.22" x2="231.14" y2="106.68" width="0.1524" layer="91"/>
<junction x="220.98" y="109.22"/>
<pinref part="SUPPLY15" gate="G$1" pin="VDD"/>
<junction x="185.42" y="109.22"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="231.14" y1="109.22" x2="241.3" y2="109.22" width="0.1524" layer="91"/>
<wire x1="241.3" y1="109.22" x2="241.3" y2="106.68" width="0.1524" layer="91"/>
<junction x="231.14" y="109.22"/>
<junction x="241.3" y="109.22"/>
<wire x1="241.3" y1="109.22" x2="281.94" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="+"/>
<wire x1="281.94" y1="106.68" x2="281.94" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY17" gate="G$1" pin="VDD"/>
<pinref part="U1" gate="G$1" pin="VDDIO"/>
<wire x1="162.56" y1="55.88" x2="162.56" y2="60.96" width="0.1524" layer="91"/>
<junction x="162.56" y="60.96"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="VCC"/>
<wire x1="193.04" y1="63.5" x2="190.5" y2="63.5" width="0.1524" layer="91"/>
<wire x1="190.5" y1="63.5" x2="190.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="190.5" y1="71.12" x2="203.2" y2="71.12" width="0.1524" layer="91"/>
<pinref part="SUPPLY19" gate="G$1" pin="VDD"/>
<junction x="190.5" y="71.12"/>
<pinref part="SJ5" gate="G$1" pin="3"/>
<wire x1="185.42" y1="66.04" x2="185.42" y2="71.12" width="0.1524" layer="91"/>
<wire x1="185.42" y1="71.12" x2="190.5" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SJ3" gate="G$1" pin="1"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="D2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="NRF_CE" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="CE"/>
<wire x1="114.3" y1="-10.16" x2="99.06" y2="-10.16" width="0.1524" layer="91"/>
<label x="99.06" y="-10.16" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="CE"/>
<wire x1="142.24" y1="-10.16" x2="114.3" y2="-10.16" width="0.1524" layer="91"/>
<junction x="114.3" y="-10.16"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PA0"/>
<wire x1="48.26" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
<label x="48.26" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="NRF_CSN" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="CSN"/>
<wire x1="114.3" y1="-12.7" x2="99.06" y2="-12.7" width="0.1524" layer="91"/>
<label x="99.06" y="-12.7" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="CSN"/>
<wire x1="142.24" y1="-12.7" x2="114.3" y2="-12.7" width="0.1524" layer="91"/>
<junction x="114.3" y="-12.7"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PA1"/>
<wire x1="48.26" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
<label x="48.26" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="NRF_IRQ" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="IRQ"/>
<wire x1="114.3" y1="-22.86" x2="99.06" y2="-22.86" width="0.1524" layer="91"/>
<label x="99.06" y="-22.86" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="IRQ"/>
<wire x1="142.24" y1="-22.86" x2="114.3" y2="-22.86" width="0.1524" layer="91"/>
<junction x="114.3" y="-22.86"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PA4"/>
<wire x1="48.26" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<label x="48.26" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="NRST"/>
<wire x1="5.08" y1="35.56" x2="0" y2="35.56" width="0.1524" layer="91"/>
<label x="0" y="35.56" size="1.778" layer="95"/>
<wire x1="0" y1="35.56" x2="0" y2="33.02" width="0.1524" layer="91"/>
<wire x1="0" y1="33.02" x2="5.08" y2="33.02" width="0.1524" layer="91"/>
<wire x1="5.08" y1="33.02" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
<pinref part="S2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="25.4" x2="10.16" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="10.16" y1="25.4" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<junction x="10.16" y="25.4"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="7"/>
<wire x1="81.28" y1="27.94" x2="93.98" y2="27.94" width="0.1524" layer="91"/>
<label x="81.28" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="213.36" y1="71.12" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
<wire x1="220.98" y1="71.12" x2="220.98" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="DVI"/>
<wire x1="220.98" y1="60.96" x2="218.44" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="ADDR"/>
<pinref part="SJ5" gate="G$1" pin="2"/>
<wire x1="193.04" y1="60.96" x2="190.5" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="D4" gate="G$1" pin="A"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="VOUT"/>
<pinref part="SUPPLY21" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="VDD"/>
<pinref part="SUPPLY16" gate="G$1" pin="VDD"/>
<wire x1="134.62" y1="81.28" x2="134.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="2"/>
<pinref part="SUPPLY5" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="VDD"/>
<pinref part="SUPPLY11" gate="G$1" pin="VDD"/>
<wire x1="5.08" y1="63.5" x2="-15.24" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="L1" gate="G$1" pin="1"/>
<pinref part="SUPPLY18" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="3"/>
<pinref part="SUPPLY6" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="OS1" gate="A" pin="VDD"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="111.76" x2="-22.86" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="1"/>
<wire x1="5.08" y1="116.84" x2="-22.86" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="116.84" x2="-22.86" y2="111.76" width="0.1524" layer="91"/>
<junction x="-22.86" y="111.76"/>
<pinref part="SUPPLY14" gate="G$1" pin="VDD"/>
<junction x="-22.86" y="116.84"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VDD@18"/>
<pinref part="U$5" gate="G$1" pin="VDD@15"/>
<wire x1="162.56" y1="0" x2="165.1" y2="0" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VDD@7"/>
<wire x1="165.1" y1="0" x2="167.64" y2="0" width="0.1524" layer="91"/>
<junction x="165.1" y="0"/>
<wire x1="162.56" y1="0" x2="162.56" y2="10.16" width="0.1524" layer="91"/>
<junction x="162.56" y="0"/>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="162.56" y1="10.16" x2="152.4" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="152.4" y1="10.16" x2="142.24" y2="10.16" width="0.1524" layer="91"/>
<junction x="152.4" y="10.16"/>
<junction x="142.24" y="10.16"/>
<pinref part="SUPPLY22" gate="G$1" pin="VDD"/>
</segment>
</net>
<net name="USART1_RX" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="4"/>
<wire x1="109.22" y1="33.02" x2="114.3" y2="33.02" width="0.1524" layer="91"/>
<label x="114.3" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PA3"/>
<wire x1="48.26" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<label x="48.26" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="USART1_TX" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="6"/>
<wire x1="109.22" y1="30.48" x2="114.3" y2="30.48" width="0.1524" layer="91"/>
<label x="114.3" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PA2"/>
<wire x1="48.26" y1="40.64" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<label x="48.26" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="8"/>
<wire x1="109.22" y1="27.94" x2="114.3" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SJ4" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA13"/>
<wire x1="48.26" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<label x="48.26" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="3"/>
<wire x1="93.98" y1="33.02" x2="81.28" y2="33.02" width="0.1524" layer="91"/>
<label x="81.28" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA14"/>
<wire x1="48.26" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
<label x="48.26" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="G$1" pin="5"/>
<wire x1="81.28" y1="30.48" x2="93.98" y2="30.48" width="0.1524" layer="91"/>
<label x="81.28" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="PB1" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PB1"/>
<wire x1="48.26" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
<label x="48.26" y="66.04" size="1.778" layer="95"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="40.64" y1="78.74" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
<wire x1="38.1" y1="78.74" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<wire x1="38.1" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SJ4" gate="G$1" pin="1"/>
<wire x1="119.38" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<label x="124.46" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C1_SCL" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA9"/>
<label x="83.82" y="55.88" size="1.778" layer="95"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="43.18" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<junction x="78.74" y="55.88"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SCL"/>
<wire x1="132.08" y1="53.34" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
<label x="119.38" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="134.62" y1="78.74" x2="142.24" y2="78.74" width="0.1524" layer="91"/>
<label x="137.16" y="78.74" size="1.778" layer="95"/>
<pinref part="U$4" gate="G$1" pin="SCL"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="SCL"/>
<wire x1="218.44" y1="58.42" x2="226.06" y2="58.42" width="0.1524" layer="91"/>
<label x="223.52" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2C1_SDA" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA10"/>
<label x="83.82" y="58.42" size="1.778" layer="95"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="43.18" y1="58.42" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="58.42" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="71.12" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<junction x="71.12" y="58.42"/>
</segment>
<segment>
<wire x1="109.22" y1="78.74" x2="101.6" y2="78.74" width="0.1524" layer="91"/>
<label x="99.06" y="81.28" size="1.778" layer="95"/>
<pinref part="U$4" gate="G$1" pin="SDA"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SDA"/>
<wire x1="132.08" y1="58.42" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
<label x="119.38" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="SDA"/>
<wire x1="218.44" y1="63.5" x2="226.06" y2="63.5" width="0.1524" layer="91"/>
<label x="223.52" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_MOSI" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA7"/>
<wire x1="48.26" y1="53.34" x2="43.18" y2="53.34" width="0.1524" layer="91"/>
<label x="48.26" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="MOSI"/>
<wire x1="114.3" y1="-17.78" x2="99.06" y2="-17.78" width="0.1524" layer="91"/>
<label x="99.06" y="-17.78" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="MOSI"/>
<wire x1="142.24" y1="-17.78" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
<junction x="114.3" y="-17.78"/>
</segment>
</net>
<net name="SPI1_MISO" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA6"/>
<wire x1="48.26" y1="50.8" x2="43.18" y2="50.8" width="0.1524" layer="91"/>
<label x="48.26" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="MISO"/>
<wire x1="114.3" y1="-20.32" x2="99.06" y2="-20.32" width="0.1524" layer="91"/>
<label x="99.06" y="-20.32" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="MISO"/>
<wire x1="114.3" y1="-20.32" x2="142.24" y2="-20.32" width="0.1524" layer="91"/>
<junction x="114.3" y="-20.32"/>
</segment>
</net>
<net name="SPI1_SCK" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="PA5"/>
<wire x1="48.26" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<label x="48.26" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="SCK"/>
<wire x1="114.3" y1="-15.24" x2="99.06" y2="-15.24" width="0.1524" layer="91"/>
<label x="99.06" y="-15.24" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="SCK"/>
<wire x1="114.3" y1="-15.24" x2="142.24" y2="-15.24" width="0.1524" layer="91"/>
<junction x="114.3" y="-15.24"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="-7.62" y1="30.48" x2="-7.62" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$13" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$7" gate="U1" pin="BOOT0"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="5.08" y1="40.64" x2="-7.62" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="-10.16" y1="66.04" x2="0" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$7" gate="U1" pin="VDDA"/>
<wire x1="0" y1="66.04" x2="5.08" y2="66.04" width="0.1524" layer="91"/>
<junction x="0" y="66.04"/>
<pinref part="L1" gate="G$1" pin="2"/>
<junction x="-10.16" y="66.04"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="104.14" x2="-22.86" y2="101.6" width="0.1524" layer="91"/>
<pinref part="OS1" gate="A" pin="VSS"/>
<wire x1="-22.86" y1="101.6" x2="-15.24" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="3"/>
<wire x1="15.24" y1="116.84" x2="15.24" y2="93.98" width="0.1524" layer="91"/>
<wire x1="15.24" y1="93.98" x2="-22.86" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="93.98" x2="-22.86" y2="101.6" width="0.1524" layer="91"/>
<junction x="-22.86" y="101.6"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="OS1" gate="A" pin="CON"/>
<pinref part="U$12" gate="G$1" pin="2"/>
</segment>
</net>
<net name="CLK_16M" class="0">
<segment>
<pinref part="OS1" gate="A" pin="OUT"/>
<wire x1="10.16" y1="106.68" x2="20.32" y2="106.68" width="0.1524" layer="91"/>
<label x="17.78" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="U1" pin="PF0-OSC_IN"/>
<wire x1="5.08" y1="48.26" x2="-5.08" y2="48.26" width="0.1524" layer="91"/>
<label x="-5.08" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="XC1"/>
<wire x1="180.34" y1="-35.56" x2="180.34" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-38.1" x2="187.96" y2="-38.1" width="0.1524" layer="91"/>
<label x="187.96" y="-38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="DVDD"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="170.18" y1="-35.56" x2="167.64" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-35.56" x2="167.64" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="IREF"/>
<wire x1="172.72" y1="-35.56" x2="175.26" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-35.56" x2="175.26" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="175.26" y1="-38.1" x2="177.8" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="ANT2"/>
<wire x1="187.96" y1="-12.7" x2="193.04" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-12.7" x2="193.04" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="1"/>
<wire x1="193.04" y1="-7.62" x2="203.2" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="L3" gate="G$1" pin="1"/>
<wire x1="203.2" y1="-7.62" x2="213.36" y2="-7.62" width="0.1524" layer="91"/>
<junction x="203.2" y="-7.62"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="ANT1"/>
<wire x1="187.96" y1="-15.24" x2="193.04" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-15.24" x2="193.04" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="2"/>
<wire x1="193.04" y1="-22.86" x2="203.2" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="L4" gate="G$1" pin="1"/>
<wire x1="203.2" y1="-22.86" x2="213.36" y2="-22.86" width="0.1524" layer="91"/>
<junction x="203.2" y="-22.86"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="VDD_PA"/>
<wire x1="187.96" y1="-17.78" x2="190.5" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-17.78" x2="190.5" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="190.5" y1="-27.94" x2="218.44" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="1"/>
<wire x1="218.44" y1="-27.94" x2="228.6" y2="-27.94" width="0.1524" layer="91"/>
<junction x="218.44" y="-27.94"/>
<pinref part="L4" gate="G$1" pin="2"/>
<wire x1="228.6" y1="-22.86" x2="233.68" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-22.86" x2="233.68" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-27.94" x2="228.6" y2="-27.94" width="0.1524" layer="91"/>
<junction x="228.6" y="-27.94"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="L3" gate="G$1" pin="2"/>
<pinref part="C21" gate="G$1" pin="1"/>
<wire x1="228.6" y1="-7.62" x2="236.22" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="C21" gate="G$1" pin="2"/>
<pinref part="C22" gate="G$1" pin="1"/>
<wire x1="243.84" y1="-7.62" x2="251.46" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-7.62" x2="251.46" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-7.62" x2="264.16" y2="-7.62" width="0.1524" layer="91"/>
<junction x="251.46" y="-7.62"/>
<pinref part="U$14" gate="G$1" pin="SIGNAL"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
