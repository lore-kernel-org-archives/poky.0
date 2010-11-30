Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33E394C80BCF
	for <poky@pokylinux.org>; Tue, 30 Nov 2010 09:05:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2010 07:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,280,1288594800"; d="scan'208";a="862723107"
Received: from unknown (HELO helios.localnet) ([10.255.16.37])
	by fmsmga001.fm.intel.com with ESMTP; 30 Nov 2010 07:05:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Tue, 30 Nov 2010 15:05:41 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201011301505.42532.paul.eggleton@linux.intel.com>
Cc: scott.m.rifenbark@intel.com
Subject: Warning - don't use eCryptFS
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
X-List-Received-Date: Tue, 30 Nov 2010 15:05:48 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

FYI I recently had some fairly serious problems with poky and the "encrypted home directory" function in Ubuntu, which uses eCryptFS. Problems I experienced included:

  * pseudo-native failing to write an sstate package ("file name too long" - apparently eCryptFS is limited to ~140 characters due to design limitations)

  * ncurses-native failing at do_install (some kind of interference with libtool that caused it to write an invalid path to the libncurses.la file, I didn't track down the exact cause as it went away when I stopped using eCryptFS. Might be indirectly related to the name length limitation.)

Scott, could you please add a warning to the documentation not to use eCryptFS with poky? In particular, it should not be used to store TMPDIR and SSTATE_DIR.

I'll follow up soon with a patch that will do a sanity check on the file name length limit - this will catch any other weird file systems that might cause these kinds of issues.

Cheers,
Paul  

