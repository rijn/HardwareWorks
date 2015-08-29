<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.3.0">
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74xx-us">
<description>&lt;b&gt;TTL Devices, 74xx Series with US Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SO20W">
<description>&lt;b&gt;Wide Small Outline package&lt;/b&gt; 300 mil</description>
<wire x1="6.1214" y1="3.7338" x2="-6.1214" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-3.7338" x2="6.5024" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.1214" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.1214" y1="3.7338" x2="6.5024" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.5024" y1="-3.3528" x2="-6.1214" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.1214" y1="-3.7338" x2="6.1214" y2="-3.7338" width="0.1524" layer="51"/>
<wire x1="6.5024" y1="-3.3528" x2="6.5024" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.5024" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="-1.27" x2="-6.5024" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-3.3782" x2="6.477" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-1.778" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="-3.175" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="51"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="51"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="51"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="51"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="51"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="51"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="51"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="51"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="51"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="51"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="51"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="51"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="51"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="51"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="51"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="51"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="74245">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DIR" x="-12.7" y="-10.16" length="middle" direction="in"/>
<pin name="A1" x="-12.7" y="12.7" length="middle"/>
<pin name="A2" x="-12.7" y="10.16" length="middle"/>
<pin name="A3" x="-12.7" y="7.62" length="middle"/>
<pin name="A4" x="-12.7" y="5.08" length="middle"/>
<pin name="A5" x="-12.7" y="2.54" length="middle"/>
<pin name="A6" x="-12.7" y="0" length="middle"/>
<pin name="A7" x="-12.7" y="-2.54" length="middle"/>
<pin name="A8" x="-12.7" y="-5.08" length="middle"/>
<pin name="B8" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="B7" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="B6" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="B5" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="B4" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="B3" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="B2" x="12.7" y="10.16" length="middle" rot="R180"/>
<pin name="B1" x="12.7" y="12.7" length="middle" rot="R180"/>
<pin name="G" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="VCC" x="12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="OE" x="12.7" y="-12.7" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*245" prefix="IC">
<description>Octal &lt;b&gt;BUS TRANSCEIVER&lt;/b&gt;, 3-state</description>
<gates>
<gate name="A" symbol="74245" x="20.32" y="0"/>
</gates>
<devices>
<device name="N" package="DIL20">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="19"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="DW" package="SO20W">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="10"/>
<connect gate="A" pin="OE" pad="19"/>
<connect gate="A" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="A1" pad="2"/>
<connect gate="A" pin="A2" pad="3"/>
<connect gate="A" pin="A3" pad="4"/>
<connect gate="A" pin="A4" pad="5"/>
<connect gate="A" pin="A5" pad="6"/>
<connect gate="A" pin="A6" pad="7"/>
<connect gate="A" pin="A7" pad="8"/>
<connect gate="A" pin="A8" pad="9"/>
<connect gate="A" pin="B1" pad="18"/>
<connect gate="A" pin="B2" pad="17"/>
<connect gate="A" pin="B3" pad="16"/>
<connect gate="A" pin="B4" pad="15"/>
<connect gate="A" pin="B5" pad="14"/>
<connect gate="A" pin="B6" pad="13"/>
<connect gate="A" pin="B7" pad="12"/>
<connect gate="A" pin="B8" pad="11"/>
<connect gate="A" pin="DIR" pad="1"/>
<connect gate="A" pin="G" pad="19"/>
</connects>
<technologies>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA20-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-24.765" y1="1.27" x2="-23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="1.27" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.635" x2="-23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-1.27" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-1.27" x2="-22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="1.27" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-0.635" x2="-24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-1.27" x2="-24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-1.27" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-1.27" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-1.27" x2="22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-25.4" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-24.384" y="-2.794" size="1.27" layer="21" ratio="10">1</text>
<text x="23.241" y="-2.921" size="1.27" layer="21" ratio="10">20</text>
<text x="-1.905" y="-2.921" size="1.27" layer="21" ratio="10">10</text>
<text x="-17.78" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-24.4602" y1="-0.3302" x2="-23.7998" y2="0.3302" layer="51"/>
<rectangle x1="0.9398" y1="-0.3302" x2="1.6002" y2="0.3302" layer="51"/>
<rectangle x1="-21.9202" y1="-0.3302" x2="-21.2598" y2="0.3302" layer="51"/>
<rectangle x1="-19.3802" y1="-0.3302" x2="-18.7198" y2="0.3302" layer="51"/>
<rectangle x1="-16.8402" y1="-0.3302" x2="-16.1798" y2="0.3302" layer="51"/>
<rectangle x1="-14.3002" y1="-0.3302" x2="-13.6398" y2="0.3302" layer="51"/>
<rectangle x1="3.4798" y1="-0.3302" x2="4.1402" y2="0.3302" layer="51"/>
<rectangle x1="6.0198" y1="-0.3302" x2="6.6802" y2="0.3302" layer="51"/>
<rectangle x1="8.5598" y1="-0.3302" x2="9.2202" y2="0.3302" layer="51"/>
<rectangle x1="11.0998" y1="-0.3302" x2="11.7602" y2="0.3302" layer="51"/>
<rectangle x1="-11.7602" y1="-0.3302" x2="-11.0998" y2="0.3302" layer="51"/>
<rectangle x1="-9.2202" y1="-0.3302" x2="-8.5598" y2="0.3302" layer="51"/>
<rectangle x1="-6.6802" y1="-0.3302" x2="-6.0198" y2="0.3302" layer="51"/>
<rectangle x1="-4.1402" y1="-0.3302" x2="-3.4798" y2="0.3302" layer="51"/>
<rectangle x1="-1.6002" y1="-0.3302" x2="-0.9398" y2="0.3302" layer="51"/>
<rectangle x1="13.6398" y1="-0.3302" x2="14.3002" y2="0.3302" layer="51"/>
<rectangle x1="16.1798" y1="-0.3302" x2="16.8402" y2="0.3302" layer="51"/>
<rectangle x1="18.7198" y1="-0.3302" x2="19.3802" y2="0.3302" layer="51"/>
<rectangle x1="21.2598" y1="-0.3302" x2="21.9202" y2="0.3302" layer="51"/>
<rectangle x1="23.7998" y1="-0.3302" x2="24.4602" y2="0.3302" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA20-1">
<wire x1="3.81" y1="-25.4" x2="-1.27" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="25.4" x2="2.54" y2="25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="27.94" x2="-1.27" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-25.4" x2="3.81" y2="27.94" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="27.94" x2="3.81" y2="27.94" width="0.4064" layer="94"/>
<text x="-1.27" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="28.702" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA20-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA20-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA20-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="11" pad="11"/>
<connect gate="1" pin="12" pad="12"/>
<connect gate="1" pin="13" pad="13"/>
<connect gate="1" pin="14" pad="14"/>
<connect gate="1" pin="15" pad="15"/>
<connect gate="1" pin="16" pad="16"/>
<connect gate="1" pin="17" pad="17"/>
<connect gate="1" pin="18" pad="18"/>
<connect gate="1" pin="19" pad="19"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="20" pad="20"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LP2C63-ST-RGB-SR0">
<description>&lt;b&gt;1.5W RGB HIGH POWER LED&lt;/b&gt;&lt;p&gt;
LEDTECH ELECTRONICS CORP.&lt;br&gt;
Source: LP2C63-ST-RGB-SR0.SPEC.pdf</description>
<wire x1="-2.4" y1="2.4" x2="2.4" y2="2.4" width="0.2032" layer="21"/>
<wire x1="2.4" y1="2.4" x2="2.4" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-2.4" x2="-2.4" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-2.4" x2="-2.4" y2="2.4" width="0.2032" layer="21"/>
<wire x1="-2.375" y1="1.5" x2="-1.5" y2="2.375" width="0.2032" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="-2.032" y2="1.016" width="0.2032" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="-1.016" y2="2.032" width="0.2032" layer="21" curve="-90"/>
<wire x1="-1.016" y1="2.032" x2="1.016" y2="2.032" width="0.2032" layer="21"/>
<wire x1="1.016" y1="2.032" x2="2.032" y2="1.016" width="0.2032" layer="21" curve="-90"/>
<wire x1="2.032" y1="-1.016" x2="2.032" y2="1.016" width="0.2032" layer="21"/>
<wire x1="2.032" y1="-1.016" x2="1.016" y2="-2.032" width="0.2032" layer="21" curve="-90"/>
<wire x1="1.016" y1="-2.032" x2="-1.016" y2="-2.032" width="0.2032" layer="21"/>
<wire x1="-1.016" y1="-2.032" x2="-2.032" y2="-1.016" width="0.2032" layer="21" curve="-90"/>
<wire x1="1.5" y1="2.375" x2="2.375" y2="1.5" width="0.2032" layer="21"/>
<smd name="1" x="-3.25" y="1.6" dx="1.3" dy="1" layer="1"/>
<smd name="2" x="-3.25" y="0" dx="1.3" dy="1" layer="1"/>
<smd name="3" x="-3.25" y="-1.6" dx="1.3" dy="1" layer="1"/>
<smd name="4" x="3.25" y="-1.6" dx="1.3" dy="1" layer="1" rot="R180"/>
<smd name="5" x="3.25" y="0" dx="1.3" dy="1" layer="1" rot="R180"/>
<smd name="6" x="3.25" y="1.6" dx="1.3" dy="1" layer="1" rot="R180"/>
<smd name="TH" x="0" y="0" dx="2" dy="3" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.7" y1="-0.5" x2="-2.5" y2="0.5" layer="51"/>
<rectangle x1="-3.7" y1="1.1" x2="-2.5" y2="2.1" layer="51"/>
<rectangle x1="-3.7" y1="-2.1" x2="-2.5" y2="-1.1" layer="51"/>
<rectangle x1="2.5" y1="-0.5" x2="3.7" y2="0.5" layer="51" rot="R180"/>
<rectangle x1="2.5" y1="-2.1" x2="3.7" y2="-1.1" layer="51" rot="R180"/>
<rectangle x1="2.5" y1="1.1" x2="3.7" y2="2.1" layer="51" rot="R180"/>
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
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
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
<symbol name="THERMAL">
<circle x="0" y="-1.524" radius="1.397" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="1.016" layer="95">TH</text>
<pin name="TH" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LP2C63-ST-RGB-SR0" prefix="LED">
<description>&lt;b&gt;1.5W RGB HIGH POWER LED&lt;/b&gt;&lt;p&gt;
Source: http://www.ledtech.com.tw .. LP2C63-ST-RGB-SR0.SPEC.pdf</description>
<gates>
<gate name="G" symbol="LED" x="-12.7" y="0" addlevel="always"/>
<gate name="R" symbol="LED" x="0" y="0" addlevel="always"/>
<gate name="B" symbol="LED" x="12.7" y="0" addlevel="always"/>
<gate name="TH" symbol="THERMAL" x="25.4" y="-2.54" addlevel="always"/>
</gates>
<devices>
<device name="" package="LP2C63-ST-RGB-SR0">
<connects>
<connect gate="B" pin="A" pad="3"/>
<connect gate="B" pin="C" pad="4"/>
<connect gate="G" pin="A" pad="1"/>
<connect gate="G" pin="C" pad="6"/>
<connect gate="R" pin="A" pad="2"/>
<connect gate="R" pin="C" pad="5"/>
<connect gate="TH" pin="TH" pad="TH"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R0201">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1005">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3225">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R4527">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R5025">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1005" package="R1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
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
<part name="IC1" library="74xx-us" deviceset="74*245" device="DW" technology="LS"/>
<part name="SV1" library="con-lstb" deviceset="MA20-1" device=""/>
<part name="IC2" library="74xx-us" deviceset="74*245" device="DW" technology="LS"/>
<part name="LED1" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R1" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R2" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R3" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="RJ1" library="eagle-ltspice" deviceset="R" device=""/>
<part name="LED2" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R4" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R5" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R6" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED3" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R7" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R8" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R9" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED4" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R10" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R11" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R12" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED5" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R13" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R14" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R15" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED6" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R16" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R17" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R18" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED7" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R19" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R20" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R21" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED8" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R22" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R23" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R24" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED9" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R25" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R26" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R27" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED10" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R28" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R29" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R30" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED11" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R31" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R32" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R33" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED12" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R34" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R35" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R36" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED13" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R37" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R38" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R39" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED14" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R40" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R41" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R42" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED15" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R43" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R44" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R45" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="LED16" library="led" deviceset="LP2C63-ST-RGB-SR0" device=""/>
<part name="R46" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R47" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
<part name="R48" library="eagle-ltspice" deviceset="R" device="R0603">
<attribute name="SPICEMODEL" value="100Ω"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="71.12" y="45.72"/>
<instance part="SV1" gate="1" x="15.24" y="33.02"/>
<instance part="IC2" gate="A" x="71.12" y="0"/>
<instance part="LED1" gate="G" x="157.48" y="106.68" rot="R90"/>
<instance part="LED1" gate="R" x="157.48" y="119.38" rot="R90"/>
<instance part="LED1" gate="B" x="157.48" y="132.08" rot="R90"/>
<instance part="LED1" gate="TH" x="160.02" y="144.78" rot="R90"/>
<instance part="R1" gate="G$1" x="172.72" y="132.08">
<attribute name="SPICEMODEL" x="172.72" y="132.08" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="172.72" y="119.38">
<attribute name="SPICEMODEL" x="172.72" y="119.38" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="172.72" y="106.68">
<attribute name="SPICEMODEL" x="172.72" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="RJ1" gate="G$1" x="71.12" y="96.52"/>
<instance part="LED2" gate="G" x="157.48" y="53.34" rot="R90"/>
<instance part="LED2" gate="R" x="157.48" y="66.04" rot="R90"/>
<instance part="LED2" gate="B" x="157.48" y="78.74" rot="R90"/>
<instance part="LED2" gate="TH" x="160.02" y="91.44" rot="R90"/>
<instance part="R4" gate="G$1" x="172.72" y="78.74">
<attribute name="SPICEMODEL" x="172.72" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="R5" gate="G$1" x="172.72" y="66.04">
<attribute name="SPICEMODEL" x="172.72" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="172.72" y="53.34">
<attribute name="SPICEMODEL" x="172.72" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="LED3" gate="G" x="157.48" y="5.08" rot="R90"/>
<instance part="LED3" gate="R" x="157.48" y="17.78" rot="R90"/>
<instance part="LED3" gate="B" x="157.48" y="30.48" rot="R90"/>
<instance part="LED3" gate="TH" x="160.02" y="43.18" rot="R90"/>
<instance part="R7" gate="G$1" x="172.72" y="30.48">
<attribute name="SPICEMODEL" x="172.72" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="R8" gate="G$1" x="172.72" y="17.78">
<attribute name="SPICEMODEL" x="172.72" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="R9" gate="G$1" x="172.72" y="5.08">
<attribute name="SPICEMODEL" x="172.72" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="LED4" gate="G" x="157.48" y="-45.72" rot="R90"/>
<instance part="LED4" gate="R" x="157.48" y="-33.02" rot="R90"/>
<instance part="LED4" gate="B" x="157.48" y="-20.32" rot="R90"/>
<instance part="LED4" gate="TH" x="160.02" y="-7.62" rot="R90"/>
<instance part="R10" gate="G$1" x="172.72" y="-20.32">
<attribute name="SPICEMODEL" x="172.72" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="R11" gate="G$1" x="172.72" y="-33.02">
<attribute name="SPICEMODEL" x="172.72" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="R12" gate="G$1" x="172.72" y="-45.72">
<attribute name="SPICEMODEL" x="172.72" y="-45.72" size="1.778" layer="96"/>
</instance>
<instance part="LED5" gate="G" x="233.68" y="106.68" rot="R90"/>
<instance part="LED5" gate="R" x="233.68" y="119.38" rot="R90"/>
<instance part="LED5" gate="B" x="233.68" y="132.08" rot="R90"/>
<instance part="LED5" gate="TH" x="236.22" y="144.78" rot="R90"/>
<instance part="R13" gate="G$1" x="248.92" y="132.08">
<attribute name="SPICEMODEL" x="248.92" y="132.08" size="1.778" layer="96"/>
</instance>
<instance part="R14" gate="G$1" x="248.92" y="119.38">
<attribute name="SPICEMODEL" x="248.92" y="119.38" size="1.778" layer="96"/>
</instance>
<instance part="R15" gate="G$1" x="248.92" y="106.68">
<attribute name="SPICEMODEL" x="248.92" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="LED6" gate="G" x="233.68" y="53.34" rot="R90"/>
<instance part="LED6" gate="R" x="233.68" y="66.04" rot="R90"/>
<instance part="LED6" gate="B" x="233.68" y="78.74" rot="R90"/>
<instance part="LED6" gate="TH" x="236.22" y="91.44" rot="R90"/>
<instance part="R16" gate="G$1" x="248.92" y="78.74">
<attribute name="SPICEMODEL" x="248.92" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="R17" gate="G$1" x="248.92" y="66.04">
<attribute name="SPICEMODEL" x="248.92" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="R18" gate="G$1" x="248.92" y="53.34">
<attribute name="SPICEMODEL" x="248.92" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="LED7" gate="G" x="233.68" y="5.08" rot="R90"/>
<instance part="LED7" gate="R" x="233.68" y="17.78" rot="R90"/>
<instance part="LED7" gate="B" x="233.68" y="30.48" rot="R90"/>
<instance part="LED7" gate="TH" x="236.22" y="43.18" rot="R90"/>
<instance part="R19" gate="G$1" x="248.92" y="30.48">
<attribute name="SPICEMODEL" x="248.92" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="R20" gate="G$1" x="248.92" y="17.78">
<attribute name="SPICEMODEL" x="248.92" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="R21" gate="G$1" x="248.92" y="5.08">
<attribute name="SPICEMODEL" x="248.92" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="LED8" gate="G" x="233.68" y="-45.72" rot="R90"/>
<instance part="LED8" gate="R" x="233.68" y="-33.02" rot="R90"/>
<instance part="LED8" gate="B" x="233.68" y="-20.32" rot="R90"/>
<instance part="LED8" gate="TH" x="236.22" y="-7.62" rot="R90"/>
<instance part="R22" gate="G$1" x="248.92" y="-20.32">
<attribute name="SPICEMODEL" x="248.92" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="R23" gate="G$1" x="248.92" y="-33.02">
<attribute name="SPICEMODEL" x="248.92" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="R24" gate="G$1" x="248.92" y="-45.72">
<attribute name="SPICEMODEL" x="248.92" y="-45.72" size="1.778" layer="96"/>
</instance>
<instance part="LED9" gate="G" x="309.88" y="106.68" rot="R90"/>
<instance part="LED9" gate="R" x="309.88" y="119.38" rot="R90"/>
<instance part="LED9" gate="B" x="309.88" y="132.08" rot="R90"/>
<instance part="LED9" gate="TH" x="312.42" y="144.78" rot="R90"/>
<instance part="R25" gate="G$1" x="325.12" y="132.08">
<attribute name="SPICEMODEL" x="325.12" y="132.08" size="1.778" layer="96"/>
</instance>
<instance part="R26" gate="G$1" x="325.12" y="119.38">
<attribute name="SPICEMODEL" x="325.12" y="119.38" size="1.778" layer="96"/>
</instance>
<instance part="R27" gate="G$1" x="325.12" y="106.68">
<attribute name="SPICEMODEL" x="325.12" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="LED10" gate="G" x="309.88" y="53.34" rot="R90"/>
<instance part="LED10" gate="R" x="309.88" y="66.04" rot="R90"/>
<instance part="LED10" gate="B" x="309.88" y="78.74" rot="R90"/>
<instance part="LED10" gate="TH" x="312.42" y="91.44" rot="R90"/>
<instance part="R28" gate="G$1" x="325.12" y="78.74">
<attribute name="SPICEMODEL" x="325.12" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="R29" gate="G$1" x="325.12" y="66.04">
<attribute name="SPICEMODEL" x="325.12" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="R30" gate="G$1" x="325.12" y="53.34">
<attribute name="SPICEMODEL" x="325.12" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="LED11" gate="G" x="309.88" y="5.08" rot="R90"/>
<instance part="LED11" gate="R" x="309.88" y="17.78" rot="R90"/>
<instance part="LED11" gate="B" x="309.88" y="30.48" rot="R90"/>
<instance part="LED11" gate="TH" x="312.42" y="43.18" rot="R90"/>
<instance part="R31" gate="G$1" x="325.12" y="30.48">
<attribute name="SPICEMODEL" x="325.12" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="R32" gate="G$1" x="325.12" y="17.78">
<attribute name="SPICEMODEL" x="325.12" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="R33" gate="G$1" x="325.12" y="5.08">
<attribute name="SPICEMODEL" x="325.12" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="LED12" gate="G" x="309.88" y="-45.72" rot="R90"/>
<instance part="LED12" gate="R" x="309.88" y="-33.02" rot="R90"/>
<instance part="LED12" gate="B" x="309.88" y="-20.32" rot="R90"/>
<instance part="LED12" gate="TH" x="312.42" y="-7.62" rot="R90"/>
<instance part="R34" gate="G$1" x="325.12" y="-20.32">
<attribute name="SPICEMODEL" x="325.12" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="R35" gate="G$1" x="325.12" y="-33.02">
<attribute name="SPICEMODEL" x="325.12" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="R36" gate="G$1" x="325.12" y="-45.72">
<attribute name="SPICEMODEL" x="325.12" y="-45.72" size="1.778" layer="96"/>
</instance>
<instance part="LED13" gate="G" x="386.08" y="106.68" rot="R90"/>
<instance part="LED13" gate="R" x="386.08" y="119.38" rot="R90"/>
<instance part="LED13" gate="B" x="386.08" y="132.08" rot="R90"/>
<instance part="LED13" gate="TH" x="388.62" y="144.78" rot="R90"/>
<instance part="R37" gate="G$1" x="401.32" y="132.08">
<attribute name="SPICEMODEL" x="401.32" y="132.08" size="1.778" layer="96"/>
</instance>
<instance part="R38" gate="G$1" x="401.32" y="119.38">
<attribute name="SPICEMODEL" x="401.32" y="119.38" size="1.778" layer="96"/>
</instance>
<instance part="R39" gate="G$1" x="401.32" y="106.68">
<attribute name="SPICEMODEL" x="401.32" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="LED14" gate="G" x="386.08" y="53.34" rot="R90"/>
<instance part="LED14" gate="R" x="386.08" y="66.04" rot="R90"/>
<instance part="LED14" gate="B" x="386.08" y="78.74" rot="R90"/>
<instance part="LED14" gate="TH" x="388.62" y="91.44" rot="R90"/>
<instance part="R40" gate="G$1" x="401.32" y="78.74">
<attribute name="SPICEMODEL" x="401.32" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="R41" gate="G$1" x="401.32" y="66.04">
<attribute name="SPICEMODEL" x="401.32" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="R42" gate="G$1" x="401.32" y="53.34">
<attribute name="SPICEMODEL" x="401.32" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="LED15" gate="G" x="386.08" y="5.08" rot="R90"/>
<instance part="LED15" gate="R" x="386.08" y="17.78" rot="R90"/>
<instance part="LED15" gate="B" x="386.08" y="30.48" rot="R90"/>
<instance part="LED15" gate="TH" x="388.62" y="43.18" rot="R90"/>
<instance part="R43" gate="G$1" x="401.32" y="30.48">
<attribute name="SPICEMODEL" x="401.32" y="30.48" size="1.778" layer="96"/>
</instance>
<instance part="R44" gate="G$1" x="401.32" y="17.78">
<attribute name="SPICEMODEL" x="401.32" y="17.78" size="1.778" layer="96"/>
</instance>
<instance part="R45" gate="G$1" x="401.32" y="5.08">
<attribute name="SPICEMODEL" x="401.32" y="5.08" size="1.778" layer="96"/>
</instance>
<instance part="LED16" gate="G" x="386.08" y="-45.72" rot="R90"/>
<instance part="LED16" gate="R" x="386.08" y="-33.02" rot="R90"/>
<instance part="LED16" gate="B" x="386.08" y="-20.32" rot="R90"/>
<instance part="LED16" gate="TH" x="388.62" y="-7.62" rot="R90"/>
<instance part="R46" gate="G$1" x="401.32" y="-20.32">
<attribute name="SPICEMODEL" x="401.32" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="R47" gate="G$1" x="401.32" y="-33.02">
<attribute name="SPICEMODEL" x="401.32" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="R48" gate="G$1" x="401.32" y="-45.72">
<attribute name="SPICEMODEL" x="401.32" y="-45.72" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="SV1" gate="1" pin="1"/>
<wire x1="22.86" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<label x="25.4" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="VCC"/>
<wire x1="83.82" y1="-10.16" x2="86.36" y2="-10.16" width="0.1524" layer="91"/>
<label x="91.44" y="-10.16" size="1.778" layer="95"/>
<pinref part="IC2" gate="A" pin="DIR"/>
<wire x1="86.36" y1="-10.16" x2="91.44" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-10.16" x2="58.42" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-7.62" x2="86.36" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-7.62" x2="86.36" y2="-10.16" width="0.1524" layer="91"/>
<junction x="86.36" y="-10.16"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="VCC"/>
<wire x1="83.82" y1="35.56" x2="86.36" y2="35.56" width="0.1524" layer="91"/>
<label x="91.44" y="35.56" size="1.778" layer="95"/>
<pinref part="IC1" gate="A" pin="DIR"/>
<wire x1="86.36" y1="35.56" x2="91.44" y2="35.56" width="0.1524" layer="91"/>
<wire x1="58.42" y1="35.56" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
<wire x1="58.42" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="86.36" y1="38.1" x2="86.36" y2="35.56" width="0.1524" layer="91"/>
<junction x="86.36" y="35.56"/>
</segment>
</net>
<net name="P1" class="0">
<segment>
<pinref part="SV1" gate="1" pin="2"/>
<wire x1="22.86" y1="12.7" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<label x="25.4" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A1"/>
<wire x1="58.42" y1="58.42" x2="50.8" y2="58.42" width="0.1524" layer="91"/>
<label x="50.8" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="P2" class="0">
<segment>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="22.86" y1="15.24" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<label x="25.4" y="15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A2"/>
<wire x1="58.42" y1="55.88" x2="50.8" y2="55.88" width="0.1524" layer="91"/>
<label x="50.8" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="P3" class="0">
<segment>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="22.86" y1="17.78" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<label x="25.4" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A3"/>
<wire x1="58.42" y1="53.34" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
<label x="50.8" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="P4" class="0">
<segment>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="22.86" y1="20.32" x2="25.4" y2="20.32" width="0.1524" layer="91"/>
<label x="25.4" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A4"/>
<wire x1="58.42" y1="50.8" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<label x="50.8" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="P5" class="0">
<segment>
<pinref part="SV1" gate="1" pin="6"/>
<wire x1="22.86" y1="22.86" x2="25.4" y2="22.86" width="0.1524" layer="91"/>
<label x="25.4" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A5"/>
<wire x1="58.42" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<label x="50.8" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="P6" class="0">
<segment>
<pinref part="SV1" gate="1" pin="7"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<label x="25.4" y="25.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A6"/>
<wire x1="58.42" y1="45.72" x2="50.8" y2="45.72" width="0.1524" layer="91"/>
<label x="50.8" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="P7" class="0">
<segment>
<pinref part="SV1" gate="1" pin="8"/>
<wire x1="22.86" y1="27.94" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<label x="25.4" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A7"/>
<wire x1="58.42" y1="43.18" x2="50.8" y2="43.18" width="0.1524" layer="91"/>
<label x="50.8" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="P8" class="0">
<segment>
<pinref part="SV1" gate="1" pin="9"/>
<wire x1="22.86" y1="30.48" x2="25.4" y2="30.48" width="0.1524" layer="91"/>
<label x="25.4" y="30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="A8"/>
<wire x1="58.42" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<label x="50.8" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="P9" class="0">
<segment>
<pinref part="SV1" gate="1" pin="10"/>
<wire x1="22.86" y1="33.02" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<label x="25.4" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A1"/>
<wire x1="58.42" y1="12.7" x2="50.8" y2="12.7" width="0.1524" layer="91"/>
<label x="50.8" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="P10" class="0">
<segment>
<pinref part="SV1" gate="1" pin="11"/>
<wire x1="22.86" y1="35.56" x2="25.4" y2="35.56" width="0.1524" layer="91"/>
<label x="25.4" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A2"/>
<wire x1="58.42" y1="10.16" x2="50.8" y2="10.16" width="0.1524" layer="91"/>
<label x="50.8" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="P11" class="0">
<segment>
<pinref part="SV1" gate="1" pin="12"/>
<wire x1="22.86" y1="38.1" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<label x="25.4" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A3"/>
<wire x1="58.42" y1="7.62" x2="50.8" y2="7.62" width="0.1524" layer="91"/>
<label x="50.8" y="7.62" size="1.778" layer="95"/>
<label x="50.8" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="P12" class="0">
<segment>
<pinref part="SV1" gate="1" pin="13"/>
<wire x1="22.86" y1="40.64" x2="25.4" y2="40.64" width="0.1524" layer="91"/>
<label x="25.4" y="40.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A4"/>
<wire x1="58.42" y1="5.08" x2="50.8" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P13" class="0">
<segment>
<pinref part="SV1" gate="1" pin="14"/>
<wire x1="22.86" y1="43.18" x2="25.4" y2="43.18" width="0.1524" layer="91"/>
<label x="25.4" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A5"/>
<wire x1="58.42" y1="2.54" x2="50.8" y2="2.54" width="0.1524" layer="91"/>
<label x="50.8" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="P14" class="0">
<segment>
<pinref part="SV1" gate="1" pin="15"/>
<wire x1="22.86" y1="45.72" x2="25.4" y2="45.72" width="0.1524" layer="91"/>
<label x="25.4" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A6"/>
<wire x1="58.42" y1="0" x2="50.8" y2="0" width="0.1524" layer="91"/>
<label x="50.8" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="P15" class="0">
<segment>
<pinref part="SV1" gate="1" pin="16"/>
<wire x1="22.86" y1="48.26" x2="25.4" y2="48.26" width="0.1524" layer="91"/>
<label x="25.4" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A7"/>
<wire x1="58.42" y1="-2.54" x2="50.8" y2="-2.54" width="0.1524" layer="91"/>
<label x="50.8" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="P16" class="0">
<segment>
<pinref part="SV1" gate="1" pin="17"/>
<wire x1="22.86" y1="50.8" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<label x="25.4" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="A8"/>
<wire x1="58.42" y1="-5.08" x2="50.8" y2="-5.08" width="0.1524" layer="91"/>
<label x="50.8" y="-5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV1" gate="1" pin="18"/>
<wire x1="22.86" y1="53.34" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<label x="25.4" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="G"/>
<wire x1="58.42" y1="33.02" x2="50.8" y2="33.02" width="0.1524" layer="91"/>
<label x="50.8" y="33.02" size="1.778" layer="95"/>
<pinref part="IC1" gate="A" pin="OE"/>
<wire x1="83.82" y1="33.02" x2="83.82" y2="25.4" width="0.1524" layer="91"/>
<wire x1="83.82" y1="25.4" x2="58.42" y2="25.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="25.4" x2="58.42" y2="33.02" width="0.1524" layer="91"/>
<junction x="58.42" y="33.02"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="G"/>
<wire x1="58.42" y1="-12.7" x2="50.8" y2="-12.7" width="0.1524" layer="91"/>
<label x="50.8" y="-12.7" size="1.778" layer="95"/>
<pinref part="IC2" gate="A" pin="OE"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-20.32" x2="58.42" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-20.32" x2="58.42" y2="-12.7" width="0.1524" layer="91"/>
<junction x="58.42" y="-12.7"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="177.8" y1="132.08" x2="180.34" y2="132.08" width="0.1524" layer="91"/>
<wire x1="180.34" y1="132.08" x2="180.34" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="180.34" y1="119.38" x2="177.8" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="177.8" y1="106.68" x2="180.34" y2="106.68" width="0.1524" layer="91"/>
<wire x1="180.34" y1="106.68" x2="180.34" y2="119.38" width="0.1524" layer="91"/>
<junction x="180.34" y="119.38"/>
<label x="182.88" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="RJ1" gate="G$1" pin="1"/>
<wire x1="66.04" y1="96.52" x2="66.04" y2="91.44" width="0.1524" layer="91"/>
<wire x1="66.04" y1="91.44" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
<pinref part="RJ1" gate="G$1" pin="2"/>
<wire x1="76.2" y1="91.44" x2="76.2" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="177.8" y1="78.74" x2="180.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="180.34" y1="78.74" x2="180.34" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="180.34" y1="66.04" x2="177.8" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="177.8" y1="53.34" x2="180.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="180.34" y1="53.34" x2="180.34" y2="66.04" width="0.1524" layer="91"/>
<junction x="180.34" y="66.04"/>
<label x="182.88" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="177.8" y1="30.48" x2="180.34" y2="30.48" width="0.1524" layer="91"/>
<wire x1="180.34" y1="30.48" x2="180.34" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="180.34" y1="17.78" x2="177.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="177.8" y1="5.08" x2="180.34" y2="5.08" width="0.1524" layer="91"/>
<wire x1="180.34" y1="5.08" x2="180.34" y2="17.78" width="0.1524" layer="91"/>
<junction x="180.34" y="17.78"/>
<label x="182.88" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="177.8" y1="-20.32" x2="180.34" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-20.32" x2="180.34" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="180.34" y1="-33.02" x2="177.8" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="177.8" y1="-45.72" x2="180.34" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-45.72" x2="180.34" y2="-33.02" width="0.1524" layer="91"/>
<junction x="180.34" y="-33.02"/>
<label x="182.88" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="254" y1="132.08" x2="256.54" y2="132.08" width="0.1524" layer="91"/>
<wire x1="256.54" y1="132.08" x2="256.54" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="256.54" y1="119.38" x2="254" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="254" y1="106.68" x2="256.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="256.54" y1="106.68" x2="256.54" y2="119.38" width="0.1524" layer="91"/>
<junction x="256.54" y="119.38"/>
<label x="259.08" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="254" y1="78.74" x2="256.54" y2="78.74" width="0.1524" layer="91"/>
<wire x1="256.54" y1="78.74" x2="256.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="256.54" y1="66.04" x2="254" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="254" y1="53.34" x2="256.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="256.54" y1="53.34" x2="256.54" y2="66.04" width="0.1524" layer="91"/>
<junction x="256.54" y="66.04"/>
<label x="259.08" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="254" y1="30.48" x2="256.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="256.54" y1="30.48" x2="256.54" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="256.54" y1="17.78" x2="254" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="254" y1="5.08" x2="256.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="256.54" y1="5.08" x2="256.54" y2="17.78" width="0.1524" layer="91"/>
<junction x="256.54" y="17.78"/>
<label x="259.08" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="254" y1="-20.32" x2="256.54" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-20.32" x2="256.54" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="256.54" y1="-33.02" x2="254" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="254" y1="-45.72" x2="256.54" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-45.72" x2="256.54" y2="-33.02" width="0.1524" layer="91"/>
<junction x="256.54" y="-33.02"/>
<label x="259.08" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="330.2" y1="132.08" x2="332.74" y2="132.08" width="0.1524" layer="91"/>
<wire x1="332.74" y1="132.08" x2="332.74" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R26" gate="G$1" pin="2"/>
<wire x1="332.74" y1="119.38" x2="330.2" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="330.2" y1="106.68" x2="332.74" y2="106.68" width="0.1524" layer="91"/>
<wire x1="332.74" y1="106.68" x2="332.74" y2="119.38" width="0.1524" layer="91"/>
<junction x="332.74" y="119.38"/>
<label x="335.28" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R28" gate="G$1" pin="2"/>
<wire x1="330.2" y1="78.74" x2="332.74" y2="78.74" width="0.1524" layer="91"/>
<wire x1="332.74" y1="78.74" x2="332.74" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="332.74" y1="66.04" x2="330.2" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="330.2" y1="53.34" x2="332.74" y2="53.34" width="0.1524" layer="91"/>
<wire x1="332.74" y1="53.34" x2="332.74" y2="66.04" width="0.1524" layer="91"/>
<junction x="332.74" y="66.04"/>
<label x="335.28" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R31" gate="G$1" pin="2"/>
<wire x1="330.2" y1="30.48" x2="332.74" y2="30.48" width="0.1524" layer="91"/>
<wire x1="332.74" y1="30.48" x2="332.74" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R32" gate="G$1" pin="2"/>
<wire x1="332.74" y1="17.78" x2="330.2" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R33" gate="G$1" pin="2"/>
<wire x1="330.2" y1="5.08" x2="332.74" y2="5.08" width="0.1524" layer="91"/>
<wire x1="332.74" y1="5.08" x2="332.74" y2="17.78" width="0.1524" layer="91"/>
<junction x="332.74" y="17.78"/>
<label x="335.28" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R34" gate="G$1" pin="2"/>
<wire x1="330.2" y1="-20.32" x2="332.74" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-20.32" x2="332.74" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R35" gate="G$1" pin="2"/>
<wire x1="332.74" y1="-33.02" x2="330.2" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R36" gate="G$1" pin="2"/>
<wire x1="330.2" y1="-45.72" x2="332.74" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-45.72" x2="332.74" y2="-33.02" width="0.1524" layer="91"/>
<junction x="332.74" y="-33.02"/>
<label x="335.28" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R37" gate="G$1" pin="2"/>
<wire x1="406.4" y1="132.08" x2="408.94" y2="132.08" width="0.1524" layer="91"/>
<wire x1="408.94" y1="132.08" x2="408.94" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R38" gate="G$1" pin="2"/>
<wire x1="408.94" y1="119.38" x2="406.4" y2="119.38" width="0.1524" layer="91"/>
<pinref part="R39" gate="G$1" pin="2"/>
<wire x1="406.4" y1="106.68" x2="408.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="408.94" y1="106.68" x2="408.94" y2="119.38" width="0.1524" layer="91"/>
<junction x="408.94" y="119.38"/>
<label x="411.48" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R40" gate="G$1" pin="2"/>
<wire x1="406.4" y1="78.74" x2="408.94" y2="78.74" width="0.1524" layer="91"/>
<wire x1="408.94" y1="78.74" x2="408.94" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R41" gate="G$1" pin="2"/>
<wire x1="408.94" y1="66.04" x2="406.4" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R42" gate="G$1" pin="2"/>
<wire x1="406.4" y1="53.34" x2="408.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="408.94" y1="53.34" x2="408.94" y2="66.04" width="0.1524" layer="91"/>
<junction x="408.94" y="66.04"/>
<label x="411.48" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R43" gate="G$1" pin="2"/>
<wire x1="406.4" y1="30.48" x2="408.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="408.94" y1="30.48" x2="408.94" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R44" gate="G$1" pin="2"/>
<wire x1="408.94" y1="17.78" x2="406.4" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R45" gate="G$1" pin="2"/>
<wire x1="406.4" y1="5.08" x2="408.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="408.94" y1="5.08" x2="408.94" y2="17.78" width="0.1524" layer="91"/>
<junction x="408.94" y="17.78"/>
<label x="411.48" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R46" gate="G$1" pin="2"/>
<wire x1="406.4" y1="-20.32" x2="408.94" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-20.32" x2="408.94" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R47" gate="G$1" pin="2"/>
<wire x1="408.94" y1="-33.02" x2="406.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="R48" gate="G$1" pin="2"/>
<wire x1="406.4" y1="-45.72" x2="408.94" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-45.72" x2="408.94" y2="-33.02" width="0.1524" layer="91"/>
<junction x="408.94" y="-33.02"/>
<label x="411.48" y="-33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="LED1" gate="B" pin="C"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="162.56" y1="132.08" x2="167.64" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="LED1" gate="R" pin="C"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="162.56" y1="119.38" x2="167.64" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LED1" gate="G" pin="C"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="162.56" y1="106.68" x2="167.64" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="O1" class="0">
<segment>
<pinref part="LED1" gate="B" pin="A"/>
<wire x1="154.94" y1="132.08" x2="129.54" y2="132.08" width="0.1524" layer="91"/>
<wire x1="129.54" y1="132.08" x2="129.54" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED1" gate="R" pin="A"/>
<wire x1="129.54" y1="119.38" x2="154.94" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G" pin="A"/>
<wire x1="154.94" y1="106.68" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="129.54" y1="106.68" x2="129.54" y2="119.38" width="0.1524" layer="91"/>
<junction x="129.54" y="119.38"/>
<label x="124.46" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B1"/>
<wire x1="83.82" y1="12.7" x2="88.9" y2="12.7" width="0.1524" layer="91"/>
<label x="88.9" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="O2" class="0">
<segment>
<pinref part="LED2" gate="B" pin="A"/>
<wire x1="154.94" y1="78.74" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<wire x1="129.54" y1="78.74" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED2" gate="R" pin="A"/>
<wire x1="129.54" y1="66.04" x2="154.94" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G" pin="A"/>
<wire x1="154.94" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
<wire x1="129.54" y1="53.34" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
<junction x="129.54" y="66.04"/>
<label x="124.46" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B2"/>
<wire x1="83.82" y1="10.16" x2="88.9" y2="10.16" width="0.1524" layer="91"/>
<label x="88.9" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="O3" class="0">
<segment>
<pinref part="LED3" gate="B" pin="A"/>
<wire x1="154.94" y1="30.48" x2="129.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="129.54" y1="30.48" x2="129.54" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED3" gate="R" pin="A"/>
<wire x1="129.54" y1="17.78" x2="154.94" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G" pin="A"/>
<wire x1="154.94" y1="5.08" x2="129.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="129.54" y1="5.08" x2="129.54" y2="17.78" width="0.1524" layer="91"/>
<junction x="129.54" y="17.78"/>
<label x="124.46" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B3"/>
<wire x1="83.82" y1="7.62" x2="88.9" y2="7.62" width="0.1524" layer="91"/>
<label x="88.9" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="O4" class="0">
<segment>
<pinref part="LED4" gate="B" pin="A"/>
<wire x1="154.94" y1="-20.32" x2="129.54" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-20.32" x2="129.54" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED4" gate="R" pin="A"/>
<wire x1="129.54" y1="-33.02" x2="154.94" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED4" gate="G" pin="A"/>
<wire x1="154.94" y1="-45.72" x2="129.54" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-45.72" x2="129.54" y2="-33.02" width="0.1524" layer="91"/>
<junction x="129.54" y="-33.02"/>
<label x="124.46" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B4"/>
<wire x1="83.82" y1="5.08" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<label x="88.9" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="O5" class="0">
<segment>
<pinref part="LED5" gate="B" pin="A"/>
<wire x1="231.14" y1="132.08" x2="205.74" y2="132.08" width="0.1524" layer="91"/>
<wire x1="205.74" y1="132.08" x2="205.74" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED5" gate="R" pin="A"/>
<wire x1="205.74" y1="119.38" x2="231.14" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED5" gate="G" pin="A"/>
<wire x1="231.14" y1="106.68" x2="205.74" y2="106.68" width="0.1524" layer="91"/>
<wire x1="205.74" y1="106.68" x2="205.74" y2="119.38" width="0.1524" layer="91"/>
<junction x="205.74" y="119.38"/>
<label x="200.66" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B5"/>
<wire x1="83.82" y1="2.54" x2="88.9" y2="2.54" width="0.1524" layer="91"/>
<label x="88.9" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="O6" class="0">
<segment>
<pinref part="LED6" gate="B" pin="A"/>
<wire x1="231.14" y1="78.74" x2="205.74" y2="78.74" width="0.1524" layer="91"/>
<wire x1="205.74" y1="78.74" x2="205.74" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED6" gate="R" pin="A"/>
<wire x1="205.74" y1="66.04" x2="231.14" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED6" gate="G" pin="A"/>
<wire x1="231.14" y1="53.34" x2="205.74" y2="53.34" width="0.1524" layer="91"/>
<wire x1="205.74" y1="53.34" x2="205.74" y2="66.04" width="0.1524" layer="91"/>
<junction x="205.74" y="66.04"/>
<label x="200.66" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B6"/>
<wire x1="83.82" y1="0" x2="88.9" y2="0" width="0.1524" layer="91"/>
<label x="88.9" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="O7" class="0">
<segment>
<pinref part="LED7" gate="B" pin="A"/>
<wire x1="231.14" y1="30.48" x2="205.74" y2="30.48" width="0.1524" layer="91"/>
<wire x1="205.74" y1="30.48" x2="205.74" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED7" gate="R" pin="A"/>
<wire x1="205.74" y1="17.78" x2="231.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED7" gate="G" pin="A"/>
<wire x1="231.14" y1="5.08" x2="205.74" y2="5.08" width="0.1524" layer="91"/>
<wire x1="205.74" y1="5.08" x2="205.74" y2="17.78" width="0.1524" layer="91"/>
<junction x="205.74" y="17.78"/>
<label x="200.66" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B7"/>
<wire x1="83.82" y1="-2.54" x2="88.9" y2="-2.54" width="0.1524" layer="91"/>
<label x="88.9" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="O8" class="0">
<segment>
<pinref part="LED8" gate="B" pin="A"/>
<wire x1="231.14" y1="-20.32" x2="205.74" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-20.32" x2="205.74" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED8" gate="R" pin="A"/>
<wire x1="205.74" y1="-33.02" x2="231.14" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED8" gate="G" pin="A"/>
<wire x1="231.14" y1="-45.72" x2="205.74" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-45.72" x2="205.74" y2="-33.02" width="0.1524" layer="91"/>
<junction x="205.74" y="-33.02"/>
<label x="200.66" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="A" pin="B8"/>
<wire x1="83.82" y1="-5.08" x2="88.9" y2="-5.08" width="0.1524" layer="91"/>
<label x="88.9" y="-5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="O9" class="0">
<segment>
<pinref part="LED9" gate="B" pin="A"/>
<wire x1="307.34" y1="132.08" x2="281.94" y2="132.08" width="0.1524" layer="91"/>
<wire x1="281.94" y1="132.08" x2="281.94" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED9" gate="R" pin="A"/>
<wire x1="281.94" y1="119.38" x2="307.34" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED9" gate="G" pin="A"/>
<wire x1="307.34" y1="106.68" x2="281.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="281.94" y1="106.68" x2="281.94" y2="119.38" width="0.1524" layer="91"/>
<junction x="281.94" y="119.38"/>
<label x="276.86" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B1"/>
<wire x1="83.82" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<label x="88.9" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="O10" class="0">
<segment>
<pinref part="LED10" gate="B" pin="A"/>
<wire x1="307.34" y1="78.74" x2="281.94" y2="78.74" width="0.1524" layer="91"/>
<wire x1="281.94" y1="78.74" x2="281.94" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED10" gate="R" pin="A"/>
<wire x1="281.94" y1="66.04" x2="307.34" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED10" gate="G" pin="A"/>
<wire x1="307.34" y1="53.34" x2="281.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="281.94" y1="53.34" x2="281.94" y2="66.04" width="0.1524" layer="91"/>
<junction x="281.94" y="66.04"/>
<label x="276.86" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B2"/>
<wire x1="83.82" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<label x="88.9" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="O11" class="0">
<segment>
<pinref part="LED11" gate="B" pin="A"/>
<wire x1="307.34" y1="30.48" x2="281.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="281.94" y1="30.48" x2="281.94" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED11" gate="R" pin="A"/>
<wire x1="281.94" y1="17.78" x2="307.34" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED11" gate="G" pin="A"/>
<wire x1="307.34" y1="5.08" x2="281.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="281.94" y1="5.08" x2="281.94" y2="17.78" width="0.1524" layer="91"/>
<junction x="281.94" y="17.78"/>
<label x="276.86" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B3"/>
<wire x1="83.82" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
<label x="88.9" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="O12" class="0">
<segment>
<pinref part="LED12" gate="B" pin="A"/>
<wire x1="307.34" y1="-20.32" x2="281.94" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-20.32" x2="281.94" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED12" gate="R" pin="A"/>
<wire x1="281.94" y1="-33.02" x2="307.34" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED12" gate="G" pin="A"/>
<wire x1="307.34" y1="-45.72" x2="281.94" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-45.72" x2="281.94" y2="-33.02" width="0.1524" layer="91"/>
<junction x="281.94" y="-33.02"/>
<label x="276.86" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B4"/>
<wire x1="83.82" y1="50.8" x2="88.9" y2="50.8" width="0.1524" layer="91"/>
<label x="88.9" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="O13" class="0">
<segment>
<pinref part="LED13" gate="B" pin="A"/>
<wire x1="383.54" y1="132.08" x2="358.14" y2="132.08" width="0.1524" layer="91"/>
<wire x1="358.14" y1="132.08" x2="358.14" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED13" gate="R" pin="A"/>
<wire x1="358.14" y1="119.38" x2="383.54" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LED13" gate="G" pin="A"/>
<wire x1="383.54" y1="106.68" x2="358.14" y2="106.68" width="0.1524" layer="91"/>
<wire x1="358.14" y1="106.68" x2="358.14" y2="119.38" width="0.1524" layer="91"/>
<junction x="358.14" y="119.38"/>
<label x="353.06" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B5"/>
<wire x1="83.82" y1="48.26" x2="88.9" y2="48.26" width="0.1524" layer="91"/>
<label x="88.9" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="O14" class="0">
<segment>
<pinref part="LED14" gate="B" pin="A"/>
<wire x1="383.54" y1="78.74" x2="358.14" y2="78.74" width="0.1524" layer="91"/>
<wire x1="358.14" y1="78.74" x2="358.14" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED14" gate="R" pin="A"/>
<wire x1="358.14" y1="66.04" x2="383.54" y2="66.04" width="0.1524" layer="91"/>
<pinref part="LED14" gate="G" pin="A"/>
<wire x1="383.54" y1="53.34" x2="358.14" y2="53.34" width="0.1524" layer="91"/>
<wire x1="358.14" y1="53.34" x2="358.14" y2="66.04" width="0.1524" layer="91"/>
<junction x="358.14" y="66.04"/>
<label x="353.06" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B6"/>
<wire x1="83.82" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<label x="88.9" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="O15" class="0">
<segment>
<pinref part="LED15" gate="B" pin="A"/>
<wire x1="383.54" y1="30.48" x2="358.14" y2="30.48" width="0.1524" layer="91"/>
<wire x1="358.14" y1="30.48" x2="358.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED15" gate="R" pin="A"/>
<wire x1="358.14" y1="17.78" x2="383.54" y2="17.78" width="0.1524" layer="91"/>
<pinref part="LED15" gate="G" pin="A"/>
<wire x1="383.54" y1="5.08" x2="358.14" y2="5.08" width="0.1524" layer="91"/>
<wire x1="358.14" y1="5.08" x2="358.14" y2="17.78" width="0.1524" layer="91"/>
<junction x="358.14" y="17.78"/>
<label x="353.06" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B7"/>
<wire x1="83.82" y1="43.18" x2="88.9" y2="43.18" width="0.1524" layer="91"/>
<label x="88.9" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="O16" class="0">
<segment>
<pinref part="LED16" gate="B" pin="A"/>
<wire x1="383.54" y1="-20.32" x2="358.14" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-20.32" x2="358.14" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED16" gate="R" pin="A"/>
<wire x1="358.14" y1="-33.02" x2="383.54" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="LED16" gate="G" pin="A"/>
<wire x1="383.54" y1="-45.72" x2="358.14" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-45.72" x2="358.14" y2="-33.02" width="0.1524" layer="91"/>
<junction x="358.14" y="-33.02"/>
<label x="353.06" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="B8"/>
<wire x1="83.82" y1="40.64" x2="88.9" y2="40.64" width="0.1524" layer="91"/>
<label x="88.9" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LED2" gate="B" pin="C"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="162.56" y1="78.74" x2="167.64" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="LED2" gate="R" pin="C"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="162.56" y1="66.04" x2="167.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="LED2" gate="G" pin="C"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="162.56" y1="53.34" x2="167.64" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LED3" gate="B" pin="C"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="162.56" y1="30.48" x2="167.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="LED3" gate="R" pin="C"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="162.56" y1="17.78" x2="167.64" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="LED3" gate="G" pin="C"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="162.56" y1="5.08" x2="167.64" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="LED4" gate="B" pin="C"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="162.56" y1="-20.32" x2="167.64" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LED4" gate="R" pin="C"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="162.56" y1="-33.02" x2="167.64" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LED4" gate="G" pin="C"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="162.56" y1="-45.72" x2="167.64" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="LED5" gate="B" pin="C"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="238.76" y1="132.08" x2="243.84" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="LED5" gate="R" pin="C"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="238.76" y1="119.38" x2="243.84" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="LED5" gate="G" pin="C"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="238.76" y1="106.68" x2="243.84" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="LED6" gate="B" pin="C"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="238.76" y1="78.74" x2="243.84" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="LED6" gate="R" pin="C"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="238.76" y1="66.04" x2="243.84" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="LED6" gate="G" pin="C"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="238.76" y1="53.34" x2="243.84" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="LED7" gate="B" pin="C"/>
<pinref part="R19" gate="G$1" pin="1"/>
<wire x1="238.76" y1="30.48" x2="243.84" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="LED7" gate="R" pin="C"/>
<pinref part="R20" gate="G$1" pin="1"/>
<wire x1="238.76" y1="17.78" x2="243.84" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="LED7" gate="G" pin="C"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="238.76" y1="5.08" x2="243.84" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="LED8" gate="B" pin="C"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="238.76" y1="-20.32" x2="243.84" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="LED8" gate="R" pin="C"/>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="238.76" y1="-33.02" x2="243.84" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="LED8" gate="G" pin="C"/>
<pinref part="R24" gate="G$1" pin="1"/>
<wire x1="238.76" y1="-45.72" x2="243.84" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="LED9" gate="B" pin="C"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="314.96" y1="132.08" x2="320.04" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="LED9" gate="R" pin="C"/>
<pinref part="R26" gate="G$1" pin="1"/>
<wire x1="314.96" y1="119.38" x2="320.04" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="LED9" gate="G" pin="C"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="314.96" y1="106.68" x2="320.04" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="LED10" gate="B" pin="C"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="314.96" y1="78.74" x2="320.04" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="LED10" gate="R" pin="C"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="314.96" y1="66.04" x2="320.04" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="LED10" gate="G" pin="C"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="314.96" y1="53.34" x2="320.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="LED11" gate="B" pin="C"/>
<pinref part="R31" gate="G$1" pin="1"/>
<wire x1="314.96" y1="30.48" x2="320.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="LED11" gate="R" pin="C"/>
<pinref part="R32" gate="G$1" pin="1"/>
<wire x1="314.96" y1="17.78" x2="320.04" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="LED11" gate="G" pin="C"/>
<pinref part="R33" gate="G$1" pin="1"/>
<wire x1="314.96" y1="5.08" x2="320.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="LED12" gate="B" pin="C"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="314.96" y1="-20.32" x2="320.04" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="LED12" gate="R" pin="C"/>
<pinref part="R35" gate="G$1" pin="1"/>
<wire x1="314.96" y1="-33.02" x2="320.04" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="LED12" gate="G" pin="C"/>
<pinref part="R36" gate="G$1" pin="1"/>
<wire x1="314.96" y1="-45.72" x2="320.04" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="LED13" gate="B" pin="C"/>
<pinref part="R37" gate="G$1" pin="1"/>
<wire x1="391.16" y1="132.08" x2="396.24" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="LED13" gate="R" pin="C"/>
<pinref part="R38" gate="G$1" pin="1"/>
<wire x1="391.16" y1="119.38" x2="396.24" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="LED13" gate="G" pin="C"/>
<pinref part="R39" gate="G$1" pin="1"/>
<wire x1="391.16" y1="106.68" x2="396.24" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="LED14" gate="B" pin="C"/>
<pinref part="R40" gate="G$1" pin="1"/>
<wire x1="391.16" y1="78.74" x2="396.24" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="LED14" gate="R" pin="C"/>
<pinref part="R41" gate="G$1" pin="1"/>
<wire x1="391.16" y1="66.04" x2="396.24" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="LED14" gate="G" pin="C"/>
<pinref part="R42" gate="G$1" pin="1"/>
<wire x1="391.16" y1="53.34" x2="396.24" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="LED15" gate="B" pin="C"/>
<pinref part="R43" gate="G$1" pin="1"/>
<wire x1="391.16" y1="30.48" x2="396.24" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="LED15" gate="R" pin="C"/>
<pinref part="R44" gate="G$1" pin="1"/>
<wire x1="391.16" y1="17.78" x2="396.24" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="LED15" gate="G" pin="C"/>
<pinref part="R45" gate="G$1" pin="1"/>
<wire x1="391.16" y1="5.08" x2="396.24" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="LED16" gate="B" pin="C"/>
<pinref part="R46" gate="G$1" pin="1"/>
<wire x1="391.16" y1="-20.32" x2="396.24" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="LED16" gate="R" pin="C"/>
<pinref part="R47" gate="G$1" pin="1"/>
<wire x1="391.16" y1="-33.02" x2="396.24" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="LED16" gate="G" pin="C"/>
<pinref part="R48" gate="G$1" pin="1"/>
<wire x1="391.16" y1="-45.72" x2="396.24" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
