Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 932D9E004F2; Thu, 21 Aug 2014 15:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 678B0E0044A
	for <poky@yoctoproject.org>; Thu, 21 Aug 2014 15:16:49 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id et14so15281241pad.23
	for <poky@yoctoproject.org>; Thu, 21 Aug 2014 15:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=AimldTCT6IWfPcgZUVQMn0Usn12GExERVi4vLiQ2xGM=;
	b=WiQWf4hgiW5lXFC9oEgjhUqOnSAvq3epwvf4HSY91mQbHkLMjrF5TC98PwJC5DxySY
	esiAl3Dd5rTOycDU59uLS9SfCJS3xVU3aAL+rffCbypV2cy0V2gBPQotRBkCRaqOFuQ3
	fd6x9Udocja6ZHC2o8IqJ4XdhWCjsVBOHnOY2wHA20druaWmHBqL4pQnPRrwZ1R/6pqc
	FJTHve0GPxdXDfgDUEkIj/15xSCY6H3/hoeKmc/Pc8LCvYxVb3D/Uh4b/sjgs+9JN/V/
	s4COIdOa73ZKI964zv6Krwc3t2zvNrbUg0TNay2By1EiME3bGmAxb9csFZe9O5zq6Dwb
	yqFg==
X-Received: by 10.68.57.194 with SMTP id k2mr1455425pbq.67.1408659408819;
	Thu, 21 Aug 2014 15:16:48 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	pl10sm40431222pdb.27.2014.08.21.15.16.47 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 21 Aug 2014 15:16:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 21 Aug 2014 15:16:44 -0700
Message-Id: <1408659404-3006-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH v2] nettle: add nettle to tracking
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
X-List-Received-Date: Thu, 21 Aug 2014 22:16:54 -0000

add note on regarding nettle upgrade

V2: add missing '_pn'
  : more description.
Nettle version 3.0.0 breaks gnutls build do
to api changes. Updating to nettle 3.0 is on
gnutls roadmap
https://www.gitorious.org/gnutls/pages/Plan3_4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index a018803..c75d258 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -162,6 +162,8 @@ CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-modutils-initscripts = "n/a"
 RECIPE_NO_UPDATE_REASON_pn-mpeg2dec = "Why are we currently at 0.4.1?"
 RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
+CHECK_DATE_pn-nettle = "Aug 21, 2014"
+RECIPE_NO_UPDATE_REASON_pn-nettle = "3.0.0 breaks gnutls, api changes"
 RECIPE_UPSTREAM_VERSION_pn-ofono = "1.6"
 RECIPE_UPSTREAM_DATE_pn-ofono="Apr 20, 2012"
 CHECK_DATE_pn-ofono = "Aug 31, 2012"
-- 
1.9.1


