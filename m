Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37DA1E003DB
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Mar 2013 12:04:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="305764424"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2013 12:04:11 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:10 -0500
Message-Id: <cover.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 00/18] Yocto BSP tools updates and support for kernel features
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:13 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

This patchset updates the Yocto BSP tools to match the new kernel versions
supported i.e. adds 3.8 and drops 3.2, and also adds support for the new
linux-yocto-dev kernel recipe.  Additionally, it does a bunch of cleanup,
removing various fragments that are no longer necessary with recent updates
of the kernel tools.

The major addition is new support for kernel features, with a set of new
yocto-kernel subcommands that deal with features (you can get a full listing
with details and help by running the yocto-kernel command directly.  As an
overview, the new commands are:

yocto-kernel features list
yocto-kernel feature describe
yocto-kernel feature rm
yocto-kernel feature list
yocto-kernel feature add

yocto-kernel feature create
yocto-kernel feature destroy

The list/add/rm are analogous to the similar commands for patches and raw
config items.  The create/destroy subcommands allow you to create arbitrary
new features completely in recipe-space, and which can be used just as
built-in (repo-based) features can be, via the list/add/rm feature commands.

The 'features list' command can be used to list the complete set of available
features, including those added using the 'feature create' command.  The
'feature describe' subcommand can be used to show the description of a
particular feature.

Below is an example session showing all the commands in use.

Here we have a BSP use an existing feature from the meta branch of the
linux-yocto repo associated with the BSP:

  [trz@empanada build]$ yocto-kernel feature add feature-test-qemux86 features/amt/mei/mei.scc
  Added features:
      features/amt/mei/mei.scc

Using the 'yocto-kernel feature list' subcommand, we can list the features
currentl in use by the BSP:

  [trz@empanada build]$ yocto-kernel feature list feature-test-qemux86
  The current set of machine-specific features for feature-test-qemux86 is:
      1) features/amt/mei/mei.scc

We can use the 'yocto-kernel feature create' command to create a brand-new
user-defined feature completely in recipe-space.  The create command takes
a number of parameters, including an open-ended set of patches and bare
config items that define the feature:

  [trz@empanada build]$ yocto-kernel feature create feature-test-qemux86 newfeature.scc "Yocto testmod" capabilities ~/bsp-tools-tests/test/marlene/yocto-testmod.patch CONFIG_YOCTO_TESTMOD=y
  Added feature:
      features/newfeature.scc

The 'yocto-kernel features list' subcommand lists all the features available
to the BSP, including the one we just created in recipe-space:

  [trz@empanada build]$ yocto-kernel features list feature-test-qemux86
  The current set of kernel features available to feature-test-qemux86 is:

  cfg/smp.scc: Enable SMP [all]
  cfg/8250.scc: Enable 8250 serial support [board]
  cfg/usb-mass-storage.scc: Enable options required for USB mass storage devices [all]
  cfg/x32.scc: x86 x32 support [arch]
  cfg/timer/hz_250.scc: Enable 250Hz Timer frequency [all]
  cfg/timer/hz_1000.scc: Enable 1000Hz Timer frequency [all]
  cfg/timer/no_hz.scc: Enable CONFIG_NO_HZ [all]
  cfg/timer/hpet.scc: HPET Timer Support [arch]
  .
  .
  .
  features/ftrace/ftrace.scc: Enable Function Tracer [all]
  features/powertop/powertop.scc: Enable powertop + profiling [arch]
  features/usb/xhci-hcd.scc: Enable options for xhci (USB 3.0) [board]
  features/usb/ehci-hcd.scc: Enable options for ehci (USB 2.0) [board]
  features/usb/usb-base.scc: Enable core options for USB support [board]
  features/usb/uhci-hcd.scc: Enable options for uhci (USB 1.x) [board]
  features/usb/ohci-hcd.scc: Enable options for ohci (USB 1.x) [board]
  features/profiling/profiling.scc: Enable profiling and timerstats [board]
  features/intel-e1xxxx/intel-e100.scc: Enable Intel E100 and E1000 support [board]
  features/kmemcheck/kmemcheck-enable.scc: Enable kmemcheck [arch]
  [local]
  features/newfeature.scc: Yocto testmod [capabilities]

We can make use of the newly-created feature just as we would any other
feature, using the 'yocyo-kernel feature add' subcommand.

  [trz@empanada build]$ yocto-kernel feature add feature-test-qemux86 features/newfeature.scc
  Added features:
      features/newfeature.scc

