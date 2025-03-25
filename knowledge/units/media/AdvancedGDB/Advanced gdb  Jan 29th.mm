<map version="1.0.0"><node ID="88DFA563-ACE3-4514-ADFA-8561F63073B5" BACKGROUND_COLOR="#FFD4FA" TEXT="Advanced gdb 
Jan 29th" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Charter-BoldItalic" SIZE="38" ITALIC="true" BOLD="true" /><node ID="DB6E5482-BA74-48D3-A0C3-EC4E4FC4023C" BACKGROUND_COLOR="#A1C3FF" TEXT="Leveraging core files" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="E84093DA-EBC2-4CE2-8647-CD0C941808FA" BACKGROUND_COLOR="#A1C3FF" TEXT="On plank: 
ls -al /var/lib/apport/coredump/*$USER*" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="7F758DFE-6CAB-414C-98FA-29F6B8DAE6F9" BACKGROUND_COLOR="#C8F0F7" TEXT="GUI Front ends" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="D106CA8E-1831-4954-A21D-1E9D1EE133EE" BACKGROUND_COLOR="#C8F0F7" TEXT="tui enable" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="A326DAF6-8664-4282-9163-4C1A4A7575CB" BACKGROUND_COLOR="#C8F0F7" TEXT="VSCode" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="0B03BC8C-1FB5-4EC4-A2D4-57517F5C3C07" BACKGROUND_COLOR="#DF9EFD" TEXT="Info files ?" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="C4C25CA8-9A76-455D-AD0E-2EC0C231ECBC" BACKGROUND_COLOR="#DF9EFD" TEXT="list the memory regions of the binary currently being debugged by running the info files command." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="5783BDD5-F4F6-4D41-BD42-E574D97FFCE1" BACKGROUND_COLOR="#E8E4CA" TEXT="Examine memory using `x`" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="1F818148-AEE9-4EB5-A62A-A157C2145EFD" BACKGROUND_COLOR="#E8E4CA" TEXT="x/nfu addr" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
<node ID="8F194E6F-E453-4E84-BD3F-CFADC36BAADD" BACKGROUND_COLOR="#E8E4CA" TEXT="n, f, and u are all optional parameters that specify how much memory to display and how to format it; addr is an expression giving the address where you want to start displaying memory. If you use defaults for nfu, you need not type the slash `/&#39;. Several commands set convenient defaults for addr.

n, the repeat count
The repeat count is a decimal integer; the default is 1. It specifies how much memory (counting by units u) to display.
f, the display format
The display format is one of the formats used by print, or `s&#39; (null-terminated string) or `i&#39; (machine instruction). The default is `x&#39; (hexadecimal) initially, or the format from the last time you used either x or print.
u, the unit size, which is any of
  b  Bytes.
  h  Halfwords (two bytes).
  w  Words (four bytes). This is the initial default.
  g  Giant words (eight bytes). 

Each time you specify a unit size with x, that size becomes the default unit the next time you use x. (For the `s&#39; and `i&#39; formats, the unit size is ignored and is normally not written.)

" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
</node>
<node ID="914D434C-9866-4F58-9DCF-B7BDAA759C21" BACKGROUND_COLOR="#D1D1FF" TEXT="Search memory with `find`" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="F02EEE93-F01D-4240-AEF8-59643B9EC1D7" BACKGROUND_COLOR="#D1D1FF" TEXT="find 0x555555559200, 0x5555555592d0 ,{char[2]}&#34;Da&#34;" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
</node>
<node ID="68B6D03E-0EDE-40CB-B99A-52DF49CEA9BB" BACKGROUND_COLOR="#E8E4CA" TEXT="Make your own variables" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="D6C92631-986E-4777-8E3B-A69204E48BDA" BACKGROUND_COLOR="#E8E4CA" TEXT="In gdb, not the program" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
<node ID="01F95AD2-EF7B-4AFC-93AC-579D7EB341FB" BACKGROUND_COLOR="#E8E4CA" TEXT="gdb$ set $L=0x5555555592b3
gdb$ x/8c $L" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
</node>
<node ID="60912A83-8162-4F30-BE8B-CDB3C15314C8" BACKGROUND_COLOR="#FFBFEB" TEXT=".gdbinit" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="7910B336-1279-4351-8639-F7367F0C6D64" BACKGROUND_COLOR="#FFBFEB" TEXT="define xxd
  dump binary memory /tmp/dump.bin $arg0 ((char *)$arg0)+$arg1
  shell xxd /tmp/dump.bin
end
document xxd
  Runs xxd on a memory ADDR and LENGTH

  xxd ADDR LENTH
end" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNL-Bold" SIZE="26" BOLD="true" /></node>
<node ID="BE0E5F39-2375-4B82-A683-C062D0E87948" BACKGROUND_COLOR="#FFBFEB" TEXT="gdb --configuration" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="AFBD2D16-CDE6-43F7-B078-02A0714B47ED" BACKGROUND_COLOR="#A1C3FF" TEXT="info" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="BDDEF089-C070-42A3-A2E9-94FF818EBB38" BACKGROUND_COLOR="#A1C3FF" TEXT="locals" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="62BC8D68-B7C1-425F-9E36-4790A61B9EE6" BACKGROUND_COLOR="#A1C3FF" TEXT="frame" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /><node ID="69007406-95FE-41A5-9B4C-8F0650F8193C" BACKGROUND_COLOR="#A1C3FF" TEXT="Same as `bt`" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
</node>
<node ID="4A9B1D5D-716F-4789-A1D5-97A306E070F6" BACKGROUND_COLOR="#A1C3FF" TEXT="stack" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /><node ID="2FB54D69-EBC0-4712-A614-385BD033A806" BACKGROUND_COLOR="#A1C3FF" TEXT="Same as `bt`" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
</node>
<node ID="F579BAE0-FBA8-4C14-A2B6-93C4BD759FF0" BACKGROUND_COLOR="#A1C3FF" TEXT="args" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="12DEC174-6021-4772-AA07-85DB5522E52F" BACKGROUND_COLOR="#A1C3FF" TEXT="variables" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /><node ID="99FD2759-B851-457A-9F5E-800796D3984A" BACKGROUND_COLOR="#A1C3FF" TEXT="Can search for variables using RegEx" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
<node ID="594C1706-5D3F-4D8E-AE7B-B2729F0F4B72" BACKGROUND_COLOR="#A1C3FF" TEXT="Info variables varname*" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
</node>
</node>
<node ID="02FAFF1C-E952-4DC2-BDF9-32FBAD87213D" BACKGROUND_COLOR="#C8F0F7" TEXT="printing" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="23019217-B8F1-4934-98B6-F1E2F98F5F6F" BACKGROUND_COLOR="#C8F0F7" TEXT="You can also reference specific variables from functions using a similar syntax. This is most helpful for referencing static variables within functions from the global context." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="1EEC6ACC-28C1-435C-B48E-38B4EB8818D6" BACKGROUND_COLOR="#C8F0F7" TEXT="(gdb) p memfault_platform_coredump_get_regions::s_coredump_regions
$3 = {{
    type = kMfltCoredumpRegionType_Memory,
    region_start = 0x0,
    region_size = 0
  }}" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNL-Bold" SIZE="26" BOLD="true" /></node>
<node ID="2DA11F25-8356-4172-A480-D0DF3857D6D7" BACKGROUND_COLOR="#C8F0F7" TEXT="$ " COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNL-Bold" SIZE="26" BOLD="true" /><node ID="0E6BFB81-6760-4F64-B635-AE6D8C2A8172" BACKGROUND_COLOR="#C8F0F7" TEXT="the value of $ is the value returned from the previous command." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Charter-BoldItalic" SIZE="24" ITALIC="true" BOLD="true" /></node>
<node ID="DF66887A-7E67-454C-95E5-157A286C929C" BACKGROUND_COLOR="#C8F0F7" TEXT="Useful for iterating across linked lists" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Charter-BoldItalic" SIZE="24" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="2BE235BA-29DE-41C4-B745-26EB7BDC13A4" BACKGROUND_COLOR="#C8F0F7" TEXT="Printing malloc&#8217;ed arrays" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNL-Bold" SIZE="26" BOLD="true" /><node ID="0413AF09-18D0-4DEB-AF68-76B576815128" BACKGROUND_COLOR="#C8F0F7" TEXT="In GDB, if you try to print this, it will just print the pointer value, since it doesn&#8217;t know it&#8217;s an array.

(gdb) p num_elements
$1 = 100
(gdb) p elements
$2 = (int *) 0x5575e51f6260
We can print this entire array using one of two ways. First, we can cast it to a int[100] array and print that.

(gdb) p (int[100])*elements
$10 = {0, 1, 2, 3, 4, 5, ..." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="JetBrainsMonoNL-Bold" SIZE="24" BOLD="true" /></node>
</node>
</node>
<node ID="C1B4B70D-0FD8-489F-B9A7-80B1485FFA54" BACKGROUND_COLOR="#DF9EFD" TEXT="Value history" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="8C66EEA1-A3E7-4009-893E-88D3F59C8462" BACKGROUND_COLOR="#DF9EFD" TEXT="Show values" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="02E9A4C4-4AB4-4146-BA8D-4DF3586C034C" BACKGROUND_COLOR="#DF9EFD" TEXT="Can&#8217;t remember exactly which variable existed in the past? Just use show values to print the most recent ten." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="B904AF2E-1979-4C80-8C5B-D8EE0DB54814" BACKGROUND_COLOR="#E8E4CA" TEXT="Convenience variables" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="C0F12E42-307E-4179-BE80-1B62588F26D2" BACKGROUND_COLOR="#E8E4CA" TEXT="Define and set your own for use in gdb (not the program)" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="D772BE01-FD40-42F8-8456-50EA1C14AA75" BACKGROUND_COLOR="#E8E4CA" TEXT="gdb$ set $L=0x5555555592b3
gdb$ x/8c $L" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Menlo-Regular" SIZE="26" /></node>
</node>
<node ID="3744770F-95E3-4406-AB1A-3B48B7416BE7" BACKGROUND_COLOR="#D1D1FF" TEXT="Attach to a running process " COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="59FA4BCD-2573-4740-B164-3B80A9E0287D" BACKGROUND_COLOR="#D1D1FF" TEXT="https://diveintosystems.org/book/C3-C_debug/gdb_advanced.html#_attaching_gdb_to_a_running_process" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="ECCF1CCB-7B41-49F6-AB9B-451BB685253D" BACKGROUND_COLOR="#FFBFEB" TEXT="breakpoints" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="0576E676-B86F-4439-8D43-2F51E4D759B4" BACKGROUND_COLOR="#FFBFEB" TEXT=" break compute_fft if num_samples == 0xdeadbeef" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNLNFP-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="2BE6969A-75C6-4E22-8F0B-CAD1F6CF5799" BACKGROUND_COLOR="#FFBFEB" TEXT="Watchpoints" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /><node ID="608092FA-E5A0-4680-8A64-8BF5E455DA10" BACKGROUND_COLOR="#FFBFEB" TEXT="watch i if i == 100" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="JetBrainsMonoNL-Bold" SIZE="24" BOLD="true" /></node>
</node>
<node ID="1E7DAD86-1D13-4AFF-AC48-0E400687C2A5" BACKGROUND_COLOR="#FFBFEB" TEXT="tbreak" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="56B91A2B-CD4B-4411-A6F2-29E4A360E84F" BACKGROUND_COLOR="#A1C3FF" TEXT="functions" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="A28DC3E3-67D3-474D-BC55-EC48A2F5C9E8" BACKGROUND_COLOR="#A1C3FF" TEXT="skip allows skipping a function; info skip lists the current skip list" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="CBD9A36F-1A65-4633-BCEE-288FED301862" BACKGROUND_COLOR="#C8F0F7" TEXT="External commands" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="B38AF67F-A4AD-4039-B5D7-6F7AAAA67CB2" BACKGROUND_COLOR="#C8F0F7" TEXT="Run make within gdb" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /><node ID="0D367AB3-CF22-469E-AC16-BC827F23A1E1" BACKGROUND_COLOR="#C8F0F7" TEXT="GDB accepts the make command to rebuild an executable during a debugging session, and if the build is successful it will run the newly built program (when issued the run command)." COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
<node ID="3C758D3B-6514-4BA8-9DFA-848F24A792D2" BACKGROUND_COLOR="#C8F0F7" TEXT="Keeps breakpoints since not existing gdb" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="4" /><font NAME="Menlo-Regular" SIZE="24" /></node>
</node>
<node ID="641253DC-AAF9-489E-B51B-73326CBB8DD3" BACKGROUND_COLOR="#C8F0F7" TEXT="`shell invoke cmd`" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
<node ID="D77649DE-B7E7-42DD-AFCB-7199660A77BD" BACKGROUND_COLOR="#C8F0F7" TEXT="`set logging on` sends output to a file    " COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="Charter-BoldItalic" SIZE="26" ITALIC="true" BOLD="true" /></node>
</node>
<node ID="3712C18F-117D-4003-B5A1-C62EC8D8B542" BACKGROUND_COLOR="#DF9EFD" TEXT="References" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="6" /><font NAME="Charter-BoldItalic" SIZE="30" ITALIC="true" BOLD="true" /><node ID="97C0A766-B5A7-471F-89EA-080F178E9EA5" BACKGROUND_COLOR="#DF9EFD" TEXT="https://interrupt.memfault.com/blog/advanced-gdb" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNLNF-SemiBold" SIZE="26" BOLD="true" /></node>
<node ID="00ECE1FD-58FF-4CD0-81A6-F4A471FEEC60" BACKGROUND_COLOR="#DF9EFD" TEXT="https://diveintosystems.org/book/C3-C_debug/gdb_advanced.html" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNLNF-SemiBold" SIZE="26" BOLD="true" /></node>
<node ID="CFF6EBFD-8BE9-4535-83EE-9A0D94908642" BACKGROUND_COLOR="#DF9EFD" TEXT="https://opensource.com/article/22/12/gdb-step-command" COLOR="#000000" POSITION="right" STYLE="bubble"><edge COLOR="#000000" WIDTH="5" /><font NAME="JetBrainsMonoNLNF-SemiBold" SIZE="26" BOLD="true" /></node>
</node>
</node>
</map>
