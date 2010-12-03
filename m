Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA2774C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2010 00:43:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="632708314"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2010 00:43:20 -0800
Message-Id: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 16:50:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/19][PULL] Update LIC_FILES_CHKSUM info for local file recipes
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:22 -0000

Hi Saul,

This pull request update LIC_FILES_CHKSUM info for local file recipes,
please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (19):
  run-postinsts: update LIC_FILES_CHKSUM info
  task-poky: update LIC_FILES_CHKSUM info
  task-poky-lsb: update LIC_FILES_CHKSUM info
  task-poky-sdk: update LIC_FILES_CHKSUM info
  formfactor: update LIC_FILES_CHKSUM info
  task-poky-x11-sato: update LIC_FILES_CHKSUM info
  task-base: update LIC_FILES_CHKSUM info
  task-poky-tools: update LIC_FILES_CHKSUM info
  task-poky-standalone-gmae-sdk-target: update LIC_FILES_CHKSUM info
  task-poky-sdk-gmae: update LIC_FILES_CHKSUM info
  task-poky-basic: update LIC_FILES_CHKSUM info
  telepathy-glib: update LIC_FILES_CHKSUM info
  task-poky-apps-x11-pimlico: update LIC_FILES_CHKSUM info
  task-poky-standalone-sdk-target: update LIC_FILES_CHKSUM info
  task-poky-qt: update LIC_FILES_CHKSUM info
  ppp-dialin: update LIC_FILES_CHKSUM info
  task-poky-nfs: update LIC_FILES_CHKSUM info
  task-poky-boot: update LIC_FILES_CHKSUM info
  bluez-hcidump: update LICENSE and LIC_FILES_CHKSUM info

 meta/recipes-bsp/formfactor/formfactor_0.0.bb      |    2 ++
 .../bluez/bluez-hcidump_1.42.bb                    |    4 +++-
 .../ppp-dialin/ppp-dialin_0.1.bb                   |    2 ++
 .../telepathy/telepathy-glib_0.13.5.bb             |    2 +-
 meta/recipes-core/tasks/task-base.bb               |    2 ++
 meta/recipes-core/tasks/task-poky-boot.bb          |    2 ++
 meta/recipes-core/tasks/task-poky-nfs.bb           |    4 +++-
 meta/recipes-core/tasks/task-poky-sdk.bb           |    2 ++
 .../tasks/task-poky-standalone-sdk-target.bb       |    2 ++
 meta/recipes-core/tasks/task-poky-tools.bb         |    2 ++
 meta/recipes-devtools/dpkg/run-postinsts_1.0.bb    |    2 ++
 meta/recipes-extended/tasks/task-poky-basic.bb     |    2 ++
 meta/recipes-extended/tasks/task-poky-lsb.bb       |    2 ++
 meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    2 ++
 .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    2 ++
 meta/recipes-qt/tasks/task-poky-qt.bb              |    2 ++
 .../tasks/task-poky-apps-x11-pimlico.bb            |    2 ++
 meta/recipes-sato/tasks/task-poky-x11-sato.bb      |    2 ++
 meta/recipes-sato/tasks/task-poky.bb               |    2 ++
 19 files changed, 39 insertions(+), 3 deletions(-)


