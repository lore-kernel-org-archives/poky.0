Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DC7F4C80BCF
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 06:49:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 04:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,348,1288594800"; 
	d="dot'?scan'208";a="361997495"
Received: from unknown (HELO helios.localnet) ([10.255.16.75])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 04:49:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 15 Dec 2010 12:49:30 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
MIME-Version: 1.0
Message-Id: <201012151249.31647.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: question about task override
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
X-List-Received-Date: Wed, 15 Dec 2010 12:49:34 -0000
X-Groupsio-MsgNum: 1279
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_blLCNVjmWmiRer3"

--Boundary-00=_blLCNVjmWmiRer3
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 15 December 2010 11:24:02 Tian, Kevin wrote:
.. top part snipped...
> (meta/conf/distro/poky.conf)
> do_deploy[vardepsexclude] = "DATE TIME"
> kernel_do_deploy[vardepsexclude] = "DATE TIME"
> 
> There's one example in poky.conf:
> 
> patch_do_patch[vardepsexclude] = "DATE SRCDATE"
> 
> which works. Does that mean I have to change do_deploy in kernel.bbclass to
> kernel_do_deploy which is unique in global namespace and then can be referenced
> from other places?

I haven't looked closely into the rest of your post, but I can say that the reason your example above won't work is that vardepsexclude will currently only exclude direct dependencies, and DATE and TIME aren't directly referred to by do_deploy - it's via DATETIME and KERNEL_IMAGE_BASE_NAME. I've attached a graphviz dot diagram for linux-yocto do_deploy which was produced from debug output, if it helps make it clearer (viewable with "dot linux_yocto_do_deploy.dot -Tpng > output.png" ).

When I was testing vardepsexclude I did wonder whether applying it additionally after checking sub-dependencies in order to get around the indirect dependency issue would be a good idea; in the end I elected not to do it for the moment as it is possibly better to be completely explicit. There is the other question as well as to how to deal with dependencies in overridden versions of generic functions, which is what you are alluding to I think.

However, my question is if KERNEL_IMAGE_BASE_NAME includes DATETIME, is it a good idea to be attempting to exclude the dependency?

Cheers,
Paul


--Boundary-00=_blLCNVjmWmiRer3
Content-Type: text/vnd.graphviz;
  charset="UTF-8";
  name="linux_yocto_do_deploy.dot"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="linux_yocto_do_deploy.dot"

