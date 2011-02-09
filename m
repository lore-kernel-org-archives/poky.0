Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DD874C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 16:54:13 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 8D81D16602D5; Wed,  9 Feb 2011 15:54:07 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 88B2316601B5;
	Wed,  9 Feb 2011 15:54:05 -0700 (MST)
Message-ID: <4D531B0D.80203@mlbassoc.com>
Date: Wed, 09 Feb 2011 15:54:05 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950DB0AA11@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950DB0AA11@orsmsx504.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: build failures for eglibc_2.12 on FC14.x86_64 machine
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
X-List-Received-Date: Wed, 09 Feb 2011 22:54:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 03:47 PM, Zhang, Jessica wrote:
> Hi,
> My meta-toolchain build on my FC14.x86_64 machine consistently failed with below errors. This is against latest Poky master and build from scratch for arm arch. Anyone has seen
> this or have any idea?

No clue what caused this, but you should run the failing command by hand
(the 'ccache x86_64-pokysdk-linux-gcc ...' command) and append the -save-temps
option.  This will keep GCC from deleting its intermediate files.  Then you
can look at the .s file and maybe get a clue what caused it.

Most likely, since this is eGLIBC, it's coming from inline assembly or
some assembly fragment that's not being generated/expanded properly.

In the meantime, I'll give it a go on my FC14.x86_64 machine.

> #
> make[2]: Leaving directory `/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/eglibc-2_12/libc/stdio-common'
> #
> make[2]: Entering directory `/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/eglibc-2_12/libc/stdio-common'
> #
> ccache x86_64-pokysdk-linux-gcc --sysroot=/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-linux-tcbootstrap vfscanf.c -c -std=gnu99 -fgnu89-inline -O2 -Wall -Winline
> -Wwrite-strings -fmerge-all-constants -fno-unwind-tables
> -isystem/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/opt/poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr/include -Wstrict-prototypes -fexceptions
> -I../include -I/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common
> @/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/includes -I.. -I../libio -I. -D_LIBC_REENTRANT -include
> ../include/libc-symbols.h -D_IO_MTSAFE_IO -o
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o -MD -MP -MF
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o.dt -MT
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o
> #
> ccache x86_64-pokysdk-linux-gcc --sysroot=/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-linux-tcbootstrap vfwscanf.c -c -std=gnu99 -fgnu89-inline -O2 -Wall -Winline
> -Wwrite-strings -fmerge-all-constants -fno-unwind-tables
> -isystem/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/opt/poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr/include -Wstrict-prototypes -fPIC -fexceptions
> -I../include -I/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common
> @/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/includes -I.. -I../libio -I. -D_LIBC_REENTRANT -include
> ../include/libc-symbols.h -DPIC -DSHARED -D_IO_MTSAFE_IO -o
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os -MD -MP -MF
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os.dt -MT
> /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os
> #
> /tmp/ccicvOVI.s: Assembler messages:
> #
> /tmp/ccicvOVI.s:2957: Error: junk `ff' after expression
> #
> /tmp/ccicvOVI.s:2957: Error: 8-byte relocation cannot be applied to 4-byte field
> #
> make[2]: *** [/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-nativesdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os] Error 1
> #
> make[2]: *** Waiting for unfinished jobs....
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

