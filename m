Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9A264C80A74
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 10:34:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Dec 2010 08:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,294,1288594800"; d="scan'208";a="580284997"
Received: from unknown (HELO helios.localnet) ([10.255.16.36])
	by orsmga002.jf.intel.com with ESMTP; 03 Dec 2010 08:34:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 3 Dec 2010 16:34:55 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201012031634.56033.paul.eggleton@linux.intel.com>
Subject: sstate status
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
X-List-Received-Date: Fri, 03 Dec 2010 16:35:00 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

I've been doing some tests with sstate, and I've managed to get to a stage where I can share the SSTATE_DIR between my two machines (one running Fedora 14 and the other Kubuntu 10.10) and almost get a successful build from a clean TMPDIR. My last test got to poky-image-minimal.do_rootfs and then failed due to some kind of package dependency issue:

--------- snip ---------
| Processing rpm...
| Processing zypper...
| error: Failed dependencies:
|       elfutils >= 0.148 is needed by rpm-5.1.10-r7.i586
|       libaugeas0 >= 0.7.3 is needed by zypper-1.4.7+git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
| ERROR: Task failed: ('function do_rootfs failed', '/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6874')
--------- snip ---------

A "bitbake -c clean augeas elfutils" and then "bitbake poky-image-minimal" again went through OK (and built the aforementioned recipes from sstate) , so I'm not sure what went wrong here.

My current state of work is in the paule/sstate contrib branch, which is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can move this towards master the better, then we can get some wider testing.

FYI Joshua has made bug #507 into a tracking bug for current sstate issues:
http://bugzilla.pokylinux.org/show_bug.cgi?id=507

Cheers,
Paul

