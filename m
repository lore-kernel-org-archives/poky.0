Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C26434C802F2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 09:10:14 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Apr 2011 07:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,304,1299484800"; d="scan'208";a="729358395"
Received: from unknown (HELO [10.255.12.208]) ([10.255.12.208])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2011 07:10:11 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <BANLkTi=bhCcOF6Mr3v79s3aZ9Ae=+pKRLA@mail.gmail.com>
References: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
	<AANLkTikeonvaG+5-p8Lr32Z36wRxVoSc_AJgCofKtuXS@mail.gmail.com>
	<AANLkTimri2H+nN4y=Xa2eUsxtENZUqpAX17WqNgnf1Fm@mail.gmail.com>
	<AANLkTimm282fdW7iwFv0NLvXW3QaC1Rc3S7tHPnNJnij@mail.gmail.com>
	<AANLkTinWqFSqg8KOy1WVZHEpvqcsraZPna8JUdDLeXqy@mail.gmail.com>
	<AANLkTi=z3FRBiLs2iCLLDhU3q6AvnbXiEGbsbNczykMN@mail.gmail.com>
	<BANLkTini9Qz3JrRjWdbEWP5FG9xF_=mOdA@mail.gmail.com>
	<BANLkTi=bhCcOF6Mr3v79s3aZ9Ae=+pKRLA@mail.gmail.com>
Date: Tue, 05 Apr 2011 09:10:04 -0500
Message-ID: <1302012604.23110.374.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Problem in linux-yocto kernel 2.6.37 configuration while building with sugarbay machine
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
X-List-Received-Date: Tue, 05 Apr 2011 14:10:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-05 at 03:06 -0700, v sailaja wrote:
> 
> Hi,
> 
> I am trying to build poky image "piky-image-minimal-live"  for
> "sugarbay" machine with linux-yocto kernel 2.6.37 kernel which
> supports the sandy-bridge.
> 
> I clone poky source as git clone git://git.pokylinux.org/poky.git 
> 
> And  cloned for meta-intel from
> http://git.pokylinux.org/cgit/cgit.cgi/meta-intel
> 
> Also made entries in bblayers.conf as  "meta-intel /meta-sugarbay"
> 
> My machine is 64bit one.
> 
> I made changes in sugarbay.conf, for building "i586" , as follows 
> 
> TARGET_ARCH = "i586"
> TARGET_CC_ARCH = "-m32"
> #TARGET_CC_ARCH = "-m64"
> 
> I tried to build it for both 32 and 64 bit.
> 
> I got the common error both time.
> 
> Error log:1
> 
> 
> ---------------------------------------------*********************************************-----------------------------------
> This BSP sets 24 kernel options that are possibly non-hardware
> related.
> The full list can be found in your workspace at:
> /home/sailaja/new-poky/x86_64/
> poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1
> +e2cabadc059ad8d91f7e4a023106620d93abd23a_1
> +2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/specified_non_hdw.cfg
> 
> WARNING: There were 103 hardware options requested that do not
>          have a corresponding value present in the final ".config"
> file.
>          This probably means you aren't getting the config you wanted.
> The full list can be found in your workspace at:
> /home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/mismatch.cfg
> 
> Waiting a second to make sure you get a chance to see this...
> NOTE: package linux-yocto-2.6.37+git1
> +e2cabadc059ad8d91f7e4a023106620d93abd23a_1
> +2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task
> do_kernel_configcheck: Succeeded
> NOTE: Running task 960 of 1998 (ID:
> 857, /home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb, do_compile)
> NOTE: package linux-yocto-2.6.37+git1
> +e2cabadc059ad8d91f7e4a023106620d93abd23a_1
> +2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_compile:
> Started
> ERROR:
> '/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb' failed
> 
> 
> | /home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0: error: code model 'kernel' not supported in the 32 bit mode
> | /home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0: sorry, unimplemented: 64-bit mode not compiled in
> | make[3]: *** [kernel/bounds.s] Error 1
> | make[2]: *** [prepare0] Error 2
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: *** [scripts] Error 2
> | make[1]: *** [sub-make] Error 2
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed
> (see /home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.29452 for further information)
> NOTE: package linux-yocto-2.6.37+git1
> +e2cabadc059ad8d91f7e4a023106620d93abd23a_1
> +2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_compile: Failed
> ERROR: Task 857
> (/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb, do_compile) failed with exit code '1'
> ---------------******************************-------------------
> 
> I thought, the reason for this error is 
> As My machine is 64 bit one. It is configured for the default
> configurations  i.e., it is using the x86_64_defconfig and 64 bit is
> enabled in the .config file.
> This is because of misconfiguration.
> 
> I configured my kernel.
> 
> My build is done. But I am getting an error while building the rootfs.
> 
> Error log:2
> 
> ---------------------------------------********************************************-------------------------------------------------
> NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Started
> ERROR:
> '/home/sailaja/new-poky/poky/meta/recipes-core/images/poky-image-minimal-live.bb' failed
> ERROR: Function 'build_boot_bin' failed
> (see /home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052 for further information)
> ERROR: Logfile of failure stored
> in: /home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052
> Log data follows:
> | install: cannot stat
> `/home/sailaja/new-poky/poky/build/tmp/sysroots/sugarbay/kernel/bzImage': No such file or directory
> | ERROR: Function 'build_boot_bin' failed
> (see /home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052 for further information)
> NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Failed
> ERROR: Task 8
> (/home/sailaja/new-poky/poky/meta/recipes-core/images/poky-image-minimal-live.bb, do_bootimg) failed with exit code '1' Error
> 
> -------------------------------------------------************************************************------------------------------
> 
> 
> Why it is happening?
> Please Can anyone help me in finding the solution.
> 

I've seen this too with master - bzImage is built ok and exists, but
doesn't get copied or linked to in sysroots and fails.

I would suggest using poky/bernard instead of poky/master.  Using
meta-intel/master should still be ok.

FYI, I've put a transcript of a successful build, from git checkout to
image, here: 

https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-intel_BSP

You should be able to just substitute 'sugarbay' for 'fishriver' to
build for sugarbay...

hth,

Tom

> 
> 
> 
> 
> 
> 
> -- 
> Thanks & Regards,
> SAI
> 



