Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBDD5E0085D; Wed, 15 Feb 2017 05:38:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C311AE0082E
	for <poky@yoctoproject.org>; Wed, 15 Feb 2017 05:38:16 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Feb 2017 05:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,166,1484035200"; d="scan'208";a="1095048852"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.92])
	by orsmga001.jf.intel.com with ESMTP; 15 Feb 2017 05:38:04 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Wed, 15 Feb 2017 13:38:00 +0000
Message-Id: <20170215133800.17329-1-joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [PATCH v2] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 15 Feb 2017 13:38:18 -0000

Remove several old/untested distros from the list:
* poky-1.8 and poky-2.0 are no longer supported releases
* ubuntu-14.04 is an LTS but we plan to remove it from the
  project's autobuilder cluster as the kernel is old and
  it doesn't use systemd -- therefore this will no longer
  be tested.
* ubuntu-14.10 and ubuntu-15.10 are no longer supported
* fedora-22 and fedora-23 are EOL
* opensuse-13.2 is discontinued

Add opensuse-42.2, it's the openSUSE version we run on the Yocto
Project autobuilder cluster.

The distro support plan is documented on the Yocto Project wiki:

https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan

they are easily summarised as:
- Fedora: most recent 2 releases
- Ubuntu: most recent LTS and latest release, unless they are the same
  in which case the most recent 2 releases
- CentOS: latest release
- openSUSE: latest release

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---

Changes since v1:

Update commit message to include more details about how supported distros
are chosen.

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


