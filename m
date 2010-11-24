Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B1834C80B71
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 18:50:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Nov 2010 16:50:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,245,1288594800"; d="scan'208";a="629729057"
Received: from unknown (HELO [10.255.13.191]) ([10.255.13.191])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 16:50:07 -0800
Message-ID: <4CEC613A.8020005@linux.intel.com>
Date: Tue, 23 Nov 2010 16:50:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Cc: Saul Wold <sgw@linux.intel.com>
Subject: linux recipe PV requirements
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
X-List-Received-Date: Wed, 24 Nov 2010 00:50:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Are there restrictions on what the PV variable is set to?

I'd like to name the recipe I'm working on linux-linaro-2.6.35 and use 
PR and the git AUTOREV to define the PV value. However, when I make the 
following change in linux-linaro-2.6.35_git.bb:

- PV = "2.6.35"
+ PV = "${PR}+git${SRCREV}"


I get the following failure:

$ bitbake linux-linaro-2.6.35
NOTE: Handling BitBake files: - (0788/0788) [100 %]
Parsing of 788 .bb files complete (748 cached, 40 parsed). 935 targets, 
48 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "master"
METADATA_REVISION = "94b1fda09671b58aafb54983e4a6e499f6ffc369"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard-linaro"
DISTRO            = "poky"
DISTRO_VERSION    = "0.9+snapshot-20101124"
TARGET_FPU        = "soft"


NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'virtual/arm-poky-linux-gnueabi-depmod-None'
ERROR: Required build target 'linux-linaro-2.6.35' has no buildable 
providers.
Missing or unbuildable dependency chain was: ['linux-linaro-2.6.35', 
'virtual/arm-poky-linux-gnueabi-depmod-None']
Command execution failed: Traceback (most recent call last):
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/command.py", 
line 88, in runAsyncCommand
     commandmethod(self.cmds_async, self, options)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/command.py", 
line 184, in buildTargets
     command.cooker.buildTargets(pkgs_to_build, task)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/cooker.py", 
line 757, in buildTargets
     taskdata.add_unresolved(localdata, self.status)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/taskdata.py", 
line 535, in add_unresolved
     self.remove_buildtarget(targetid)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/taskdata.py", 
line 492, in remove_buildtarget
     self.fail_fnid(fnid, missing_list)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/taskdata.py", 
line 472, in fail_fnid
     self.remove_buildtarget(target, missing_list)
   File 
"/home/dvhart/source/poky.git/scripts/..//bitbake/lib/bb/taskdata.py", 
line 502, in remove_buildtarget
     raise bb.providers.NoProvider(target)
NoProvider: linux-linaro-2.6.35


-- 
Darren Hart
Yocto Linux Kernel

