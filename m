Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE9BE016A0
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 09:33:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Oct 2013 09:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,508,1378882800"; d="scan'208";a="417825994"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.253])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2013 09:33:06 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 16 Oct 2013 09:33:06 -0700
Message-Id: <b997f4e74e2475af7834d234861aa482412a3ff8.1381941120.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1381941120.git.sgw@linux.intel.com>
References: <cover.1381941120.git.sgw@linux.intel.com>
In-Reply-To: <cover.1381941120.git.sgw@linux.intel.com>
References: <cover.1381941120.git.sgw@linux.intel.com>
Subject: [PATCH 2/2] package-regex: Tweak python-docutils so it works correctly
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
X-List-Received-Date: Wed, 16 Oct 2013 16:33:07 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 89cd366..da6e738 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -216,7 +216,7 @@ REGEX_URI_pn-psmisc = "http://sourceforge.net/projects/psmisc/files/psmisc/"
 REGEX_pn-psmisc = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/psmisc/files/psmisc/psmisc\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz/download\""
 REGEX_URI_pn-python-argparse = "https://code.google.com/p/argparse/downloads/list"
 REGEX_URI_pn-python-docutils = "http://sourceforge.net/projects/docutils/files/docutils/"
-REGEX_pn-python-docutils = "[hH][rR][eE][fF]=\"/projects/docutils/files/docutils/docutils\-(?P<pver>((\d+[\.\-_]*)+)).*/\""
+REGEX_pn-python-docutils = "[hH][rR][eE][fF]=\"/projects/docutils/files/docutils/(?P<pver>((\d+[\.\-_]*)+)).*/\""
 REGEX_URI_pn-python-pycurl = "http://pycurl.sourceforge.net/download/"
 REGEX_pn-python-pycurl = "[hH][rR][eE][fF]=\"pycurl-(?P<pver>((\d+[\.\-_]*)+)).tar.gz\""
 REGEX_URI_pn-python-scons = "http://sourceforge.net/projects/scons/files/scons/"
-- 
1.8.3.1