We can also use the 'yocto-kernel feature destroy' to destroy the feature
we just created.  Note that this command will only destroy features defined
by 'yocto-kernel feature create' and that exist in recipe-space, and can't
be used to destroy features in a linux-yocto repo:

  [trz@empanada build]$ yocto-kernel feature destroy feature-test-qemux86 newfeature.scc
  Feature newfeature.scc is in use (use 'feature rm' to un-use it first), exiting

In this case, because the BSP is actually using the feature we want to
destroy (because we added it to the BSP using 'yocto-kernel feature add'),
'yocto-kernel feature destroy' can't destroy it.  Before we can destroy it
we need to first have the BSP stop using it.  We can do that using
'yocto-kernel feature remove', followed by 'yocto-kernel feature destroy'
to destroy it:

  [trz@empanada build]$ yocto-kernel feature rm feature-test-qemux86
  Specify the features to remove:
	1) features/amt/mei/mei.scc
	2) features/newfeature.scc
  2
  Removed features:
	features/newfeature.scc

  [trz@empanada build]$ yocto-kernel feature destroy feature-test-qemux86 newfeature.scc
  Removed feature:
	features/newfeature.scc

One note on the 'yocto-kernel features list' command - this implementation is
very slow because it's going to the remote kernel repo for each feature in
order to get the description.  This will be fixed in the near future by having
the kernel tools provide consolidated list instead.

The following changes since commit 4da406cd50cf02a63ed76810a670aba1eb561c79:

  gst-plugins-gl: allow empty packages (2013-03-12 18:33:30 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-features-update
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-features-update

Tom Zanussi (18):
  yocto-bsp: add 3.8/remove 3.2 kernel from templates
  yocto-bsp: update default custom kernel
  scripts/lib/bsp/engine.py: update map_standard_kbranch()
  yocto-bsp: use map_standard_branch()
  scripts/lib/bsp/engine.py: add preempt-rt and tiny to
    map_standard_kbranch()
  yocto-bsp: update machine-standard.scc
  yocto-bsp: update 3.4 .bbappends
  yocto-bsp: update machine-preempt-rt.scc
  yocto-bsp: update linux-yocto-rt_3.4 .bbappends
  yocto-bsp: add support for tiny
  yocto-bsp: add support for linux-yocto-dev
  yocto-bsp: upgrade i386 template with emgd 1.16
  yocto-kernel: add support for kernel feature add/rm/list
  yocto-kernel: add support for listing available kernel features
  yocto-kernel: add support for printing kernel feature descriptions
  yocto-kernel: add support for creating recipe-space kernel features
  yocto-kernel: add support for destroying recipe-space kernel features
  yocto-bsp: add machine-user-features.scc to templates

 scripts/lib/bsp/engine.py                          |  50 ++-
 scripts/lib/bsp/help.py                            | 225 +++++++++++
 scripts/lib/bsp/kernel.py                          | 438 ++++++++++++++++++++-
 .../target/arch/arm/conf/machine/{{=machine}}.conf |   9 +-
 .../arm/recipes-kernel/linux/kernel-list.noinstall |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |   5 +-
 .../{{=machine}}-standard.scc"                     |   2 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  22 ++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  37 --
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  16 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  22 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  16 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  19 +-
 .../lib/bsp/substrate/target/arch/common/README    |   4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   8 +-
 .../arch/i386/conf/machine/{{=machine}}.conf       |  20 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |   5 +-
 .../{{=machine}}-standard.scc"                     |   3 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  22 ++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  37 --
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  16 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  29 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  16 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  19 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |   5 +-
 .../{{=machine}}-standard.scc"                     |   2 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 .../{{=machine}}.scc"                              |   3 -
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  22 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  16 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  29 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  16 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  19 +-
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |   5 +-
 .../{{=machine}}-standard.scc"                     |   2 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 .../{{=machine}}.scc"                              |   3 -
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  22 ++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  37 --
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  16 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  29 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  16 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  19 +-
 .../arch/qemu/conf/machine/{{=machine}}.conf       |  11 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |  22 +-
 .../{{=machine}}-standard.scc"                     |  20 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  46 +++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  17 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  39 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  17 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  39 +-
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   4 +-
 .../{{=machine}}-preempt-rt.scc"                   |   5 +-
 .../{{=machine}}-tiny.scc"                         |   9 +
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  22 ++
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  37 --
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  16 +-
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  29 ++
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  37 --
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  16 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  28 ++
 scripts/yocto-kernel                               | 169 +++++++-
 72 files changed, 1409 insertions(+), 567 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" (51%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (52%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" (43%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (45%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"

-- 
1.7.11.4


