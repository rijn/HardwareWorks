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
<layer number="21" name="tPlace" color="15" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
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
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
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
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
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
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.3048" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="-1.016" x2="-10.16" y2="1.016" width="0.3048" layer="21" curve="180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DIL16-KIT">
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-1.016" x2="-10.16" y2="1.016" width="0.2032" layer="21" curve="180"/>
<wire x1="-10.16" y1="2.921" x2="10.16" y2="2.921" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.2032" layer="21"/>
<pad name="1" x="-8.89" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="2" x="-6.35" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="3" x="-3.81" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="4" x="-1.27" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="5" x="1.27" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="6" x="3.81" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="7" x="6.35" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="8" x="8.89" y="-4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="9" x="8.89" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="10" x="6.35" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="11" x="3.81" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="12" x="1.27" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="13" x="-1.27" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="14" x="-3.81" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<text x="-3.81" y="0.635" size="1.27" layer="25" font="vector" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-1.778" size="1.27" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<circle x="-3.81" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-3.81" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-1.27" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="1.27" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="3.81" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="6.35" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="8.89" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="8.89" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-6.35" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-3.81" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-1.27" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="1.27" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="3.81" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="6.35" y="-4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-8.89" y="-4.191" radius="0.4318" width="0" layer="29"/>
<text x="-3.81" y="-1.778" size="1.27" layer="21" font="vector" ratio="10">&gt;VALUE</text>
<circle x="-1.27" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="1.27" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="3.81" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="6.35" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="8.89" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="8.89" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="3.81" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="6.35" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="1.27" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-1.27" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-3.81" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-6.35" y="-4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-8.89" y="-4.191" radius="1.0668" width="0" layer="30"/>
<pad name="15" x="-6.35" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<pad name="16" x="-8.89" y="4.191" drill="0.8636" diameter="1.905" rot="R90" stop="no"/>
<circle x="-6.35" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-8.89" y="4.191" radius="1.0668" width="0" layer="30"/>
<circle x="-3.81" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-3.81" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-6.35" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-8.89" y="4.191" radius="0.4318" width="0" layer="29"/>
<circle x="-8.89" y="-1.905" radius="0.508" width="0.254" layer="21"/>
</package>
<package name="TSSOP16">
<description>&lt;b&gt;TSOP16&lt;/b&gt;&lt;p&gt;
thin small outline package</description>
<wire x1="-3" y1="-2.4" x2="2.846" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="2.846" y1="-2.4" x2="3.1" y2="-2.146" width="0.2032" layer="51" curve="90"/>
<wire x1="-3" y1="2.6" x2="2.846" y2="2.6" width="0.2032" layer="51"/>
<wire x1="2.846" y1="2.6" x2="3.1" y2="2.346" width="0.2032" layer="51" curve="-90"/>
<wire x1="3.1" y1="2.346" x2="3.1" y2="-2.146" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="2.6" x2="-3" y2="2.4" width="0.2032" layer="21" curve="90"/>
<wire x1="-3" y1="2.4" x2="-3" y2="0.5" width="0.2032" layer="21"/>
<wire x1="-3" y1="-0.5" x2="-3" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-3" y1="-2.2" x2="-2.8" y2="-2.4" width="0.2032" layer="21" curve="90"/>
<wire x1="2.9" y1="-2.4" x2="3.1" y2="-2.2" width="0.2032" layer="21" curve="90"/>
<wire x1="3.1" y1="-2.2" x2="3.1" y2="2.4" width="0.2032" layer="21"/>
<wire x1="3.1" y1="2.4" x2="2.9" y2="2.6" width="0.2032" layer="21" curve="90"/>
<wire x1="-3" y1="0.5" x2="-3" y2="-0.5" width="0.2032" layer="21" curve="-180"/>
<smd name="1" x="-2.225" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="2" x="-1.575" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="3" x="-0.925" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="4" x="-0.275" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="5" x="0.375" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="6" x="1.025" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="7" x="1.675" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="8" x="2.325" y="-2.85" dx="0.4" dy="1.6" layer="1"/>
<smd name="9" x="2.325" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="10" x="1.675" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="11" x="1.025" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="12" x="0.375" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="13" x="-0.275" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="14" x="-0.925" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="15" x="-1.575" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<smd name="16" x="-2.225" y="3.05" dx="0.4" dy="1.6" layer="1"/>
<text x="-1.524" y="-1.27" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.524" y="0.889" size="0.6096" layer="27">&gt;VALUE</text>
<rectangle x1="-2.425" y1="-3.3501" x2="-2.0249" y2="-2.5299" layer="51"/>
<rectangle x1="-1.775" y1="-3.3501" x2="-1.3749" y2="-2.5299" layer="51"/>
<rectangle x1="-1.125" y1="-3.3501" x2="-0.725" y2="-2.5299" layer="51"/>
<rectangle x1="-0.475" y1="-3.3501" x2="-0.075" y2="-2.5299" layer="51"/>
<rectangle x1="0.175" y1="-3.3501" x2="0.575" y2="-2.5299" layer="51"/>
<rectangle x1="0.825" y1="-3.3501" x2="1.225" y2="-2.5299" layer="51"/>
<rectangle x1="1.4749" y1="-3.3501" x2="1.875" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="-3.3501" x2="2.525" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="2.7299" x2="2.525" y2="3.5501" layer="51"/>
<rectangle x1="1.4749" y1="2.7299" x2="1.875" y2="3.5501" layer="51"/>
<rectangle x1="0.825" y1="2.7299" x2="1.225" y2="3.5501" layer="51"/>
<rectangle x1="0.175" y1="2.7299" x2="0.575" y2="3.5501" layer="51"/>
<rectangle x1="-0.475" y1="2.7299" x2="-0.075" y2="3.5501" layer="51"/>
<rectangle x1="-1.125" y1="2.7299" x2="-0.725" y2="3.5501" layer="51"/>
<rectangle x1="-1.775" y1="2.7299" x2="-1.3749" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="2.7299" x2="-2.0249" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="-3.3501" x2="-2.0249" y2="-2.5299" layer="51"/>
<rectangle x1="-1.775" y1="-3.3501" x2="-1.3749" y2="-2.5299" layer="51"/>
<rectangle x1="-1.125" y1="-3.3501" x2="-0.725" y2="-2.5299" layer="51"/>
<rectangle x1="-0.475" y1="-3.3501" x2="-0.075" y2="-2.5299" layer="51"/>
<rectangle x1="0.175" y1="-3.3501" x2="0.575" y2="-2.5299" layer="51"/>
<rectangle x1="0.825" y1="-3.3501" x2="1.225" y2="-2.5299" layer="51"/>
<rectangle x1="1.4749" y1="-3.3501" x2="1.875" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="-3.3501" x2="2.525" y2="-2.5299" layer="51"/>
<rectangle x1="2.1249" y1="2.7299" x2="2.525" y2="3.5501" layer="51"/>
<rectangle x1="1.4749" y1="2.7299" x2="1.875" y2="3.5501" layer="51"/>
<rectangle x1="0.825" y1="2.7299" x2="1.225" y2="3.5501" layer="51"/>
<rectangle x1="0.175" y1="2.7299" x2="0.575" y2="3.5501" layer="51"/>
<rectangle x1="-0.475" y1="2.7299" x2="-0.075" y2="3.5501" layer="51"/>
<rectangle x1="-1.125" y1="2.7299" x2="-0.725" y2="3.5501" layer="51"/>
<rectangle x1="-1.775" y1="2.7299" x2="-1.3749" y2="3.5501" layer="51"/>
<rectangle x1="-2.425" y1="2.7299" x2="-2.0249" y2="3.5501" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CD4017">
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-17.78" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="Q5" x="10.16" y="0" length="short" direction="out" rot="R180"/>
<pin name="Q1" x="10.16" y="10.16" length="short" direction="out" rot="R180"/>
<pin name="Q0" x="10.16" y="12.7" length="short" direction="out" rot="R180"/>
<pin name="Q2" x="10.16" y="7.62" length="short" direction="out" rot="R180"/>
<pin name="Q6" x="10.16" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="Q7" x="10.16" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="Q3" x="10.16" y="5.08" length="short" direction="out" rot="R180"/>
<pin name="Q8" x="10.16" y="-7.62" length="short" direction="out" rot="R180"/>
<pin name="Q4" x="10.16" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="Q9" x="10.16" y="-10.16" length="short" direction="out" rot="R180"/>
<pin name="CO" x="10.16" y="-15.24" length="short" direction="out" rot="R180"/>
<pin name="ENA" x="-10.16" y="-10.16" length="short" direction="in" function="dot"/>
<pin name="CLK" x="-10.16" y="0" length="short" direction="in" function="clk"/>
<pin name="RES" x="-10.16" y="-15.24" length="short" direction="in"/>
</symbol>
<symbol name="PWRN">
<text x="-0.508" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="0.762" y="-4.064" size="1.27" layer="95">GND</text>
<text x="0.762" y="2.921" size="1.27" layer="95">VCC</text>
<pin name="GND" x="0" y="-5.08" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="5.08" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CD4017" prefix="IC">
<gates>
<gate name="A" symbol="CD4017" x="0" y="0"/>
<gate name="P" symbol="PWRN" x="0" y="-30.48"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="A" pin="CLK" pad="14"/>
<connect gate="A" pin="CO" pad="12"/>
<connect gate="A" pin="ENA" pad="13"/>
<connect gate="A" pin="Q0" pad="3"/>
<connect gate="A" pin="Q1" pad="2"/>
<connect gate="A" pin="Q2" pad="4"/>
<connect gate="A" pin="Q3" pad="7"/>
<connect gate="A" pin="Q4" pad="10"/>
<connect gate="A" pin="Q5" pad="1"/>
<connect gate="A" pin="Q6" pad="5"/>
<connect gate="A" pin="Q7" pad="6"/>
<connect gate="A" pin="Q8" pad="9"/>
<connect gate="A" pin="Q9" pad="11"/>
<connect gate="A" pin="RES" pad="15"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-11929" constant="no"/>
<attribute name="VALUE" value="CD4017" constant="no"/>
</technology>
</technologies>
</device>
<device name="KIT" package="DIL16-KIT">
<connects>
<connect gate="A" pin="CLK" pad="14"/>
<connect gate="A" pin="CO" pad="12"/>
<connect gate="A" pin="ENA" pad="13"/>
<connect gate="A" pin="Q0" pad="3"/>
<connect gate="A" pin="Q1" pad="2"/>
<connect gate="A" pin="Q2" pad="4"/>
<connect gate="A" pin="Q3" pad="7"/>
<connect gate="A" pin="Q4" pad="10"/>
<connect gate="A" pin="Q5" pad="1"/>
<connect gate="A" pin="Q6" pad="5"/>
<connect gate="A" pin="Q7" pad="6"/>
<connect gate="A" pin="Q8" pad="9"/>
<connect gate="A" pin="Q9" pad="11"/>
<connect gate="A" pin="RES" pad="15"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-11929" constant="no"/>
</technology>
</technologies>
</device>
<device name="_TSSOP16" package="TSSOP16">
<connects>
<connect gate="A" pin="CLK" pad="14"/>
<connect gate="A" pin="CO" pad="12"/>
<connect gate="A" pin="ENA" pad="13"/>
<connect gate="A" pin="Q0" pad="3"/>
<connect gate="A" pin="Q1" pad="2"/>
<connect gate="A" pin="Q2" pad="4"/>
<connect gate="A" pin="Q3" pad="7"/>
<connect gate="A" pin="Q4" pad="10"/>
<connect gate="A" pin="Q5" pad="1"/>
<connect gate="A" pin="Q6" pad="5"/>
<connect gate="A" pin="Q7" pad="6"/>
<connect gate="A" pin="Q8" pad="9"/>
<connect gate="A" pin="Q9" pad="11"/>
<connect gate="A" pin="RES" pad="15"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-little-de">
<description>&lt;b&gt;Single and Dual Gates Family, US symbols&lt;/b&gt;&lt;p&gt;
Little logic devices from Texas Instruments&lt;br&gt;
TinyLogic(R) from FAIRCHILD Semiconductor TM
&lt;p&gt;
&lt;author&gt;Created by evgeni@eniks.com&lt;/author&gt;&lt;br&gt;
&lt;author&gt;Extended by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOT23-5">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;&lt;p&gt;
SOT753 - Philips Semiconductors&lt;br&gt;
Source: http://www.semiconductors.philips.com/acrobat_download/datasheets/74HC_HCT1G66_3.pdf</description>
<wire x1="0" y1="-1.29" x2="0" y2="-1.3" width="0.01" layer="21"/>
<wire x1="1.42" y1="0.8" x2="1.42" y2="-0.8" width="0.127" layer="21"/>
<wire x1="1.42" y1="-0.8" x2="-1.42" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.42" y1="-0.8" x2="-1.42" y2="0.8" width="0.127" layer="21"/>
<wire x1="-1.42" y1="0.8" x2="1.42" y2="0.8" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.65" x2="1.28" y2="0.65" width="0.075" layer="21"/>
<wire x1="1.28" y1="0.65" x2="1.28" y2="-0.66" width="0.075" layer="21"/>
<wire x1="1.28" y1="-0.66" x2="-1.27" y2="-0.66" width="0.075" layer="21"/>
<wire x1="-1.27" y1="-0.66" x2="-1.27" y2="0.65" width="0.075" layer="21"/>
<wire x1="-1.75" y1="2.25" x2="1.75" y2="2.25" width="0.254" layer="39"/>
<wire x1="1.75" y1="2.25" x2="1.75" y2="-2.25" width="0.254" layer="39"/>
<wire x1="1.75" y1="-2.25" x2="-1.75" y2="-2.25" width="0.254" layer="39"/>
<wire x1="-1.75" y1="-2.25" x2="-1.75" y2="2.25" width="0.254" layer="39"/>
<smd name="1" x="-0.95" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="2" x="0" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="3" x="0.95" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="4" x="0.95" y="1.3" dx="0.69" dy="0.99" layer="1"/>
<smd name="5" x="-0.95" y="1.3" dx="0.69" dy="0.99" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.11" y1="0.68" x2="-0.78" y2="1.43" layer="51"/>
<rectangle x1="0.79" y1="0.67" x2="1.12" y2="1.42" layer="51"/>
<rectangle x1="-1.11" y1="-1.42" x2="-0.78" y2="-0.67" layer="51"/>
<rectangle x1="-0.16" y1="-1.42" x2="0.17" y2="-0.67" layer="51"/>
<rectangle x1="0.79" y1="-1.42" x2="1.12" y2="-0.67" layer="51"/>
</package>
<package name="SC70-5">
<description>&lt;b&gt;SMT SC70-5&lt;/b&gt;&lt;p&gt;
SOT353 - Philips Semiconductors&lt;br&gt;
Source: http://www.semiconductors.philips.com/acrobat_download/datasheets/74HC_HCT1G66_3.pdf</description>
<wire x1="1" y1="0.55" x2="-1" y2="0.55" width="0.127" layer="51"/>
<wire x1="-1" y1="0.55" x2="-1" y2="-0.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.55" x2="1" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1" y1="-0.55" x2="1" y2="0.55" width="0.127" layer="21"/>
<smd name="1" x="-0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="2" x="0" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="3" x="0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="4" x="0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="5" x="-0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.125" y1="-1.05" x2="0.125" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="-1.05" x2="-0.525" y2="-0.6" layer="51"/>
<rectangle x1="0.525" y1="-1.05" x2="0.775" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="0.6" x2="-0.525" y2="1.05" layer="51"/>
<rectangle x1="0.525" y1="0.6" x2="0.775" y2="1.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="7404">
<wire x1="-2.54" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.4064" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-5.08" y="0" visible="pad" length="short" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-6.35" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*1G04" prefix="IC">
<description>&lt;b&gt;INVERTER&lt;/b&gt; Gate</description>
<gates>
<gate name="A" symbol="7404" x="17.78" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-10.16" addlevel="request"/>
</gates>
<devices>
<device name="DBV" package="SOT23-5">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name="AHC"/>
<technology name="AHCT"/>
<technology name="AUC"/>
<technology name="LVC"/>
</technologies>
</device>
<device name="DCK" package="SC70-5">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name="AHC"/>
<technology name="AHCT"/>
<technology name="AUC"/>
<technology name="LVC"/>
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
<symbol name="VCC">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
</symbols>
<devicesets>
<deviceset name="10UF-6.3V-20%(0603)" prefix="C" uservalue="yes">
<description>CAP-11015</description>
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
<attribute name="PROD_ID" value="CAP-11015" constant="no"/>
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
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
<package name="0603-RES">
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
<rectangle x1="-0.2286" y1="-0.381" x2="0.2286" y2="0.381" layer="21"/>
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
<deviceset name="100KOHM-1/10W-1%(0603)" prefix="R" uservalue="yes">
<description>RES-07828</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-07828"/>
<attribute name="VALUE" value="100k" constant="no"/>
</technology>
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
<part name="IC2" library="SparkFun-DigitalIC" deviceset="CD4017" device="_TSSOP16"/>
<part name="IC4" library="74xx-little-de" deviceset="74*1G04" device="DBV" technology="AHC"/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C1" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(0603)" device="" value="10uF"/>
<part name="R1" library="SparkFun-Resistors" deviceset="100KOHM-1/10W-1%(0603)" device="" value="100k"/>
<part name="R2" library="SparkFun-Resistors" deviceset="100KOHM-1/10W-1%(0603)" device="" value="100k"/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="C2" library="SparkFun-Capacitors" deviceset="10UF-6.3V-20%(0603)" device="" value="10uF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC2" gate="A" x="27.94" y="35.56"/>
<instance part="IC2" gate="P" x="12.7" y="48.26"/>
<instance part="IC4" gate="A" x="152.4" y="12.7" rot="R180"/>
<instance part="IC4" gate="P" x="172.72" y="12.7"/>
<instance part="SUPPLY1" gate="G$1" x="172.72" y="25.4"/>
<instance part="GND1" gate="1" x="172.72" y="0"/>
<instance part="C1" gate="G$1" x="182.88" y="10.16"/>
<instance part="R1" gate="G$1" x="157.48" y="17.78" rot="R90"/>
<instance part="R2" gate="G$1" x="157.48" y="7.62" rot="R90"/>
<instance part="SUPPLY2" gate="G$1" x="12.7" y="53.34"/>
<instance part="GND2" gate="1" x="12.7" y="40.64"/>
<instance part="C2" gate="G$1" x="5.08" y="48.26"/>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="IC4" gate="P" pin="VCC"/>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<wire x1="172.72" y1="25.4" x2="172.72" y2="22.86" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="172.72" y1="22.86" x2="172.72" y2="20.32" width="0.1524" layer="91"/>
<wire x1="182.88" y1="15.24" x2="182.88" y2="20.32" width="0.1524" layer="91"/>
<wire x1="182.88" y1="20.32" x2="172.72" y2="20.32" width="0.1524" layer="91"/>
<junction x="172.72" y="20.32"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="157.48" y1="22.86" x2="172.72" y2="22.86" width="0.1524" layer="91"/>
<junction x="172.72" y="22.86"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="VCC"/>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="12.7" y1="53.34" x2="5.08" y2="53.34" width="0.1524" layer="91"/>
<junction x="12.7" y="53.34"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC4" gate="P" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="172.72" y1="2.54" x2="172.72" y2="5.08" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="157.48" y1="2.54" x2="172.72" y2="2.54" width="0.1524" layer="91"/>
<junction x="172.72" y="2.54"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="182.88" y1="7.62" x2="182.88" y2="5.08" width="0.1524" layer="91"/>
<wire x1="172.72" y1="5.08" x2="182.88" y2="5.08" width="0.1524" layer="91"/>
<junction x="172.72" y="5.08"/>
</segment>
<segment>
<pinref part="IC2" gate="P" pin="GND"/>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="45.72" x2="5.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="5.08" y1="43.18" x2="12.7" y2="43.18" width="0.1524" layer="91"/>
<junction x="12.7" y="43.18"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC4" gate="A" pin="I"/>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="1"/>
<junction x="157.48" y="12.7"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="IC4" gate="A" pin="O"/>
<wire x1="142.24" y1="12.7" x2="121.92" y2="12.7" width="0.1524" layer="91"/>
<label x="121.92" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="RES"/>
<wire x1="17.78" y1="20.32" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
<label x="5.08" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="555_CLK" class="0">
<segment>
<pinref part="IC2" gate="A" pin="CLK"/>
<wire x1="17.78" y1="35.56" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
<label x="5.08" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
