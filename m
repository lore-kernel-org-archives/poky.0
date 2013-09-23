Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3017DE01618
	for <poky@yoctoproject.org>; Mon, 23 Sep 2013 06:42:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Sep 2013 06:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="298227674"
Received: from unknown (HELO localhost) ([10.255.14.250])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Sep 2013 06:42:50 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Sep 2013 08:42:47 -0500
Message-Id: <cover.1379943053.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp updates
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
X-List-Received-Date: Mon, 23 Sep 2013 13:42:57 -0000

This updates the yocto-bsp tools for the new kernel in dora.

This is just the standard round of updates for a new release and
new kernel, but this time around we have a bug number for it
(YOCTO #5107).

It also took a little longer than usual this time because I always
do extensive testing over the whole thing, every arch and combination
of branches that I think covers just about every normal use case,
and it uncovered a couple unusual problems in e.g. the kernel tools
which have been fixed elsewhere.

The following changes since commit bf6b0d95db3863a2cfbccb154c0c7ad5b3bbf0b0:

  glib-2.0: fix broken python script header on machines using buildtools (2013-09-22 12:23:35 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-1.5-updates-v4
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-1.5-updates-v4

Tom Zanussi (1):
  yocto-bsp: add 3.10/remove 3.8 kernel from templates

 scripts/lib/bsp/help.py                            | 29 -----------
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 22 +++++++--
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../{{=machine}}-preempt-rt.scc"                   |  4 ++
 .../{{=machine}}-standard.scc"                     |  4 ++
 .../{{=machine}}.cfg"                              | 56 ++++++++--------------
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../lib/bsp/substrate/target/arch/common/README    |  8 ----
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       | 29 +++++------
 ...erver_choice == \"xserver_emgd\": }} xorg.conf" | 47 ------------------
 ...erver_choice == \"xserver_i915\": }} xorg.conf" | 25 ----------
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" | 25 ----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}-standard.scc"                     |  3 --
 .../{{=machine}}.scc"                              |  7 +--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       | 11 +++--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../arch/powerpc/conf/machine/{{=machine}}.conf    | 31 ++++++++----
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  4 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  6 +--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 55 +++++++++++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  9 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  4 +-
 .../arch/x86_64/conf/machine/{{=machine}}.conf     | 13 ++++-
 ...erver_choice == \"xserver_i915\": }} xorg.conf" | 25 ----------
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" | 25 ----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}.scc"                              |  3 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" | 32 +++++++++++++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 -------------
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 73 files changed, 423 insertions(+), 365 deletions(-)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (96%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)

-- 
1.7.11.4


