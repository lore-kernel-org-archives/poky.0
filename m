Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FA484C804BD
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 15:20:33 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Jun 2011 13:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,396,1304319600"; d="scan'208";a="16069018"
Received: from doubt.jf.intel.com (HELO [10.7.199.145]) ([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 20 Jun 2011 13:20:32 -0700
Message-ID: <4DFFAB8C.30905@linux.intel.com>
Date: Mon, 20 Jun 2011 13:20:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: eggdbus build failure in master
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
X-List-Received-Date: Mon, 20 Jun 2011 20:20:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm seeing a consistent eggdbus build failure that seems to be related
to the perl-native relocation. I've cleanall'd autoconf and automake,
native and target versions. The failure persists.

Anyone have any ideas on how to get this building? I'll start a clean
build in another directory for now.

OE Build Configuration:
BB_VERSION        = "1.13.1"
METADATA_BRANCH   = "master"
METADATA_REVISION = "ac06a5faa456b1e5b8db52911d3dc6cb9bca6e0c"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110620"
TARGET_FPU        = "soft"


ERROR: Logfile of failure stored in:
/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/temp/log.do_compile.37035
Log data follows:
| NOTE: make
| make  all-recursive
| make[1]: Entering directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6'
| Making all in src
| make[2]: Entering directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6/src'
| Making all in eggdbus
| make[3]: Entering directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6/src/eggdbus'
| glib-genmarshal eggdbusmarshal.list --prefix=eggdbus_marshal --header
> eggdbusmarshal.h
| echo "#include \"eggdbusmarshal.h\"" > eggdbusmarshal.c &&
glib-genmarshal eggdbusmarshal.list --prefix=eggdbus_marshal --body >>
eggdbusmarshal.c
| ( top_builddir=`cd ../.. && pwd`; \
|         cd . && glib-mkenums --template eggdbusenumtypes.h.template
eggdbusinterface.h eggdbusconnection.h eggdbuserror.h eggdbusmessage.h
) > \
|           eggdbusenumtypes.h.tmp && mv eggdbusenumtypes.h.tmp
eggdbusenumtypes.h
| /bin/sh:
/vol/1/dvhart/poky.git/build-beagleboard/tmp/sysroots/x86_64-linux/usr/bin/glib-mkenums:
/vol/1/dvhart/poky.git/build-beagleboard/tmp/sysroots/x86_64-linux/usr/bin/pe:
bad interpreter: No such file or directory
| make[3]: *** [eggdbusenumtypes.h] Error 126
| make[3]: Leaving directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6/src/eggdbus'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6/src'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/eggdbus-0.6'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/temp/log.do_compile.37035
for further information)
| ERROR: Function 'do_compile' failed (see
/vol/1/dvhart/poky.git/build-beagleboard/tmp/work/x86_64-linux/eggdbus-native-0.6-r1/temp/log.do_compile.37035
for further information)
NOTE: package eggdbus-native-0.6-r1: task do_compile: Failed
ERROR: Task 3556
(virtual:native:/home/dvhart/data/poky.git/meta/recipes-core/eggdbus/eggdbus_0.6.bb,
do_compile) failed with exit code '1'

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

