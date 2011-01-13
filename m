Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6119C4C811DD
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 13:55:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Jan 2011 11:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,319,1291622400"; d="scan'208";a="592724092"
Received: from unknown (HELO localhost) ([10.255.14.43])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 11:55:19 -0800
Message-Id: <cover.1294944942.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 13 Jan 2011 12:55:42 -0600
Date: Thu, 13 Jan 2011 13:55:17 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Add systemtap package
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
X-List-Received-Date: Thu, 13 Jan 2011 19:55:33 -0000

Add systemtap, one of the tracing/profiling tools mentioned in the
Yocto v1.0 tracing/profiling tools list posted here:

https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html

This patch adds the recipe for systemtap support for the architectures
that I was able to get working and test - basically x86, x86-64,
qemux86, and qemuppc (arm (tried qemuarm) apparently needs some work
upstream, and mips isn't supported).

There is an accompanying kernel config patch that's also needed for
systemtap to work.

In addition to the systemtap recipe and kernel options posted here,
there's also a small amount of setup needed on the host system in
order to run systemtap scripts on a target system - basically,
installing systemtap on the host.  I also hacked up a shell script
('crosstap') to make it easier to compile and execute systemtap
scripts on a target system - if you want to use that, you should
replace the variables in that script with appropriate values for your
system (I actually started out having the build system generate the
script, but decided to do that later if it ended up being desirable).

Detailed instructions on the setup as well as the 'crosstap' script
can be found in a new section on the wiki I've added for tracing and
profiling to the Yocto wiki:

https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling#systemtap

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/systemtap.v3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/systemtap.v3

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  systemtap: new package

 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 meta/recipes-kernel/systemtap/systemtap_git.bb     |   28 ++++++++++++++++++++
 3 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/systemtap/systemtap_git.bb


