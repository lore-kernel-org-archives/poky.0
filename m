Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3796E00785
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:40 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBAFBclC006967
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:38 -0800 (PST)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Dec 2013 07:11:38 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Dec 2013 10:11:32 -0500
Message-ID: <7b2d12afb62b725bd696d6994e5f1fa9c354b936.1386686531.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1386686531.git.liezhi.yang@windriver.com>
References: <cover.1386686531.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/3] [dora] package-regex: Tweak python-docutils so it works correctly
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
X-List-Received-Date: Tue, 10 Dec 2013 15:11:41 -0000
Content-Type: text/plain

From: Saul Wold <sgw@linux.intel.com>

(From meta-yocto master rev: 8bd33820b4d1944a9f7730f8e2676d0d45e1cd0b)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |    2 +-
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
1.7.10.4


