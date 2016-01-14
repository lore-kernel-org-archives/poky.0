Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E179DE0086B; Thu, 14 Jan 2016 14:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C61E00833
	for <poky@yoctoproject.org>; Thu, 14 Jan 2016 14:25:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2016 14:25:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,296,1449561600"; d="scan'208";a="881619308"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2016 14:25:24 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jan 2016 16:27:04 -0600
Message-Id: <bae3519051fc355e6fdd7dc49eb80a100b56e1d2.1452808373.git.anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1452808370.git.anibal.limon@linux.intel.com>
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
In-Reply-To: <cover.1452808370.git.anibal.limon@linux.intel.com>
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, openembedded-core@lists.openembedded.org,
	georgex.l.musat@intel.com, tudor.florea@enea.com,
	benjamin.esquivel@intel.com
Subject: [PATCH 3/3] Update dev-manual to point to the new ptest-runner2.
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
X-List-Received-Date: Thu, 14 Jan 2016 22:25:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index dbf493a..767f51c 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -7488,8 +7488,8 @@
                 <title>Running ptest</title>
 
                 <para>
-                    The <filename>ptest-runner</filename> package installs a
-                    shell script that loops through all installed ptest test
+                    The <filename>ptest-runner2</filename> package installs a
+                    program that loops through all installed ptest test
                     suites and runs them in sequence.
                     Consequently, you might want to add this package to
                     your image.
-- 
2.1.4


