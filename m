Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 660854C804D4
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 08:13:15 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D56F71660336; Thu, 28 Apr 2011 07:13:14 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 581211660335;
	Thu, 28 Apr 2011 07:13:14 -0600 (MDT)
Message-ID: <4DB967EA.4030705@mlbassoc.com>
Date: Thu, 28 Apr 2011 07:13:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4DB95316.1090001@mlbassoc.com>
In-Reply-To: <4DB95316.1090001@mlbassoc.com>
Subject: Re: GCC 4.6.0?
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
X-List-Received-Date: Thu, 28 Apr 2011 13:13:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/28/2011 05:44 AM, Gary Thomas wrote:
> I see that the Poky master (3279737cdf164962b0121bd850634cb05a616f15)
> now has recipes for GCC 4.6.0, so I thought I'd try it on my OMAP/3530
>
> Sadly, it failed:
> | checking if ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 supports -fno-rtti -fno-exceptions... no
> | checking for ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 option to produce PIC... -fPIC -DPIC
> | checking if ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 PIC flag -fPIC -DPIC works... yes
> | checking if ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 static flag -static works... no
> | checking if ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 supports -c -o file.o... yes
> | checking if ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 supports -c -o file.o... (cached) yes
> | checking whether the ccache arm-poky-linux-gnueabi-gcc -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fno-tree-vectorize
> --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60 linker (arm-poky-linux-gnueabi-ld --sysroot=/home/local/p60_poky/tmp/sysroots/cobra3530p60) supports shared libraries... yes
> | checking whether -lc should be explicitly linked in... no
> | checking dynamic linker characteristics... configure: error: Link tests are not allowed after GCC_NO_EXECUTABLES.
> | ERROR: Function 'do_configure' failed (see /home/local/p60_poky/tmp/work/armv7a-poky-linux-gnueabi/gcc-runtime-4.6.0-r0/temp/log.do_configure.6331 for further information)
> NOTE: package gcc-runtime-4.6.0-r0: task do_configure: Failed
> ERROR: Task 458 (/home/local/poky-amltd/meta/recipes-devtools/gcc/gcc-runtime_4.6.0.bb, do_configure) failed with exit code '1'
>
> Should this work? Has it been tested on ARM targets?
> Maybe I missed something else?
>

Note: this was in an extant build.  I just tried it in a fresh
tree and it seems to be working better now.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

