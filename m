Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDA92E008CE; Wed,  4 Mar 2015 05:04:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5726FE008CA
	for <poky@yoctoproject.org>; Wed,  4 Mar 2015 05:04:26 -0800 (PST)
Received: by wghn12 with SMTP id n12so46600337wgh.1
	for <poky@yoctoproject.org>; Wed, 04 Mar 2015 05:04:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=mGqC+OK/C79vMGSx5K7LHXJP3wfsLfFlI8x4VjSjAOo=;
	b=aYH3JdIdEA6OweP79xQ0p14Nyk1sibFgTemk/fZM2SsT9T5AvKJ3rLMr+ecPPd+Mb6
	0ZyfO8bRZBg3UDc3QyglEoZ7/6CcoqDmDH5kvcHH9/k74CMZdQjZhcivnQZE6o7gnKI4
	c3wF6RxLxqSuqk4Njy7PdGFH0E6f5h79965+r0yoOlPBAMHTGMUgYDyKooREwwbiUbRV
	Zlvcoj0chFMYrKNUSGqqWk5dn7T/pQYKOaDOuCuStvQpCdWT0e+AE35AsRoXrQQHsr7+
	836SkaHdhAXm269sZPC22hFtBT0JJNy7iNcbEsUwA7JyK7TegmdTKouuA9hPz5XTWwYn
	kL5g==
X-Gm-Message-State: ALoCoQnSY4FwGvvLonW50Y5aTYP1jh0KbNxqRzVsAjZTcLoSscNScD4pDfAyyywKSO5+CrSUHpSl
X-Received: by 10.180.90.166 with SMTP id bx6mr12237383wib.65.1425474265027;
	Wed, 04 Mar 2015 05:04:25 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id gz3sm7052322wib.1.2015.03.04.05.04.23
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Mar 2015 05:04:24 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed,  4 Mar 2015 13:01:53 +0000
Message-Id: <1425474113-4860-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH][V2] README: expand the Where To Send Patches section
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
X-List-Received-Date: Wed, 04 Mar 2015 13:04:27 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 README |   29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/README b/README
index 0a18c9c..2449309 100644
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
-    poky@yoctoproject.org
+documentation:
+    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
+    Mailing list: yocto@yoctoproject.org
 
-Most everything else should be sent to the OpenEmbedded Core mailing list.  If
-in doubt, check the oe-core git repository for the content you intend to modify.
+meta-yocto(-bsp):
+    Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
+    Mailing list: poky@yoctoproject.org
+
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


