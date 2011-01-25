Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03EB94C8006D
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 18:53:36 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0P0tTnb011844; Tue, 25 Jan 2011 00:55:30 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3nA4zimeSk+S; Tue, 25 Jan 2011 00:55:29 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0P0tOMx011835
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 00:55:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<1295885045.14388.45539.camel@rex>
	<1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
Date: Tue, 25 Jan 2011 00:53:10 +0000
Message-ID: <1295916790.14388.47147.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Tue, 25 Jan 2011 00:53:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 01:28 +0800, Cui, Dexuan wrote:
> Richard Purdie wrote:
> > On Tue, 2011-01-18 at 21:57 +0800, Dexuan Cui wrote:
> Hi Richard, thanks very much for the review and feedback!
> BTW: I was just about to send out my "RFC v5" patches and I saw the mail. :-)
> 
> During the past days, I've been busy with testing and fixing & updating my patches.
> The v5 patches are at  http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=dcui/tcbp-v5 (actually it's the same as dcui/tcbp-test currently)
> The attached v3-to-v5.diff shows the difference from v3 to v5:
> 
> 1) fix several typos for  "_prepend_virtclass-nativesdk": previously I used the wrong "_virtclass-nativesdk_prepend"!
> 
> 2) in eglibc-initial.inc, now the line is 
> STAGING_BINDIR_TOOLCHAIN_prepend = "${STAGING_DIR_NATIVE}${bindir_native}/${BASEPKG_HOST_SYS}.gcc-cross-initial:"
> Previously, I used HOST_SYS rather than BASEPKG_HOST_SYS.  Actually HOST_SYS is not ok because this breaks arm/ppc builds.
> 
> 3) similarly,
> 	in eglibc.inc: 
> 		STAGING_BINDIR_TOOLCHAIN_prepend: HOST_SYS --> BASEPKG_HOST_SYS
> 		CPPFLAGS_prepend: TARGET_SYS -> BASEPKG_TARGET_SYS
> 	in gcc-cross-intermediate.inc:
> 		GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT: TARGET_SYS --> BASEPKG_TARGET_SYS
> 
> 4)  in eglibc-initial.inc:
> 	use a "for t in ..." loop to replace the previous 3 statements.
> 
> 5) add the code for glibc and glibc-initial similarly.
> 6) bump PRs accordingly.
> 
> I'll send my current test results later.

Sounds good.

I did a bit of research and experimentation with your remaining changes
and came up with the hybrid you can see here:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/tt-bootstrap&id=bba04b790b0454e8bf2de8ea5a9d610e81f0a278

This is actually very similar to what you've done but I made a few
tweaks to try and improve the way it works.

Firstly instead of overloading the /lib and /usr/lib directories, I just
created a "bootstrap" sysroot, STAGING_DIR_TCBOOTSTRAP.

eglibc-initial then stages into that sysroot, as per your changes.

I then made gcc-cross-intermediate use this as both the build *and*
installation sysroot since its files don't conflict with those from
eglibc-initial.

We can then easily point eglibc to build against the bootstrap sysroot
using TOOLCHAIN_OPTIONS but install into the target.

Looking back at my patch, the change to make gcc-configure-cross.inc use
the bootstrap sysroot might not be correct, it should likely use the
libc from the main sysroot by that point.

The biggest problem I found was the sitecache.bbclass function in eglibc
as this wanted to run configure to be able to compile things yet we
don't populate the sysroot at that point so the intermediate compiler
won't fully work as it can't find a libc. I added a horrendous hack to
fudge this piece into working. A neater solution would be nice, I'm
still working on that but I'm not too optimistic.

Could you take a look at these changes and see what you think? There are
still a few details that need to be ironed out but I think it could
work.

Cheers,

Richard





