Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351FBE01400
	for <poky@yoctoproject.org>; Wed, 18 Apr 2012 03:03:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2012 03:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="133857873"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.88])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2012 03:03:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Apr 2012 11:03:33 +0100
Message-Id: <91ad8e774b2134e0ab7531279939b9645f028a17.1334743086.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334743086.git.paul.eggleton@linux.intel.com>
References: <cover.1334743086.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1334743086.git.paul.eggleton@linux.intel.com>
References: <cover.1334743086.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] conf/distro/poky.conf: set SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 18 Apr 2012 10:03:37 -0000

Specify a list of tested host distributions, based on those tested prior
to the Yocto Project 1.2 release. This will enable a warning to be
printed upon starting bitbake if the host distribution is not one on the
list.

Note: this warning is intended to help new users; if you are receiving
this warning and wish to disable it, just add SANITY_TESTED_DISTROS = ""
to your local.conf.

Fixes [YOCTO #1096].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e51ccdf..cd5c546 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -65,6 +65,22 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
                           https://eula-downloads.yoctoproject.org/index.php \
                           http://bugzilla.yoctoproject.org/report.cgi"
 
+SANITY_TESTED_DISTROS ?= " \
+            Yocto (Built by Poky 7.0) 1.2 \n \
+            Ubuntu 10.04.4 LTS \n \
+            Ubuntu 11.10 \n \
+            Ubuntu 12.04 \n \
+            Fedora release 15 (Lovelock) \n \
+            Fedora release 16 (Verne) \n \
+            Fedora release 17 (Beefy Miracle) \n \
+            CentOS release 5.6 (Final) \n \
+            CentOS release 5.7 (Final) \n \
+            CentOS release 6.2 (Final) \n \
+            Debian GNU/Linux 6.0.4 (squeeze) \n \
+            openSUSE 11.4 \n \
+            openSUSE 12.1 \n \
+	    "
+
 # Default hash policy for distro
 BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
 #
-- 
1.7.5.4


