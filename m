Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D796E01351
	for <poky@yoctoproject.org>; Mon, 27 Aug 2012 06:31:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E97EEF811E8; Mon, 27 Aug 2012 07:31:44 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 95FC4F811DC;
	Mon, 27 Aug 2012 07:31:43 -0600 (MDT)
Message-ID: <503B76C0.30307@mlbassoc.com>
Date: Mon, 27 Aug 2012 07:31:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Problems building webkit-gtk
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Aug 2012 13:31:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

It seems that this commit may have been overzealous:

commit e4c43e2f186b86d00fd285dff1b2dedc60c01172
Author: Ross Burton <ross.burton@intel.com>
Date:   Tue Jul 17 19:44:19 2012 +0100

     webkit-gtk: remove no-parallel bodge

     This workaround was originally for GNU Make 3.82 which upstream was blaming
     for a parallel build failure.  Since then I've changed numerous variables
     and now parallel builds are working with 3.82 (and succeed in 20 minutes
     instead of 2 hours).

     Revert the change until we've more data about what causes the breakage, then
     we can bring it back with more finesse.

     (From OE-Core rev: 90ca88a6f9dd5e2bc055739f84cb224f9a82455a)

     Signed-off-by: Ross Burton <ross.burton@intel.com>
     Signed-off-by: Saul Wold <sgw@linux.intel.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Building on my 4-way box (Core-2 duo) fails with this error:
| arm-amltd-linux-gnueabi-libtool: link: cannot find the library `libjavascriptcoregtk-1.0.la' or unhandled argument `libjavascriptcoregtk-1.0.la'
| make[1]: *** [Programs/unittests/testdomdocument] Error 1
| make[1]: *** Waiting for unfinished jobs....
| arm-amltd-linux-gnueabi-libtool: link: cannot find the library `libjavascriptcoregtk-1.0.la' or unhandled argument `libjavascriptcoregtk-1.0.la'
| make[1]: *** [Programs/unittests/testdomdomwindow] Error 1
| In file included from ./Source/JavaScriptCore/assembler/MacroAssembler.h:36:0,
|                  from ./Source/JavaScriptCore/jit/JITWriteBarrier.h:31,
|                  from ./Source/JavaScriptCore/bytecode/CallLinkInfo.h:30,
|                  from ./Source/JavaScriptCore/bytecode/CodeBlock.h:33,
|                  from ./Source/JavaScriptCore/bytecompiler/BytecodeGenerator.h:34,
|                  from Source/JavaScriptCore/jsc.cpp:25:
| ./Source/JavaScriptCore/assembler/MacroAssemblerARM.h: In member function 'JSC::AbstractMacroAssembler<JSC::ARMAssembler>::Jump 
JSC::MacroAssemblerARM::branch32(JSC::MacroAssemblerARM::RelationalCondition, JSC::AbstractMacroAssembler<JSC::ARMAssembler>::RegisterID, 
JSC::AbstractMacroAssembler<JSC::ARMAssembler>::TrustedImm32, int)':
| ./Source/JavaScriptCore/assembler/MacroAssemblerARM.h:446:45: warning: comparison between signed and unsigned integer expressions [-Wsign-compare]
| mv -f Source/WebKit/gtk/tests/.deps/Programs_unittests_testapplicationcache-testapplicationcache.Tpo 
Source/WebKit/gtk/tests/.deps/Programs_unittests_testapplicationcache-testapplicationcache.Po
| In file included from ./Source/JavaScriptCore/wtf/text/WTFString.h:28:0,
|                  from ./Source/JavaScriptCore/wtf/DateMath.h:54,
|                  from ./Source/JavaScriptCore/runtime/JSDateMath.h:46,
|                  from ./Source/JavaScriptCore/runtime/DateInstanceCache.h:29,
|                  from ./Source/JavaScriptCore/runtime/JSGlobalData.h:34,
|                  from ./Source/JavaScriptCore/assembler/AssemblerBuffer.h:31,
|                  from ./Source/JavaScriptCore/assembler/AssemblerBufferWithConstantPool.h:32,
|                  from ./Source/JavaScriptCore/assembler/ARMAssembler.h:32,
|                  from ./Source/JavaScriptCore/assembler/MacroAssemblerARM.h:33,
|                  from ./Source/JavaScriptCore/assembler/MacroAssembler.h:36,
|                  from ./Source/JavaScriptCore/jit/JITWriteBarrier.h:31,
|                  from ./Source/JavaScriptCore/bytecode/CallLinkInfo.h:30,
|                  from ./Source/JavaScriptCore/bytecode/CodeBlock.h:33,
|                  from ./Source/JavaScriptCore/bytecompiler/BytecodeGenerator.h:34,
|                  from Source/JavaScriptCore/jsc.cpp:25:
| ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h: In function 'bool WTF::charactersAreAllASCII(const CharacterType*, size_t) [with CharacterType = unsigned char, size_t = 
unsigned int]':
| ./Source/JavaScriptCore/wtf/text/WTFString.h:493:69:   instantiated from here
| ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h:84:9: warning: cast from 'const unsigned char*' to 'const MachineWord* {aka const unsigned int*}' increases required alignment of 
target type [-Wcast-align]
| ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h: In function 'bool WTF::charactersAreAllASCII(const CharacterType*, size_t) [with CharacterType = short unsigned int, size_t = 
unsigned int]':
| ./Source/JavaScriptCore/wtf/text/WTFString.h:495:66:   instantiated from here
| ./Source/JavaScriptCore/wtf/text/ASCIIFastPath.h:84:9: warning: cast from 'const short unsigned int*' to 'const MachineWord* {aka const unsigned int*}' increases required 
alignment of target type [-Wcast-align]
| mv -f Source/JavaScriptCore/.deps/Programs_jsc_1-jsc.Tpo Source/JavaScriptCore/.deps/Programs_jsc_1-jsc.Po
| make[1]: Leaving directory `/local/p60_test/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/webkit-gtk-1.8.2-r0/webkit-1.8.2'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see /local/p60_test/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/webkit-gtk-1.8.2-r0/temp/log.do_compile.21411 for further information)
ERROR: Task 6 (/local/poky-multi/meta/recipes-sato/webkit/webkit-gtk_1.8.2.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2148 tasks of which 2142 didn't need to be rerun and 1 failed.

If I rerun it, the build will succeed.

One additional question: the commit message says that this now
builds in 2 minutes?  What kind of super machines do you guys have?
I takes about 30 minutes on my (I thought fast) machine just to get
to this first break and then another 45 minutes to complete...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

