Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DD5E00C6E; Mon,  4 Jan 2016 10:27:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4705E00908
	for <poky@yoctoproject.org>; Mon,  4 Jan 2016 10:27:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jan 2016 10:27:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,521,1444719600"; d="scan'208";a="874414299"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jan 2016 10:27:44 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: openembedded-core@lists.openembedded.org
Date: Mon,  4 Jan 2016 12:29:16 -0600
Message-Id: <1451932157-3190-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1451932157-3190-1-git-send-email-anibal.limon@linux.intel.com>
References: <1451932157-3190-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, georgex.l.musat@intel.com,
	poky@yoctoproject.org, benjamin.esquivel@intel.com
Subject: [PATCH v3 2/3] ptest-runner: Add a recipe for install ptest-runner 2.0.
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
X-List-Received-Date: Mon, 04 Jan 2016 18:27:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #8021]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../ptest-runner/ptest-runner_2.0.bb               | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 meta/recipes-support/ptest-runner/ptest-runner_2.0.bb

diff --git a/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb b/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb
new file mode 100644
index 0000000..0d0037e
--- /dev/null
+++ b/meta/recipes-support/ptest-runner/ptest-runner_2.0.bb
@@ -0,0 +1,27 @@
+SUMMARY = "A python script to run all installed ptests"
+
+DESCRIPTION = "The ptest-runner package installs a ptest-runner \
+python script which loops through all installed ptest test suites and \
+runs them in sequence."
+
+HOMEPAGE = "https://wiki.yoctoproject.org/wiki/Ptest"
+SRC_URI += "file://ptest-runner_2.0.py"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.GPLv2;md5=751419260aa954499f7abaabaa882bbe"
+
+INHIBIT_DEFAULT_DEPS = "1"
+RDEPENDS_${PN} = "python python-fcntl python-argparse python-logging python-datetime \
+                  python-subprocess"
+
+S = "${WORKDIR}"
+
+do_install () {
+    install -D -m 0755 ${WORKDIR}/ptest-runner_2.0.py ${D}${bindir}/ptest-runner
+}
+
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_build[noexec] = "1"
-- 
2.1.4


