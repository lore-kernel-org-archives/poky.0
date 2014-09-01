Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B71DE0082D; Sun, 31 Aug 2014 21:07:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8990E00824
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:06 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id r10so5077767pdi.36
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=DhRRTjtiivhzb0Ne0e8pi0SaLgoHknVkE7Sz7i0/4x8=;
	b=awPeFobl8coRXHrdRspC+dhSfGd5MVizS41sBQEM0kdlu1uspzs7qEsUbMv3Om09Mp
	pLTFphUWwMFvrORqk9Tllp0WYmRr8g1esoyd1jZK7zlxKGY/aRxYKCxtF81iwEgO2a9X
	oiG9iJ26P2KRSq/ZIxiNMjGmyh1Tf8w5EuhEAdghjZrIDRv6B2y47btJR0DDIbl2YOI6
	uK/AnckuHPMLWO31ls8CIwPRzd5Al1AxEFWkux9SP7bLTrfBgi0cVxRW3CzUJ2kDvrZd
	FC6H5bammqJ/WV2GS9yGLoZ75HR8beB1hw/VfBJNoYubkOddRUK8EXNdMqYADO/bpkf/
	RQCg==
X-Received: by 10.68.175.99 with SMTP id bz3mr35873549pbc.112.1409544425803;
	Sun, 31 Aug 2014 21:07:05 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id aq1sm6556805pbc.96.2014.08.31.21.07.03
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 31 Aug 2014 21:07:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 31 Aug 2014 21:06:56 -0700
Message-Id: <1409544416-14993-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1409544416-14993-1-git-send-email-akuster808@gmail.com>
References: <1409544416-14993-1-git-send-email-akuster808@gmail.com>
Subject: [PATCH 2/2] upstream_tracking: add lz4 version and date info for package
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
X-List-Received-Date: Mon, 01 Sep 2014 04:07:09 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index c75d258..350326b 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -152,6 +152,9 @@ CHECK_DATE_pn-linuxdoc-tools-native = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
 CHECK_DATE_pn-lsof = "Jul 30, 2014"
+RECIPE_UPSTREAM_VERSION_pn-lz4 = "122"
+RECIPE_UPSTREAM_DATE_pn-lz4 = "Aug 28, 2014"
+CHECK_DATE_pn-lz4 = "Aug 30, 2014"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-- 
1.9.1


