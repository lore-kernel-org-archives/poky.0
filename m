Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5ECC64C81003
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 08:59:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2010 06:59:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="686642534"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 13 Dec 2010 06:59:25 -0800
Message-Id: <cover.1292251971.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 13 Dec 2010 22:52:51 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/2][RFC] bitbake: optimize file parsing speed
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
X-List-Received-Date: Mon, 13 Dec 2010 14:59:26 -0000

Hi Richard,

This RFC/pull request aims to speed up the bb file parsing speed. 
Please help to review it, thanks!

We observed that the ??= operator costs a lot of cycles when parsing bb
files, this patchset implement the ??= in getVar() function. If the
normal getVar returns None, it will check the defaultval flag and
return its value.

Besides, 0001 patch also fixes a bug that if foo_OVERA[bar] = "x" and
foo is never set as a variable directly, the override is never expanded.

I slightly modified 0001 patch compared with the previous discussion
version. If simply copy the setVar logic into setVarFlag, I found
that variable "do_install_append_virtclass-native" will both exist in
self._special_values and self._seen_overrides, this is because when
setting "content" for "do_install_append_virtclass-native", the variable
will be recorded in self._special_values, and when setting "func" flag
for "do_install_append_virtclass-native", the variable will be recorded
in self._seen_overrides. This version of patch could fix the issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/parsefile
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/parsefile

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  bitbake: Make setVar a special case of setVarFlag
  bitbake: Change the way to implement ??= operator

 bitbake/lib/bb/data_smart.py |   63 ++++++++++++++++++++---------------------
 bitbake/lib/bb/parse/ast.py  |    7 ----
 2 files changed, 31 insertions(+), 39 deletions(-)


