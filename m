Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4ABB14C800A4
	for <poky@lists.pokylinux.org>; Tue,  8 Feb 2011 09:41:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p18FfAqr022484;
	Tue, 8 Feb 2011 07:41:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 07:41:10 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 07:41:10 -0800
Message-ID: <4D516415.1060206@windriver.com>
Date: Tue, 08 Feb 2011 09:41:09 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D514E45.3020506@mlbassoc.com>
In-Reply-To: <4D514E45.3020506@mlbassoc.com>
X-OriginalArrivalTime: 08 Feb 2011 15:41:10.0368 (UTC)
	FILETIME=[9BDD9600:01CBC7A6]
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Configure error
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
X-List-Received-Date: Tue, 08 Feb 2011 15:41:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/8/11 8:08 AM, Gary Thomas wrote:
> A package I imported from OE (long ago) no longer builds
> with this error:
> | ERROR: This autoconf log indicates errors, it looked at host includes.
> 
> It's not obvious to me what the problem is nor how to fix it.
> Can someone help with this, please?
> 
> See the logs at
>     http://www.mlbassoc.com/poky/ConfigureFailure/config.log
>     http://www.mlbassoc.com/poky/ConfigureFailure/log.do_configure
> 
> Thanks
> 

The check looks at the config.log.  It is looking for instances where unsafe
compilation or include usage occurs.  In this case it wasn't actually host
includes.. so there is a bug in the error message.  From the config.log:

> configure:7139: ccache powerpc-poky-linux-gcc -mcpu=603e  -mhard-float --sysroot=/home/local/my_ppc_poky/tmp/sysroots/my8379 -o conftest -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed conftest.c -ldlpi -L/lib -lpcap  >&5
> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: warning: library search path "/lib" is unsafe for cross-compilation
> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: cannot find -ldlpi
> /home/local/my_ppc_poky/tmp/sysroots/i686-linux/usr/libexec/ppc603e-poky-linux/gcc/powerpc-poky-linux/4.5.2/ld: skipping incompatible /lib/libgcc_s.so.1 when searching for libgcc_s.so.1
> collect2: ld returned 1 exit status

In the above snippet you'll see 'warning: library search path "/lib" is unsafe
for cross-compilation'.  This indicates that the package passed in a -L/lib, and
the linker caught this and issued a warning.

The fix is to figure out why the configuration file attempted to pass -L/lib,
and stop it from occurring.

Please file a bug on the log message being confusing and I'll attempt to get
that fixed.. (or a patch)  ;)

--Mark

