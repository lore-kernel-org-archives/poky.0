Return-Path: <Sen.Zhang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D95D5E01506
	for <poky@yoctoproject.org>; Wed,  5 Jun 2013 00:26:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r557QoZD018490
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 5 Jun 2013 00:26:50 -0700 (PDT)
Received: from jesse-wrs-desktop.corp.ad.wrs.com (128.224.162.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Wed, 5 Jun 2013 00:26:48 -0700
From: Jesse Zhang <sen.zhang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 5 Jun 2013 15:29:11 +0800
Message-ID: <685ca7c686ae03be5a9cc52153c14551098ad13a.1370417284.git.sen.zhang@windriver.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1370417284.git.sen.zhang@windriver.com>
References: <cover.1370417284.git.sen.zhang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] dev-manual: fix instructions for enabling ptest
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
X-List-Received-Date: Wed, 05 Jun 2013 07:26:50 -0000
Content-Type: text/plain

The IMAGE_FEATURE and DISTRO_FEATURE are exchanged.

Signed-off-by: Jesse Zhang <sen.zhang@windriver.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index ebd12d7..1cf6969 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3619,8 +3619,8 @@
                     which is found in the
                     <link linkend='build-directory'>Build Directory</link>:
                     <literallayout class='monospaced'>
-     EXTRA_IMAGE_FEATURES += "ptest"
-     DISTRO_FEATURES_append = " ptest-pkgs"
+     DISTRO_FEATURES_append = " ptest"
+     EXTRA_IMAGE_FEATURES += "ptest-pkgs"
                     </literallayout>
                     Once your build is complete, the ptest files are installed
                     into the <filename>/usr/lib/&lt;package&gt;/ptest</filename>
-- 
1.7.11.7


