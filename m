Return-Path: <sposelenov@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47A3D4C804FF
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 10:14:09 -0500 (CDT)
Received: from pvr.emcraft.com ([172.17.0.212] helo=localhost.localdomain)
	by ocean.emcraft.com with esmtps (TLSv1:AES128-SHA:128) (Exim 4.71)
	(envelope-from <sposelenov@emcraft.com>)
	id 1QEjxn-0001Sv-Ci; Tue, 26 Apr 2011 19:14:07 +0400
Date: Tue, 26 Apr 2011 19:14:06 +0400
From: Sergei Poselenov <sposelenov@emcraft.com>
To: poky@yoctoproject.org
Message-ID: <20110426191406.0ec4e81f@emcraft.com>
Organization: Emcraft Systems
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.22.0; i386-redhat-linux-gnu)
Mime-Version: 1.0
Cc: 'Vlad' <vlad@emcraft.com>, 'Ilya' <yanok@emcraft.com>
Subject: Poky bernard-5.0 ARM/uclibc meta-toolchain build?
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
X-List-Received-Date: Tue, 26 Apr 2011 15:14:10 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hello all,

I'm newby in poky and I'm trying to build a toolchain, which targets
the Cortex-M3 CPU, thumb mode. Target kernel 2.6 supports only flat
binaries, so my choice of Libc is uClibc - is it correct?

I created the machine configuratin file for my target in
meta/conf/machines, it has the following definitions:
---
TARGET_ARCH = "arm"

TARGET_CC_ARCH="-mcpu=cortex-m3 -mthumb"
TARGET_FPU="soft"
BASE_PACKAGE_ARCH="armv7"
TARGET_OS="linux-uclibc"


# Guesswork                                                                     
SERIAL_CONSOLE = "115200 ttyAAO2"

#??                                                                             
PREFERRED_PROVIDER_virtual/kernel ?= "linux-dummy"
KERNEL_IMAGETYPE = "vmlinux"

#                                                                               
MACHINE_FEATURES = "kernel26 serial"


---
I initialized poky build environment and started the build as
"POKYLIBC=uclibc bitbake -v meta-toolchain".

After step 88 build failed, last lines of the log are:
ERROR: Required build target 'meta-toolchain' has no buildable providers.
Missing or unbuildable dependency chain was: ['meta-toolchain', 'virtual/arm-poky-linux-uclibcgnueabi-compilerlibs', 'desktop-file-utils-native', 'glib-2.0-native']
NOTE: multiple providers are available for virtual/libc-nativesdk (glibc-nativesdk, eglibc-nativesdk)
NOTE: consider defining a PREFERRED_PROVIDER entry to match virtual/libc-nativesdk
ERROR: Nothing PROVIDES 'glib-2.0-native'
ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/work/psl/poky/poky/bitbake/lib/bb/command.py", line 102, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/command.py", line 200, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/cooker.py", line 828, in buildTargets
    taskdata.add_unresolved(localdata, self.status)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 534, in add_unresolved
    self.remove_buildtarget(targetid)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 491, in remove_buildtarget
    self.fail_fnid(fnid, missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 471, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 496, in remove_buildtarget
    self.fail_fnid(self.tasks_fnid[taskid], missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 471, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 491, in remove_buildtarget
    self.fail_fnid(fnid, missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 471, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/work/psl/poky/poky/bitbake/lib/bb/taskdata.py", line 501, in remove_buildtarget
    raise bb.providers.NoProvider(target)
NoProvider: meta-toolchain

What are the real reason of the build failure? What should look for in
the build log?


As a test, I started "MACHINE=quemuarm bitbake -v meta-toolchain",
which built the eglibc-based toolchain successfully. Then I added
"POKYLIBC=uclibc" to the command above, build failed with the same
output.


Is it possible to build uclibc-based ARM toolchain in poky?

Any help would be appreciated.

Regards,
Sergei




tried to build with
"MACHINE=quemuarm POKYLIBC=uclibc"