digraph {
DATE [color="red"]
TIME [color="red"] 
CPPFLAGS -> {TARGET_CPPFLAGS}
SELECTED_OPTIMIZATION -> {DEBUG_BUILD}
STAGING_INCDIR_NATIVE -> {includedir_native STAGING_DIR_NATIVE}
GLIBCTARGETOS -> {TARGET_ARCH}
sharedstatedir -> {base_prefix}
localstatedir -> {base_prefix}
palmqtdir -> {palmtopdir}
CPP -> {HOST_PREFIX TOOLCHAIN_OPTIONS}
libdir_native -> {prefix_native}
mandir -> {datadir}
HOST_CC_ARCH -> {TARGET_CC_ARCH}
OPIEDIR -> {STAGING_DIR_HOST}
STRIP -> {HOST_PREFIX}
KERNEL_IMAGE_SYMLINK_NAME -> {MACHINE KERNEL_IMAGETYPE}
STAGING_BINDIR -> {STAGING_DIR_HOST bindir}
STAGING_DATADIR -> {datadir STAGING_DIR_HOST}
STAGING_BINDIR_NATIVE -> {bindir_native STAGING_DIR_NATIVE}
STAGING_SIPDIR -> {STAGING_DATADIR_NATIVE}
BUILD_LDFLAGS -> {STAGING_LIBDIR_NATIVE}
PACKAGE_ARCH -> {MACHINE_ARCH}
RANLIB -> {HOST_PREFIX}
DATETIME -> {DATE TIME}
BUILD_CC -> {BUILD_CC_ARCH CCACHE BUILD_PREFIX}
STAGING_DIR_HOST -> {STAGING_DIR BASEPKG_HOST_SYS}
base_sbindir -> {base_prefix}
CXX -> {HOST_PREFIX TOOLCHAIN_OPTIONS CCACHE HOST_CC_ARCH}
OBJDUMP -> {HOST_PREFIX}
HOST_PREFIX -> {TARGET_PREFIX}
EXTENDPE -> {PE}
MULTIMACH_TARGET_SYS -> {TARGET_VENDOR TARGET_OS MULTIMACH_ARCH}
BUILD_CXXFLAGS -> {BUILD_CFLAGS}
OBJCOPY -> {HOST_PREFIX}
OS -> {TARGET_OS}
MACHINE_ARCH -> {MACHINE BASE_PACKAGE_ARCH}
CROSS_COMPILE -> {TARGET_PREFIX}
datadir_native -> {prefix_native}
BUILD_LD -> {BUILD_PREFIX}
BUILD_SYS -> {BUILD_ARCH BUILD_VENDOR BUILD_OS}
includedir_native -> {prefix_native}
BUILD_RANLIB -> {BUILD_PREFIX}
PV -> {SRCPV LINUX_VERSION}
PF -> {PR PV PN EXTENDPE}
CCACHE -> {PATH}
PN -> {FILE}
KERNEL_IMAGE_BASE_NAME -> {PR KERNEL_IMAGETYPE MACHINE PV DATETIME}
QMAKE_MKSPEC_PATH -> {STAGING_DATADIR_NATIVE}
PKG_CONFIG_PATH -> {PKG_CONFIG_DIR STAGING_DATADIR}
oldincludedir -> {exec_prefix}
BUILD_CFLAGS -> {BUILD_CPPFLAGS BUILD_OPTIMIZATION}
LDFLAGS -> {TARGET_LDFLAGS}
CMDLINE_CONSOLE -> {KERNEL_CONSOLE}
sysconfdir -> {base_prefix}
AS -> {HOST_PREFIX}
STAGING_DIR_TARGET -> {STAGING_DIR BASEPKG_TARGET_SYS}
MULTIMACH_ARCH -> {PACKAGE_ARCH}
CCLD -> {CC}
PKG_CONFIG_DIR -> {STAGING_DIR libdir BASE_PACKAGE_ARCH TARGET_VENDOR TARGET_OS}
libexecdir -> {exec_prefix}
docdir -> {datadir}
TARGET_SYS -> {TARGET_VENDOR TARGET_OS TARGET_ARCH}
KERNEL_VERSION -> {get_kernelversion B}
servicedir -> {base_prefix}
QPEDIR -> {STAGING_DIR_HOST}
CXXFLAGS -> {TARGET_CXXFLAGS}
bindir_native -> {prefix_native}
palmtopdir -> {libdir}
QTDIR -> {STAGING_DIR_HOST}
BASEPKG_TARGET_SYS -> {BASE_PACKAGE_ARCH TARGET_VENDOR TARGET_OS}
infodir -> {datadir}
BUILD_CCLD -> {BUILD_PREFIX}
libdir -> {exec_prefix}
datadir -> {prefix}
STAGING_LIBDIR_NATIVE -> {STAGING_DIR_NATIVE libdir_native}
STAGING_DATADIR_NATIVE -> {STAGING_DIR_NATIVE datadir_native}
STAGING_BINDIR_TOOLCHAIN -> {bindir_native STAGING_DIR_NATIVE BASEPKG_TARGET_SYS}
B -> {WORKDIR LINUX_KERNEL_TYPE KMACHINE}
CC -> {HOST_PREFIX TOOLCHAIN_OPTIONS CCACHE HOST_CC_ARCH}
HOST_ARCH -> {TARGET_ARCH}
F77 -> {HOST_PREFIX TOOLCHAIN_OPTIONS CCACHE HOST_CC_ARCH}
TARGET_OS -> {GLIBCTARGETOS}
sbindir_native -> {prefix_native}
PKG_CONFIG_SYSROOT_DIR -> {STAGING_DIR BASE_PACKAGE_ARCH TARGET_VENDOR TARGET_OS}
UBOOT_ARCH -> {map_uboot_arch ARCH}
base_libdir -> {base_prefix}
TOOLCHAIN_OPTIONS -> {STAGING_DIR_TARGET}
STAGING_IDLDIR -> {STAGING_DATADIR}
BUILD_STRIP -> {BUILD_PREFIX}
BUILD_CXX -> {BUILD_CC_ARCH CCACHE BUILD_PREFIX}
STAGING_DIR -> {TMPDIR}
TARGET_PREFIX -> {TARGET_SYS}
PATH -> {sbindir_native STAGING_BINDIR_TOOLCHAIN STAGING_BINDIR_NATIVE base_bindir_native STAGING_DIR_NATIVE base_sbindir_native STAGING_BINDIR_CROSS}
ARCH -> {TARGET_ARCH map_kernel_arch}
BASEPKG_HOST_SYS -> {BASE_PACKAGE_ARCH HOST_VENDOR HOST_OS}
D -> {WORKDIR}
LD -> {HOST_PREFIX TOOLCHAIN_OPTIONS}
TARGET_CFLAGS -> {SELECTED_OPTIMIZATION TARGET_CPPFLAGS}
HOST_VENDOR -> {TARGET_VENDOR}
base_bindir -> {base_prefix}
HOST_OS -> {TARGET_OS}
STAGING_DIR_NATIVE -> {STAGING_DIR BUILD_SYS}
BUILD_CPP -> {BUILD_PREFIX}
BUILD_F77 -> {BUILD_CC_ARCH CCACHE BUILD_PREFIX}
bindir -> {exec_prefix}
BASE_PACKAGE_ARCH -> {HOST_ARCH}
PKG_CONFIG_LIBDIR -> {PKG_CONFIG_DIR}
map_kernel_arch -> {valid_archs}
do_deploy -> {SHELLCMDS CPPFLAGS PATCH_GET docdir KERNEL_VERSION sharedstatedir servicedir QPEDIR CXXFLAGS prefix palmtopdir CPP HOME PKG_CONFIG_DISABLE_UNINSTALLED mandir SHELL PKG_CONFIG_DIR infodir exec_prefix BUILD_CCLD libdir datadir OPIEDIR STRIP KERNEL_IMAGE_SYMLINK_NAME CFLAGS base_prefix palmqtdir CC BUILD_LDFLAGS RANLIB DEPLOYDIR F77 BUILD_CC PKG_CONFIG_SYSROOT_DIR base_sbindir CXX OBJDUMP localstatedir base_libdir STAGING_IDLDIR BUILD_STRIP KERNEL_IMAGETYPE UBOOT_ENTRYPOINT BUILD_CFLAGS OS CROSS_COMPILE BUILD_LD LOGNAME USER QTDIR PATH TARGET_LDFLAGS ARCH STAGING_SIPDIR PR LD BUILD_RANLIB PV base_bindir DISTRO_NAME BUILD_CPP BUILD_F77 KERNEL_IMAGE_BASE_NAME bindir D PKG_CONFIG_LIBDIR TERM QMAKE_MKSPEC_PATH MACHINE AS AR libexecdir PKG_CONFIG_PATH TARGET_CXXFLAGS DATETIME oldincludedir OBJCOPY BUILD_CXX UBOOT_ARCH LDFLAGS BUILD_CPPFLAGS MAKE CMDLINE_CONSOLE sysconfdir PWD includedir sbindir CCLD BUILD_CXXFLAGS TARGET_CPPFLAGS TARGET_CFLAGS BUILD_AR}
AR -> {HOST_PREFIX}
TARGET_LDFLAGS -> {ASNEEDED}
TARGET_CXXFLAGS -> {TARGET_CFLAGS}
DEPLOYDIR -> {WORKDIR PN}
WORKDIR -> {PF MULTIMACH_TARGET_SYS TMPDIR}
BUILD_CPPFLAGS -> {STAGING_INCDIR_NATIVE}
includedir -> {exec_prefix}
sbindir -> {exec_prefix}
CFLAGS -> {TARGET_CFLAGS}
BUILD_AR -> {BUILD_PREFIX}
STAGING_BINDIR_CROSS -> {STAGING_BINDIR}
}

--Boundary-00=_blLCNVjmWmiRer3--
