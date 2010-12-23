Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E40514C81067
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 03:46:13 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBN9k9Xi005032; Thu, 23 Dec 2010 09:46:09 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id fQd0drlQLzDa; Thu, 23 Dec 2010 09:46:09 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBN9k24A005024
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 09:46:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
Date: Thu, 23 Dec 2010 09:44:30 +0000
Message-ID: <1293097470.1588.567.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about ${KERNEL_CC} and ${CC}
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
X-List-Received-Date: Thu, 23 Dec 2010 09:46:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 14:11 +0800, Tian, Kevin wrote:
> I'm a bit confused why a specific ${KERNEL_CC} is introduced instead of
> reusing ${CC}, especially when two are defined differently:
> 
> <kernel.bbclass>
> KERNEL_CC = "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL_ARCH}"
> 
> <bitbake.conf>
> export CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
> TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
> 
> I'm not sure whether kernel build requires "--sysroot" option, but it looks that it works well
> so far even without that option (why?)

The kernel doesn't link against system libraries or use system header
files so it really doesn't matter whether it sees the sysroot or not.

We use a different CC for the kernel so the user has the option of using
a different compiler version for this. Whilst its a lot less common now,
there were once use cases where the kernel would be compiled with one
version of gcc and the userspace with a different version.

> However this causes one issue under sstate, if the whole toolchain is installed from sstate
> packages which are built from another machine. In such case the default path (decided at
> compilation time) of gcc also points to the path on another machine, which is missing in
> current machine doing build. Perf compilation is:
> 
> do_compile_perf() {
>         oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix}
> }
>
> Without an explicit "--sysroot" options, perf compilation is broken due to failing to check some 
> header files like gnu/libc-version.h. I can workaround it by:
> 
> do_compile_perf() {
>         oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" AR="${AR}" prefix=${prefix}
> }

Perf should be compiled with the userspace toolchain, not the kernel
one. I'd say this fix is therefore correct.

Adding TOOLCHAIN_OPTIONS to KERNEL_CC would also probably be a good idea
too.

Cheers,

Richard


