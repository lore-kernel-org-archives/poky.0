Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFE554C800A2
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 21:06:31 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2011 19:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,301,1299484800"; d="scan'208";a="729150927"
Received: from unknown (HELO [10.255.12.245]) ([10.255.12.245])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2011 19:06:31 -0700
Message-ID: <4D9A7926.501@linux.intel.com>
Date: Mon, 04 Apr 2011 19:06:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Sparsh Wid hope <sparsh150847@yahoo.com>
References: <177088.27801.qm@web95702.mail.in.yahoo.com>
In-Reply-To: <177088.27801.qm@web95702.mail.in.yahoo.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Help me to create poky image for beagleboard
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
X-List-Received-Date: Tue, 05 Apr 2011 02:06:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/25/2011 06:51 AM, Sparsh Wid hope wrote:
> Hi all,
>
> I'm trying to build a POKY image for beagleboard and getting error.
>
> I followed the steps as:
>
> a. Downloaded the source as wget -c
> http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2
> <http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2>
> and then untar it.
> b. I modified the file laverne-4.0.1/meta/conf/local.conf.sample as
>
> MACHINE ?= "beagleboard"
> and tried to build as
>
> source poky-init-build-env
> bitbake poky-image-minimal-live

The live image is mostly an x86'ism, and therefor depends on syslinux 
(which doesn't work for ARM). For Beagleboard, just build 
poky-image-minimal. For instructions on how to install it, see the 
latest README.hardware.

--
Darren

>
> then i got message on my terminal as:
>
> NOTE: Handling BitBake files: \ (0845/0845) [100 %]
> Parsing of 845 .bb files complete (798 cached, 47 parsed). 977 targets,
> 55 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION = "1.11.0"
> METADATA_BRANCH = "<unknown>"
> METADATA_REVISION = "<unknown>"
> TARGET_ARCH = "arm"
> TARGET_OS = "linux-gnueabi"
> MACHINE = "beagleboard"
> DISTRO = "poky"
> DISTRO_VERSION = "0.9"
> TARGET_FPU = "soft"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'syslinux'
> ERROR: Required build target 'poky-image-minimal-live' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['poky-image-minimal-live',
> 'syslinux']
> Command execution failed: Traceback (most recent call last):
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py",
> line 88, in runAsyncCommand
> commandmethod(self.cmds_async, self, options)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py",
> line 184, in buildTargets
> command.cooker.buildTargets(pkgs_to_build, task)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py",
> line 758, in buildTargets
> taskdata.add_unresolved(localdata, self.status)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 535, in add_unresolved
> self.remove_buildtarget(targetid)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 497, in remove_buildtarget
> self.fail_fnid(self.tasks_fnid[taskid], missing_list)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 472, in fail_fnid
> self.remove_buildtarget(target, missing_list)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 502, in remove_buildtarget
> raise bb.providers.NoProvider(target)
> NoProvider: poky-image-minimal-live
> _____________________________________________________________________________
>
> I noticed the dependancy of syslinux and open the file
> laverne-4.0.1/meta/recipes-devtools/syslinux/syslinux_3.86.bb
> and notice that COMPATIBLE_HOST = '(x86_64|i.86).*-(linux|freebsd.*)'
> so I thought that it is X86 compatible so I downloaded
> "recipes_images_beagleboard-demo-image.bb" from
> http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb
> and added in laverne-4.0.1/meta/recipes-core/images and then i tried to
> build as bitbake recipes_images_beagleboard-demo-image
> and got error as :
>
> NOTE: Handling BitBake files: \ (0845/0845) [100 %]
> Parsing of 845 .bb files complete (797 cached, 48 parsed). 977 targets,
> 55 skipped, 0 masked, 0 errors.
>
> OE Build Configuration:
> BB_VERSION = "1.11.0"
> METADATA_BRANCH = "<unknown>"
> METADATA_REVISION = "<unknown>"
> TARGET_ARCH = "arm"
> TARGET_OS = "linux-gnueabi"
> MACHINE = "beagleboard"
> DISTRO = "poky"
> DISTRO_VERSION = "0.9"
> TARGET_FPU = "soft"
>
> ERROR: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'
> Command execution failed: Traceback (most recent call last):
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py",
> line 88, in runAsyncCommand
> commandmethod(self.cmds_async, self, options)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py",
> line 184, in buildTargets
> command.cooker.buildTargets(pkgs_to_build, task)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py",
> line 756, in buildTargets
> taskdata.add_provider(localdata, self.status, k)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 354, in add_provider
> self.add_provider_internal(cfgData, dataCache, item)
> File
> "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py",
> line 374, in add_provider_internal
> raise bb.providers.NoProvider(item)
> NoProvider: recipes_images_beagleboard-demo-image
>
> please help me to solve the error.
>
> Thanks in advenced
> Sparsh
>
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

