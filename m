Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B23E00524; Tue, 24 Jan 2017 05:04:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB364E003C1
	for <poky@yoctoproject.org>; Tue, 24 Jan 2017 05:04:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2017 05:04:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,278,1477983600"; d="scan'208";a="1098211592"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.2.20])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2017 05:04:16 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Tue, 24 Jan 2017 13:04:13 +0000
Message-Id: <20170124130413.24928-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jan 2017 13:04:22 -0000

Remove several old/untested distros from the list:
* poky-1.8 and poky-2.0 are no longer supported releases
* ubuntu-14.04 is an LTS but we plan to remove it from the
  project's autobuilder cluster as the kernel is old and
  it doesn't use systemd -- therefore this will no longer
  be tested.
* ubuntu-14.10 and ubuntu-15.10 are no longer supported
* fedora-23 and fedora-24 are EOL
* opensuse-13.2 is discontinued

Add opensuse-42.2, it's the openSUSE version we run on the Yocto
Project autobuilder cluster.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/distro/poky.conf | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8fa3914..94f2577 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -70,24 +70,17 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 CONNECTIVITY_CHECK_URIS ?= "https://www.example.com/"
 
 SANITY_TESTED_DISTROS ?= " \
-            poky-1.8 \n \
-            poky-2.0 \n \
             poky-2.1 \n \
             poky-2.2 \n \
-            ubuntu-14.04 \n \
-            ubuntu-14.10 \n \
             ubuntu-15.04 \n \
-            ubuntu-15.10 \n \
             ubuntu-16.04 \n \
             ubuntu-16.10 \n \
-            fedora-22 \n \
-            fedora-23 \n \
             fedora-24 \n \
             fedora-25 \n \
             centos-7 \n \
             debian-8 \n \
-            opensuse-13.2 \n \
             opensuse-42.1 \n \
+            opensuse-42.2 \n \
             "
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in 
-- 
2.9.3


