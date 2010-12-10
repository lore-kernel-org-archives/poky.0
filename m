Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 008424C81001;
	Fri, 10 Dec 2010 10:01:41 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBAG1dCQ027769;
	Fri, 10 Dec 2010 08:01:40 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 10 Dec 2010 11:02:52 -0500
Message-Id: <cover.1291996631.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux-yocto: refactor recipes and update the kernel
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
X-List-Received-Date: Fri, 10 Dec 2010 16:01:42 -0000

Richard,

Consider these patches for merging. I've been building and working
with these for 2 weeks now, and while they may not be perfect, they
work and we need more eyes on 2.6.37.

What we get is the following:

 - factoring of the code into some reusable routines in the form
   of a linux-yocto bbclass. The -stable, -devel and libc headers
   recipes are all using this common code

 - A new branching scheme for the 2.6.37 kernel that generalizes
   the branch names and shows their hierarchy. The tools that
   process the kernel needed a lot of 'unlearning' about the
   old structure (this took a lot of my time working on this).

   If this needs to be tweaked more, we can do it later, since
   the big changes are done and agreed on, and we can't delay
   scaling this out to more boards much longer.

 - A -stable recipe that continues to build the 2.6.34 kernel
   and a move of the main recipe to track the development
   2.6.37-rc5 tree. The qemu* targets have their defaults
   changed to 2.6.37-rc, while the hardware targets remain
   on 2.6.34 for a bit longer

    ** As discussed. The -stable naming of a recipe is
       transitional and will eventually be removed and we'll
       switch between kernels via a different mechanism

 - perf is moved into a linux-tools.inc, we can add more to
   this and re-use it more easily from here

 - BSP boostrapping is streamlined (docs to follow).

Note: The temporary commenting of the preferred libc-headers provider
was intentional. There is something strange happening when
headers are generated for 2.6.34 that was breaking libc builds.
To avoid holding up this series, we'll go with the default
libc headers for a short while.

I've built and booted all the qemu* targets on 2.6.37
(minimal and sato), I've built most of the hardware
targets. I noticed some strangeness with the mouse on
ARM, and that will need to be looked at further. I've done
some audits on the kernel configuration in 2.6.37, and
while it looks sane, full BSP testing will tell us if
anything major changed (that I missed).

If there are better suggestions on how we can stage and
get mileage on this code, I'm all ears, but this is a kernel
uprev, so I expect some issues (there always is even though
I've done plenty of these). If we don't want anything
destabilizing in the tree, I'm fine with this and we just
need to come up with a plan.

What remains (I'm only one person!):

 - BSP porting and full BSP testing
 - Investigation into the libc-headers issue
 - Continued cleanup
 - Feature merging into 2.6.37 (lttng, yaffs, etc)

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  yocto-kernel: factor common routes, update to 2.6.37 and branch
    renaming
  linux-libc-headers-yocto: use common linux-yocto routines
  qemu: update arm timer handling

 meta-emenlow/conf/machine/emenlow.conf             |    3 +-
 meta/classes/kernel-yocto.bbclass                  |  202 ++++++++++++++++++
 .../conf/distro/include/poky-default-revisions.inc |   36 +++-
 meta/conf/machine/atom-pc.conf                     |    3 +-
 meta/conf/machine/beagleboard.conf                 |    3 +-
 meta/conf/machine/include/qemu.inc                 |    1 +
 meta/conf/machine/mpc8315e-rdb.conf                |    3 +-
 meta/conf/machine/routerstationpro.conf            |    3 +-
 .../qemu-0.12.4/arm_timer-fix-oneshot-mode.patch   |   32 +++
 .../arm_timer-reload-timer-when-enabled.patch      |   40 ++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    4 +-
 .../linux-libc-headers-yocto_git.bb                |   25 +--
 meta/recipes-kernel/linux/linux-tools.inc          |   19 ++
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |   41 ++++
 meta/recipes-kernel/linux/linux-yocto.inc          |   23 ++
 meta/recipes-kernel/linux/linux-yocto_git.bb       |  219 ++------------------
 16 files changed, 420 insertions(+), 237 deletions(-)
 create mode 100644 meta/classes/kernel-yocto.bbclass
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
 create mode 100644 meta/recipes-kernel/linux/linux-tools.inc
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-stable_git.bb
 create mode 100644 meta/recipes-kernel/linux/linux-yocto.inc


