Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3C224C800A6
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 14:01:10 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11K0ZFT019069;
	Tue, 1 Feb 2011 12:00:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:00:35 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 1 Feb 2011 12:00:35 -0800
Message-ID: <4D486662.6020403@windriver.com>
Date: Tue, 01 Feb 2011 14:00:34 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>	<1296382406.13501.7899.camel@rex>	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>	<1296492009.13501.13668.camel@rex>	<9AFCD584B0B67B48AE8D8585BE30BA9506C267B0@orsmsx504.amr.corp.intel.com>	<1296561316.13501.18767.camel@rex>	<9AFCD584B0B67B48AE8D8585BE30BA950D73A848@orsmsx504.amr.corp.intel.com>	<1296567139.13501.19158.camel@rex>
	<20110201192705.2546DB187@gemini.denx.de>
In-Reply-To: <20110201192705.2546DB187@gemini.denx.de>
X-OriginalArrivalTime: 01 Feb 2011 20:00:35.0282 (UTC)
	FILETIME=[B062BB20:01CBC24A]
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
X-List-Received-Date: Tue, 01 Feb 2011 20:01:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The failure indicated in your logs comes from building pseudo-native.  This is
not related to the previous messages you sent.

What is the host system type (Fedora, RHEL, etc), what is your byte size?
32-bit or 64-bit kernel...  any anything else you can give us to reproduce your
configuration.

The error below is fairly obvious.. it tried to build a 32-bit version of the
pseudo libraries, this build failed due to a lack of 32-bit libgcc.so installed
on your host.

If I had to guess you have a 64-bit Fedora or RHEL host, and only partial 32-bit
support installed.  Check using rpm or yum if you have the 32-bit libgcc-devel
package installed.  (I'd also check for 32-bit glibc-devel).

--Mark

On 2/1/11 1:27 PM, Wolfgang Denk wrote:
> Dear Richard Purdie,
> 
> In message <1296567139.13501.19158.camel@rex> you wrote:
>>
>> Can you please try a build from scratch. I think most of your .ipk files
>> look corrupt as there are many eglibc dependencies in there which there
>> simply shouldn't be. If they were built whilst eglibc was rebuilding
>> that would explain the problem but it means your build directory is
>> unstable now :(. If there is a root cause, the above patch isn't it.
> 
> I just ran a build of poky-image-sato-sdk for qemuarm from scratch,
> mainline code, git commit id 4c8f498
> 
> Result:
> 
> ...
> | ccache gcc -m32 -pipe -std=gnu99 -Wall -W -Wextra -fPIC -D_LARGEFILE64_SOURCE -D_ATFILE_SOURCE -m32 -DPSEUDO_PREFIX='"/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr"' -DPSEUDO_SUFFIX='""' -DPSEUDO_BINDIR='"bin"' -DPSEUDO_LIBDIR='"lib/pseudo/lib"' -DPSEUDO_LOCALSTATEDIR='"var/pseudo"' -DPSEUDO_VERSION='"0.3"' -O2 -g -L/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/lib -I/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/include -Wl,-R/opt/poky/build/mainline-4c8f498/tmp/sysroots/x86_64-linux/usr/lib -shared -o lib/pseudo/lib/libpseudo.so \
> |       pseudo_client.o pseudo_ipc.o \
> |       pseudo_wrappers.o pseudo_tables.o pseudo_util.o -ldl
> | /usr/bin/ld: skipping incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when searching for -lgcc_s
> | /usr/bin/ld: cannot find -lgcc_s
> | collect2: ld returned 1 exit status
> | make: *** [lib/pseudo/lib/libpseudo.so] Error 1
> | FATAL: oe_runmake failed
> | Function 'do_compile' failed (see /opt/poky/build/mainline-4c8f498/tmp/work/x86_64-linux/pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17/temp/log.do_compile.17807 for further information)
> NOTE: package pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: task do_compile: Failed
> ERROR: 'virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/pseudo/pseudo_git.bb' failed
> ERROR: Task 7 (virtual:native:/opt/poky/git/poky/work/meta/recipes-devtools/pseudo/pseudo_git.bb, do_compile) failed with exit code '1'
> 
> 
> 
> Best regards,
> 
> Wolfgang Denk
> 


