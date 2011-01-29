Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 430484C8006D;
	Fri, 28 Jan 2011 18:56:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2011 16:56:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="652303147"
Received: from jfdmzpr06.jf.intel.com (HELO [110.127.0.0]) ([10.7.210.25])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2011 16:56:40 -0800
Message-ID: <4D4365C8.6000405@linux.intel.com>
Date: Fri, 28 Jan 2011 16:56:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky-bounces@yoctoproject.org
References: <cover.1296261421.git.darren@dvhart.com>
	<1b0ff11d323853175357c01ab4d906f89bfbdb1f.1296261421.git.darren@dvhart.com>
In-Reply-To: <1b0ff11d323853175357c01ab4d906f89bfbdb1f.1296261421.git.darren@dvhart.com>
Cc: Nishanth Menon <nm@ti.com>, John Rigby <john.rigby@linaro.org>,
	Tony Lindgren <tony@atomide.com>,
	Koen Kooi <koen@beagleboard.org>, poky@yoctoproject.org
Subject: Re: [PATCH 2/2] OMAP4: enable smc instruction in new assembler versions
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
X-List-Received-Date: Sat, 29 Jan 2011 00:56:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 04:40 PM, poky-bounces@yoctoproject.org wrote:
> From: John Rigby<john.rigby@linaro.org>
>

Sorry bruce, forgot to include the source:

commit fe297dde5ae8f8bf67d3a87759289a99b48ecb2c angstrom-linux

--
Darren


> New assemblers need -march=armv7-a+sec on command line or
> .arch_extension sec inline to enable use of the smc instruction.
>
> This patch uses as-instr to check the latter to conditionally
> enable the former in AFLAGS for files that use smc.
>
> Checked on both old and new binutils to verify that it does
> not break old versions.
>
> Signed-off-by: John Rigby<john.rigby@linaro.org>
> Signed-off-by: Tony Lindgren<tony@atomide.com>
> ---
>   arch/arm/mach-omap2/Makefile |    5 +++--
>   1 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
> index 60e51bc..ee9ef4f 100644
> --- a/arch/arm/mach-omap2/Makefile
> +++ b/arch/arm/mach-omap2/Makefile
> @@ -26,8 +26,9 @@ obj-$(CONFIG_LOCAL_TIMERS)		+= timer-mpu.o
>   obj-$(CONFIG_HOTPLUG_CPU)		+= omap-hotplug.o
>   obj-$(CONFIG_ARCH_OMAP4)		+= omap44xx-smc.o omap4-common.o
>
> -AFLAGS_omap-headsmp.o			:=-Wa,-march=armv7-a
> -AFLAGS_omap44xx-smc.o			:=-Wa,-march=armv7-a
> +plus_sec := $(call as-instr,.arch_extension sec,+sec)
> +AFLAGS_omap-headsmp.o			:=-Wa,-march=armv7-a$(plus_sec)
> +AFLAGS_omap44xx-smc.o			:=-Wa,-march=armv7-a$(plus_sec)
>
>   # Functions loaded to SRAM
>   obj-$(CONFIG_ARCH_OMAP2420)		+= sram242x.o


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

