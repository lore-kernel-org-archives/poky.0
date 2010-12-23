Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52D474C81081
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 06:27:10 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BC4C816603C1; Thu, 23 Dec 2010 05:27:09 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6DC4216603A1;
	Thu, 23 Dec 2010 05:27:08 -0700 (MST)
Message-ID: <4D13401C.8080901@mlbassoc.com>
Date: Thu, 23 Dec 2010 05:27:08 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
	<1293097470.1588.567.camel@rex>
In-Reply-To: <1293097470.1588.567.camel@rex>
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
X-List-Received-Date: Thu, 23 Dec 2010 12:27:11 -0000
X-Groupsio-MsgNum: 1665
Content-Type: multipart/mixed; boundary="------------060909040208020403040400"

--------------060909040208020403040400
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/23/2010 02:44 AM, Richard Purdie wrote:
> On Thu, 2010-12-23 at 14:11 +0800, Tian, Kevin wrote:
>> I'm a bit confused why a specific ${KERNEL_CC} is introduced instead of
>> reusing ${CC}, especially when two are defined differently:
>>
>> <kernel.bbclass>
>> KERNEL_CC = "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL_ARCH}"
>>
>> <bitbake.conf>
>> export CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}"
>> TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
>>
>> I'm not sure whether kernel build requires "--sysroot" option, but it looks that it works well
>> so far even without that option (why?)
>
> The kernel doesn't link against system libraries or use system header
> files so it really doesn't matter whether it sees the sysroot or not.
>
> We use a different CC for the kernel so the user has the option of using
> a different compiler version for this. Whilst its a lot less common now,
> there were once use cases where the kernel would be compiled with one
> version of gcc and the userspace with a different version.
>
>> However this causes one issue under sstate, if the whole toolchain is installed from sstate
>> packages which are built from another machine. In such case the default path (decided at
>> compilation time) of gcc also points to the path on another machine, which is missing in
>> current machine doing build. Perf compilation is:
>>
>> do_compile_perf() {
>>          oe_runmake -C ${S}/tools/perf CC="${KERNEL_CC}" LD="${KERNEL_LD}" prefix=${prefix}
>> }
>>
>> Without an explicit "--sysroot" options, perf compilation is broken due to failing to check some
>> header files like gnu/libc-version.h. I can workaround it by:
>>
>> do_compile_perf() {
>>          oe_runmake -C ${S}/tools/perf CC="${CC}" LD="${LD}" AR="${AR}" prefix=${prefix}
>> }
>
> Perf should be compiled with the userspace toolchain, not the kernel
> one. I'd say this fix is therefore correct.
>
> Adding TOOLCHAIN_OPTIONS to KERNEL_CC would also probably be a good idea
> too.

Perfect idea!  I added this and I'm now able to rebuild my
kernel package using a sstate-cache based toolchain.  This
should close bug #605

Patch attached for review.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------060909040208020403040400
Content-Type: text/plain;
 name="0001-Include-sysroot-in-KERNEL_CC-allows-tools-to-move.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Include-sysroot-in-KERNEL_CC-allows-tools-to-move.patch"

From 316c5f347106f4edb3d72818025916cac164d526 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 23 Dec 2010 05:20:20 -0700
Subject: [PATCH] Include --sysroot in ${KERNEL_CC} - allows tools to move

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/kernel.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 26273bd..f380a5c 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -40,7 +40,8 @@ HOST_CC_KERNEL_ARCH ?= "${TARGET_CC_KERNEL_ARCH}"
 TARGET_LD_KERNEL_ARCH ?= ""
 HOST_LD_KERNEL_ARCH ?= "${TARGET_LD_KERNEL_ARCH}"
 
-KERNEL_CC = "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL_ARCH}"
+KERNEL_CC = "${CCACHE}${HOST_PREFIX}gcc${KERNEL_CCSUFFIX} ${HOST_CC_KERNEL_ARCH} ${TOOLCHAIN_OPTIONS}"
+TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 KERNEL_LD = "${LD}${KERNEL_LDSUFFIX} ${HOST_LD_KERNEL_ARCH}"
 
 # Where built kernel lies in the kernel tree
-- 
1.7.2.3


--------------060909040208020403040400--
