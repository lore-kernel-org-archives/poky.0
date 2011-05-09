Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 933784C80580
	for <poky@pokylinux.org>; Mon,  9 May 2011 16:18:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2011 14:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,342,1301900400"; d="scan'208";a="640318973"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2011 14:18:10 -0700
Message-ID: <4DC85A13.5010509@linux.intel.com>
Date: Mon, 09 May 2011 14:18:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iq04eq$4qb$1@dough.gmane.org>	<4DC42B45.7080504@linux.intel.com>	<iq47ab$t58$1@dough.gmane.org>	<iq98td$jo6$1@dough.gmane.org>	<36510365-CB0D-47CE-B420-56E60650019D@dominion.thruhere.net>
	<iq9icp$d63$1@dough.gmane.org>
In-Reply-To: <iq9icp$d63$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: Third party toolchain, kernel, bootloader
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 May 2011 21:18:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/09/2011 01:21 PM, Robert Berger wrote:
> Hi Koen,
> 
> On 05/09/2011 08:57 PM, Koen Kooi wrote:
>>>  CC      arch/arm/kernel/sysfs_v7.o
>>> /tmp/ccFfYvGD.s: Assembler messages:
>>> /tmp/ccFfYvGD.s:264: Error: selected processor does not support ARM mode
>>> `smc #0'
>>> /tmp/ccFfYvGD.s:306: Error: selected processor does not support ARM mode
>>> `smc #0'
>>> make[1]: *** [arch/arm/kernel/sysfs_v7.o] Error 1
>>> make: *** [arch/arm/kernel] Error 2
>>> make: *** Waiting for unfinished jobs....
>>
>> That's a 'feature' of binutils 2.21, either switch to 2.20 or do something like http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/commit/?id=579d8efb3eb25b114de2640d98a511893d2f4841
> 
> I tried something like this in /arch/arm/kernel/Makefile:
> 
> plus_sec := $(call as-instr,.arch_extension sec,+sec)
> AFLAGS_sysfs_v7.o :=-Wa,-march=armv7-a$(plus_sec)
> 

I believe the fix we used was:
(commit fe297dde5ae8f8bf67d3a87759289a99b48ecb2c angstrom-linux)

$ git show 41ec30ddc42912fec133a533b924e9c56ecda8f9
commit 41ec30ddc42912fec133a533b924e9c56ecda8f9
Author: John Rigby <john.rigby@linaro.org>
Date:   Fri Jan 28 16:40:15 2011 -0800

    OMAP4: enable smc instruction in new assembler versions

    New assemblers need -march=armv7-a+sec on command line or
    .arch_extension sec inline to enable use of the smc instruction.

    This patch uses as-instr to check the latter to conditionally
    enable the former in AFLAGS for files that use smc.

    Checked on both old and new binutils to verify that it does
    not break old versions.

    Signed-off-by: John Rigby <john.rigby@linaro.org>
    Signed-off-by: Tony Lindgren <tony@atomide.com>

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index 60e51bc..ee9ef4f 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -26,8 +26,9 @@ obj-$(CONFIG_LOCAL_TIMERS)            += timer-mpu.o
 obj-$(CONFIG_HOTPLUG_CPU)              += omap-hotplug.o
 obj-$(CONFIG_ARCH_OMAP4)               += omap44xx-smc.o omap4-common.o

-AFLAGS_omap-headsmp.o                  :=-Wa,-march=armv7-a
-AFLAGS_omap44xx-smc.o                  :=-Wa,-march=armv7-a
+plus_sec := $(call as-instr,.arch_extension sec,+sec)
+AFLAGS_omap-headsmp.o                  :=-Wa,-march=armv7-a$(plus_sec)
+AFLAGS_omap44xx-smc.o                  :=-Wa,-march=armv7-a$(plus_sec)

 # Functions loaded to SRAM
 obj-$(CONFIG_ARCH_OMAP2420)            += sram242x.o



> ... but it's not being picked up.
> 
> With V=1 I can not see what's passed to the assembler, only the compiler.
> 
> Regards,
> 
> Robert
> 
> 
> ..."What I look forward to is continued immaturity followed by death." -
> Dave Barry
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

