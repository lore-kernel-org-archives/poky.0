Return-Path: <lei.mei@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33A564C806DA
	for <poky@yoctoproject.org>; Mon, 16 May 2011 08:14:10 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 06:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,374,1301900400"; 
   d="scan'208";a="2262989"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost.localdomain)
	([10.239.47.161])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2011 06:14:09 -0700
From: Mei Lei <lei.mei@intel.com>
To: poky@yoctoproject.org
Date: Mon, 16 May 2011 21:19:44 +0800
Message-Id: <cover.1305548886.git.lei.mei@intel.com>
X-Mailer: git-send-email 1.6.3.3
Subject: [PATCH 0/1] Add a new task and fix some bugs in distro_check.py
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
X-List-Received-Date: Mon, 16 May 2011 13:14:10 -0000

Hi Saul,
	As Josh's comments, I have revised this patch, please review it.
	For the date issue, I can't find the same issue in my and other PRC team members' mailbox. For ruling out other potential causes, I cloned a new tree to rebase my patch, then generate the pull request mail again, hope this issue could disappear.

Thanks
Lei


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/checklicense
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/checklicense

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  Add a new task checklicense and fix some bugs in distro_check.py

 meta/classes/distrodata.bbclass |  177 ++++++++++++++++++++++-----------------
 meta/lib/oe/distro_check.py     |   27 ++++--
 2 files changed, 119 insertions(+), 85 deletions(-)


