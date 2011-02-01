Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A75D4C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 13:27:07 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 981D2186DEDC;
	Tue,  1 Feb 2011 20:27:05 +0100 (CET)
X-Auth-Info: 5rmB8R6DSWVOXVdIIjEGdHVZimLh2tOaFZuxDrQar58=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 655E81C000E6;
	Tue,  1 Feb 2011 20:27:05 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 46023323DEFF;
	Tue,  1 Feb 2011 20:27:05 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 2546DB187;
	Tue,  1 Feb 2011 20:27:05 +0100 (CET)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <1296567139.13501.19158.camel@rex>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
	<1296492009.13501.13668.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>
	<1296561316.13501.18767.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA950D73A848@orsmsx504.amr.corp.intel.com>
	<1296567139.13501.19158.camel@rex>
Comments: In-reply-to Richard Purdie <richard.purdie@linuxfoundation.org>
	message dated "Tue, 01 Feb 2011 13:32:19 +0000."
Date: Tue, 01 Feb 2011 20:27:05 +0100
Message-Id: <20110201192705.2546DB187@gemini.denx.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Tue, 01 Feb 2011 19:27:08 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Richard Purdie,

In message <1296567139.13501.19158.camel@rex> you wrote:
>
> Can you please try a build from scratch. I think most of your .ipk files
> look corrupt as there are many eglibc dependencies in there which there
> simply shouldn't be. If they were built whilst eglibc was rebuilding
> that would explain the problem but it means your build directory is
> unstable now :(. If there is a root cause, the above patch isn't it.

I just ran a build of poky-image-sato-sdk for qemuarm from scratch,
mainline code, git commit id 4c8f498

Result:

...
| ccache gcc -m32 -pipe -std=gnu99 -Wall -W -Wextra -fPIC -D_LARGEFILE64_SOURCE -D_ATFILE_SOURCE -m32 -DPSEUDO_PREFIX='"/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr"' -DPSEUDO_SUFFIX='""' -DPSEUDO_BINDIR='"bin"' -DPSEUDO_LIBDIR='"lib/pseudo/lib"' -DPSEUDO_LOCALSTATEDIR='"var/pseudo"' -DPSEUDO_VERSION='"0.3"' -O2 -g -L/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/lib -I/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/include -Wl,-R/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/lib -shared -o lib/pseudo/lib/libpseudo.so \
|       pseudo_client.o pseudo_ipc.o \
|       pseudo_wrappers.o pseudo_tables.o pseudo_util.o -ldl
| /usr/bin/ld: skipping incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when searching for -lgcc_s
| /usr/bin/ld: cannot find -lgcc_s
| collect2: ld returned 1 exit status
| make: *** [lib/pseudo/lib/libpseudo.so] Error 1
| FATAL: oe_runmake failed
| Function 'do_compile' failed (see /opt/poky/build/mainline-4c8f498/tmp/work/x86_64-linux/pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17/temp/log.do_compile.17807 for further information)
NOTE: package pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: task do_compile: Failed
ERROR: 'virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/pseudo/pseudo_git.bb' failed
ERROR: Task 7 (virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/pseudo/pseudo_git.bb, do_compile) failed with exit code '1'



Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Copy from one, it's plagiarism; copy from two, it's research.

