Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D01F4C811AA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 10:30:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 08:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,374,1291622400"; d="scan'208";a="596308063"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 08:30:36 -0800
Message-ID: <4D3EFAAB.6000605@linux.intel.com>
Date: Tue, 25 Jan 2011 08:30:35 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Distro Pull Request
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
X-List-Received-Date: Tue, 25 Jan 2011 16:30:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

This has a number of important fixes for the -live image and psuedo,
along with some lsb support infrastructe.


-- Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Dongxiao Xu (1):
   kernel.bbclass: Fix sstate-output directory

Jingdong Lu (4):
   cups: Add cups
   liburi-perl: Rename liburi-perl
   base-files: Add to make some directories needed by LSB.
   task-poky-lsb: add relevant packages into task-poky-lsb

Mark Hatle (1):
   pseudo: Revert msg cache changes

  meta/classes/kernel.bbclass                        |    2 +
  .../conf/distro/include/poky-default-revisions.inc |    2 +-
  meta/recipes-core/base-files/base-files_3.0.14.bb  |   18 +-
  .../perl/{liburi-perl_1.56 => liburi-perl_1.56.bb} |    0
  .../pseudo/pseudo/pseudo-exec-crash.patch          |   20 -
  meta/recipes-devtools/pseudo/pseudo_git.bb         |    3 +-
  .../cups/cups-1.4.4/configure.patch                |  117 +++
  .../cups/cups-1.4.4/skip_tools.patch               |   51 +
  .../cups/cups-1.4.4/use_echo_only_in_init.patch    |   11 +
  meta/recipes-extended/cups/cups14.inc              |   86 ++
  meta/recipes-extended/cups/cups_1.4.4.bb           |   17 +
  meta/recipes-extended/tasks/task-poky-lsb.bb       |  980 
+++++++++++++++++++-
  meta/recipes-kernel/linux/linux-omap3-pm_git.bb    |    2 +-
  .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
  meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
  15 files changed, 1284 insertions(+), 29 deletions(-)
  rename meta/recipes-devtools/perl/{liburi-perl_1.56 => 
liburi-perl_1.56.bb} (100%)
  delete mode 100644 
meta/recipes-devtools/pseudo/pseudo/pseudo-exec-crash.patch
  create mode 100644 meta/recipes-extended/cups/cups-1.4.4/configure.patch
  create mode 100644 meta/recipes-extended/cups/cups-1.4.4/skip_tools.patch
  create mode 100644 
meta/recipes-extended/cups/cups-1.4.4/use_echo_only_in_init.patch
  create mode 100644 meta/recipes-extended/cups/cups14.inc
  create mode 100644 meta/recipes-extended/cups/cups_1.4.4.bb

     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


