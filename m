Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2786CE003E1; Tue, 28 Mar 2017 11:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93693E00349
	for <poky@yoctoproject.org>; Tue, 28 Mar 2017 11:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490726425; x=1522262425;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=0HJKhNW2e5nReTXOjRd5w7v20KJWCLtBCl8m/k7Mnms=;
	b=jAeBYSsv7IaF9WhrjNDUNTWbwvx2ZS8TzvukudvW91u9jzhf802awyft
	/OYsYSLaHPOUWtgSB7tv9oqhnEH6UQ==;
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2017 11:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,237,1486454400"; d="scan'208";a="1148061071"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga002.fm.intel.com with ESMTP; 28 Mar 2017 11:40:23 -0700
Message-ID: <1490726909.17259.27.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Tue, 28 Mar 2017 12:48:29 -0600
In-Reply-To: <3059aef6-0a8e-5e57-db11-8f7cd4be71ce@gmail.com>
References: <20170328061152.31318-1-leonardo.sandoval.gonzalez@linux.intel.com>
	<3059aef6-0a8e-5e57-db11-8f7cd4be71ce@gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] [morty] recipes-kernel: Skip kernel version check on kernel templates
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Mar 2017 18:40:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-03-27 at 16:31 -0700, akuster808 wrote:
> Leonardo,
> 
> On 03/27/2017 11:11 PM, leonardo.sandoval.gonzalez@linux.intel.com wrote:
> > From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> >
> > Currently, SRCREV is set to AUTOREV, causing mismatch between PV and the kernel
> > version shown in the makefile (see below to see the bitbake log). The solution
> > is to skip this check, suggesting to remove it once SRCREV is locked.
> >
> > ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Package Version (4.10+gitAUTOINC+01f18cba44_53be19cad6) does not match of kernel being built (4.10.5). Please update the PV variable to match the kernel source or set KERNEL_VERSION_SANITY_SKIP="1" in your recipe.
> > ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Function failed: do_kernel_version_sanity_check (log file is located at /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp/log.do_kernel_version_sanity_check.26904)
> > ERROR: Logfile of failure stored in: /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp
> 
> These errors don't match the supported kernel versions in Morty. Are 
> these being seen our 4.1, 4.4 or 4.8? I have not seen these errors.
> 

You are right, log does not correspond to morty (corresponds to master)

The errors are seen when including a meta bsp layer created by the
yocto-bsp script and bitbake virtual/kernel (see bug 11064). This is the
error for morty:


ERROR: linux-yocto-4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1
do_kernel_version_sanity_check: Package Version (4.8.12+gitAUTOINC
+4fb6f24600_d4148a2064) does not match of kernel being built (4.8.21).
Please update the PV variable to match the kernel source.
ERROR: linux-yocto-4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1
do_kernel_version_sanity_check: Function failed:
do_kernel_version_sanity_check (log file is located
at /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1/temp/log.do_kernel_version_sanity_check.17509)
ERROR: Logfile of failure stored
in: /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.8.12+gitAUTOINC+4fb6f24600_d4148a2064-r0.1/temp/log.do_kernel_version_sanity_check.17509
ERROR: Task
(/home/lsandov1/poky2/meta/recipes-kernel/linux/linux-yocto_4.8.bb:do_kernel_version_sanity_check) failed with exit code '1'

I will send a v2.

Leo



> - Armin
> > /log.do_kernel_version_sanity_check.26904
> > ERROR: Task (/home/lsandov1/poky2/meta/recipes-kernel/linux/linux-yocto_4.10.bb:do_kernel_version_sanity_check) failed with exit code '1
> >
> > [YOCTO #11064]
> >
> > Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
> > ---
> >   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend       | 2 ++
> >   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend       | 2 ++
> >   .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend       | 2 ++
> >   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 +++-
> >   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 2 ++
> >   .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend     | 2 ++
> >   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
> >   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
> >   .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
> >   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
> >   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
> >   .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
> >   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
> >   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
> >   .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
> >   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
> >   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
> >   .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
> >   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
> >   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
> >   .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
> >   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
> >   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
> >   .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
> >   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 2 ++
> >   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 2 ++
> >   .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend   | 2 ++
> >   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend | 2 ++
> >   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend | 2 ++
> >   .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend | 2 ++
> >   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
> >   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
> >   .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
> >   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
> >   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
> >   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
> >   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
> >   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
> >   .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
> >   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
> >   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
> >   .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
> >   42 files changed, 85 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index 2d3d073..4e7d7cb 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -29,4 +29,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   # the appropriate changes committed to the upstream linux-yocto repo
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> > -#LINUX_VERSION = "4.1"
> > \ No newline at end of file
> > +#LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index b88a06c..56e8ad3 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index 7c0df8b..59752a9 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index aecdff0..5ed144b 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index dd4de31..ab644bd 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index 137d8fa..a535aea 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index 1e99a04..4e7d7cb 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index b88a06c..56e8ad3 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index 7c0df8b..59752a9 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index 01a046c..802e5f4 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index 57c90fa..dbb0fd5 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index accf9d5..c2eb40d 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index 1e99a04..4e7d7cb 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index b88a06c..56e8ad3 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index 7c0df8b..59752a9 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 14ee16f..81392ce 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index e256e08..a73b1aa 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index c1635d6..7d40671 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index fce67b4..a9fd9ec 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index 4097932..cdee773 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index e8c3fc8..24c2880 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > index 0a47a4e..d15a178 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > index 815c77b..070bd87 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > index 5fb45d9..c391322 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> > @@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
> >   SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index 1e99a04..4e7d7cb 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.1"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > index b88a06c..56e8ad3 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.4"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> > diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > index 7c0df8b..59752a9 100644
> > --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
> > @@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
> >   SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
> >   #LINUX_VERSION = "4.8"
> > +#Remove the following line once AUTOREV is locked to a certain SRCREV
> > +KERNEL_VERSION_SANITY_SKIP = "1"
> 



