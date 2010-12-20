Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BA284C811BA
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:00:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2010 10:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="688992059"
Received: from unknown (HELO [10.255.14.34]) ([10.255.14.34])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 10:00:33 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 20 Dec 2010 12:00:48 -0600
Message-ID: <1292868048.2104.526.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 0/1] Add meta-crownbay update for master
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
X-List-Received-Date: Mon, 20 Dec 2010 18:00:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Adds updates to the meta-crownbay to make it buildable with master.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: meta-crownbay/master
  Browse: http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=meta-crownbay/master

Tom Zanussi (1):
  meta-crownbay: upgrade to master

 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf           |    6 +++---
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    7 -------
 .../linux/linux-yocto-stable_git.bbappend          |    7 +++++++
 4 files changed, 13 insertions(+), 13 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend




