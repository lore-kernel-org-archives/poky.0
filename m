Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FBE5E00F1F; Mon, 12 Sep 2016 01:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B6EE00F11
	for <poky@yoctoproject.org>; Mon, 12 Sep 2016 01:34:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8C8YPkQ031601
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Mon, 12 Sep 2016 01:34:26 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Sep 2016 01:34:22 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 12 Sep 2016 01:34:20 -0700
Message-ID: <029e0c966e4c43d752a0aa47b4dd195298f404d4.1473669203.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <cover.1473669203.git.liezhi.yang@windriver.com>
References: <cover.1473669203.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] documentation: cleanup d.getVar(var, 1)
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
X-List-Received-Date: Mon, 12 Sep 2016 08:34:34 -0000
Content-Type: text/plain

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index bd11062..f06c9a8 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1722,7 +1722,7 @@
                         <filename>${@<replaceable>python_code</replaceable>}</filename>
                         syntax for the variable assignment:
                         <literallayout class='monospaced'>
-     SRC_URI = "ftp://ftp.info-zip.org/pub/infozip/src/zip${@d.getVar('PV',1).replace('.', '')}.tgz
+     SRC_URI = "ftp://ftp.info-zip.org/pub/infozip/src/zip${@d.getVar('PV', True).replace('.', '')}.tgz
                         </literallayout>
                         </para></listitem>
                     <listitem><para><emphasis>Shell Function Syntax:</emphasis>
-- 
2.9.0


