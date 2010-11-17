Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A2994C80A74
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 22:47:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2010 20:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="574578064"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 20:47:06 -0800
Message-Id: <cover.1289969353.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Wed, 17 Nov 2010 12:49:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] [PULL] bitbake: optimize the file parsing speed
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
X-List-Received-Date: Wed, 17 Nov 2010 04:47:08 -0000

Hi Richard and Saul,

This patch is to optimize the file parsing speed. Please help to review
and pull. Thanks!

From the profiling result, we found that generate_dependencies()
occupies a lot of time where the following code will be run when
parsing each bb file.

keys = set(key for key in d.keys() if not key.startswith("__"))
shelldeps = set(key for key in keys if d.getVarFlag(key, "export") and not d.getVarFlag(key, "unexport"))

To optimize the code, main thought is to build the data cache for
generate_dependencies() on hand, and later each time when parsing the
bb file, we do not need to build them again and again.

Here I used "bitbake -p -P" to measure the file parsing time.

Each time before testing, we will do "touch conf/local.conf" to ensure
that all the 846 files are re-parsed.

Here are the test results:

Before optimization: 
Round 1: 74.980s  (deprecated)
Round 2: 60.281s
Round 3: 59.824s
Round 4: 60.771s
--------------------
Average: 60.292s


After optimization:
Round 1: 45.003s  (deprecated)
Round 2: 33.063s
Round 3: 32.991s
Round 4: 32.043s
--------------------
Average: 32.699s

For both cases, the first time result is a big higher than later, I think
it is due to cold cache, so here I deprecated it.

For the rest three rounds, I calculated the average time, and we can see
the optimization could gain ~50% parsing time.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/perf
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/perf

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  bitbake: optimize file parsing speed

 bitbake/lib/bb/cooker.py |    2 ++
 bitbake/lib/bb/data.py   |   11 ++++++-----
 2 files changed, 8 insertions(+), 5 deletions(-)


