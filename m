Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1275CE00853; Wed,  4 Mar 2015 05:03:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4798EE0076F
	for <poky@yoctoproject.org>; Wed,  4 Mar 2015 05:03:51 -0800 (PST)
Received: by wivz2 with SMTP id z2so11035208wiv.4
	for <poky@yoctoproject.org>; Wed, 04 Mar 2015 05:03:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=fogx0gJ6FrelWN1CBNsvWzOUPaLGkidgEAW0zIaABmM=;
	b=UBEjjifXTbsNcw8sPKPnBydZhMlusb5XEw1uRLmnCLjyMyABuIGhBNtPGzffw1amYJ
	ecIPznyjTHqRlUGNut9ZuYqU/VzX1HpHWGorMfjKYEgPjhIqa6R3kXDfO222p6e+8DDe
	tlrM4WOHTeBkWLsMsDs1lBhcv/1OuARXZH4w9XtBilvqYWCagtm8vk+wMmz6zkoNPTQc
	xOWpK87gj5e9YoYzKhoxl8X+jG0jmUYgD+/6kevBRf7QjA7qrE3Lf0KWzoaXGGmkCOwg
	nlDrEHiAcyaz6tmDvJ4t8eCCGwPkaEed6Dan49C/4HOTHxUKsTytCo+t14qLMAT93Ceb
	AuVw==
X-Gm-Message-State: ALoCoQlnCN2stf9FKwK/dvaVMre1G8iTApqw4CiRAkc422FY0OJQI8A32P8f4GALt8xfi3sTBLiP
X-Received: by 10.180.7.131 with SMTP id j3mr12717025wia.55.1425474230809;
	Wed, 04 Mar 2015 05:03:50 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id ub1sm5866305wjc.43.2015.03.04.05.03.49
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Mar 2015 05:03:49 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed,  4 Mar 2015 13:01:17 +0000
Message-Id: <1425474077-4709-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] README: expand the Where To Send Patches section
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
X-List-Received-Date: Wed, 04 Mar 2015 13:03:58 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README |   27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/README b/README
index 0a18c9c..76d7f68 100644
--- a/README
+++ b/README
@@ -30,20 +30,29 @@ For information about OpenEmbedded, see the OpenEmbedded website:
 Where to Send Patches
 =====================
 
-As Poky is an integration repository, patches against the various components
-should be sent to their respective upstreams.
+As Poky is an integration repository (built using a tool called combo-layer),
+patches against the various components should be sent to their respective
+upstreams:
 
 bitbake:
-    bitbake-devel@lists.openembedded.org
+    Git repository: http://git.openembedded.org/bitbake/
+    Mailing list: bitbake-devel@lists.openembedded.org
 
-meta-yocto:
+documentation:
+    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
+    Mailing list: yocto@yoctoproject.org
+
+meta-yocto(-bsp):
+    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
     poky@yoctoproject.org
 
-Most everything else should be sent to the OpenEmbedded Core mailing list.  If
-in doubt, check the oe-core git repository for the content you intend to modify.
+Everything else should be sent to the OpenEmbedded Core mailing list.  If in
+doubt, check the oe-core git repository for the content you intend to modify.
 Before sending, be sure the patches apply cleanly to the current oe-core git
 repository.
-    openembedded-core@lists.openembedded.org
 
-Note: The scripts directory should be treated with extra care as it is a mix
-      of oe-core and poky-specific files.
+    Git repository: http://git.openembedded.org/openembedded-core/
+    Mailing list: openembedded-core@lists.openembedded.org
+
+Note: The scripts directory should be treated with extra care as it is a mix of
+oe-core and poky-specific files.
-- 
1.7.10.4


