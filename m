Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A5D04C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 17:29:52 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11NVshG009040; Tue, 1 Feb 2011 23:31:54 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3zBPhUG98UfC; Tue,  1 Feb 2011 23:31:54 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11NVoKG009036
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 23:31:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20110201192705.2546DB187@gemini.denx.de>
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
	<20110201192705.2546DB187@gemini.denx.de>
Date: Tue, 01 Feb 2011 23:29:39 +0000
Message-ID: <1296602979.13501.21658.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Tue, 01 Feb 2011 23:29:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-01 at 20:27 +0100, Wolfgang Denk wrote:
> Dear Richard Purdie,
> 
> In message <1296567139.13501.19158.camel@rex> you wrote:
> >
> > Can you please try a build from scratch. I think most of your .ipk files
> > look corrupt as there are many eglibc dependencies in there which there
> > simply shouldn't be. If they were built whilst eglibc was rebuilding
> > that would explain the problem but it means your build directory is
> > unstable now :(. If there is a root cause, the above patch isn't it.
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

Did you leave NO32LIBS set in local.conf as per the default?

Cheers,

Richard


