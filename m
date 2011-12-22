Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E36E00720
	for <poky@yoctoproject.org>; Thu, 22 Dec 2011 11:02:36 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Dec 2011 11:02:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="105196210"
Received: from unknown (HELO [10.255.12.90]) ([10.255.12.90])
	by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2011 11:02:35 -0800
Message-ID: <4EF37ECB.8020603@linux.intel.com>
Date: Thu, 22 Dec 2011 11:02:35 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Edison 1.1.1 Status
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
X-List-Received-Date: Thu, 22 Dec 2011 19:02:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

Just a quick update on where we are with 1.1.1, last night we built 
1.1.1 on the autobuilder to see where things where we found the 
following failures. While it looks pretty bad at first, it's not that 
bad. There are 4 related to dependency and ordering issues, an ICE on 
beagleboard qt4, and the meta-toolchain-gmae NATIVESDK failure.

Also Autobuild itself reported wrong branch on waterfall page, but built 
josh/edison correctly - Beth will address this issue.

qemupcc (LSB) - coreutils dependency on libcap
  - disable libcap (and ls --color)
  OR
  - add libcap to DEPENDS for coreutils

qemux86-64 (LSB) - "which" build fails libiberty dependency
  - Richard has a patch for this one to disable libiberty

qemuarm - libzypp dependecny on binutils' ansidecl.h
Routerstation Pro  - Kernel dependency on binutils' bfd.h
  - Both of these need to ensure bintuils is completely installed in
    sysroot before being build not sure if that should be by DEPENDS or
    some other mechanism (possibly due to sstate ordering).


Beageboard
qt4-x11-free - ICE
  painting/qdrawhelper.cpp:1229:1: error: insn does not satisfy its 
constraints:
| (insn 2860 2859 951 57 (set (mem/c:V4SI (plus:SI (reg:SI 12 ip)
|                 (const_int -140 [0xffffffffffffff74])) [66 %sfp+-16424 
S16 A64])
|         (reg:V4SI 0 r0)) 
/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/lib/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.2/include/arm_neon.h:5346 
746 {*neon_movv4si}
|      (nil))
| painting/qdrawhelper.cpp:1229:1: internal compiler error: in 
reload_cse_simplify_operands, at postreload.c:403
| Please submit a full bug report,
| with preprocessed source if appropriate.

Maybe fixed by the following commit, need to here from Khem or Nitin:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7022a8f8045bdf82b9209b8cd62fb09c4a7a24f8

ALL - meta-toolchain-gmae
| Manifest: 
/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/install/install.manifest
| mv: cannot stat 
`/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-ppc/build/build/tmp/work/ppc603e-poky-linux/meta-toolchain-gmae-1.0-r6/sdk/image/var/lib/rpm/*': 
No such file or directory
NOTE: package meta-toolchain-gmae-1.0-r6: task do_populate_sdk: Failed


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


