Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 877B0E008D3; Fri, 28 Nov 2014 19:19:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47746E00478
	for <poky@yoctoproject.org>; Fri, 28 Nov 2014 19:19:20 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id bj1so7664311pad.23
	for <poky@yoctoproject.org>; Fri, 28 Nov 2014 19:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=3qpxjKXQEhD1bxknpG0maWtfjj0KVQ8CimCKp+XDJMI=;
	b=drR1nHsWh5Bl0hVZrzCf2nVSb7sSFPUgrEIxbZ+QG5gfGykL6oSYGMCDz0J91xb/jH
	JCm5sju5+qRUGkza9NyDt+fj4Dm0hjBHhky053C5/BL6J3T3b7FE04vI5S7pI1dnY6Tx
	54emZMYuvgaeVJDFitB47EyrBcRT1QR0oelJ9rGpdJieOKgSVaTrQv9KYR6EXkTcY0kw
	TQA4o5iXTf1v9Q+IbNxHoSzXifqBYj0WJ+4g1WezYSNP2HR9plBVdkai68UOPi/IIWij
	WC3A+Te8gHCBQnxha95kUlD9eYGjg6clv5M8x3ARIno5XQcluSONs00xReG/y27/4LzO
	yVrA==
X-Received: by 10.66.242.238 with SMTP id wt14mr78292994pac.60.1417231159839; 
	Fri, 28 Nov 2014 19:19:19 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	sq2sm11090114pbc.73.2014.11.28.19.19.17 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 28 Nov 2014 19:19:18 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Fri, 28 Nov 2014 19:19:05 -0800
Message-Id: <1417231145-2465-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] upstream tracking: update lz4 version
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
X-List-Received-Date: Sat, 29 Nov 2014 03:19:28 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 350326b..29b4598 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -152,9 +152,9 @@ CHECK_DATE_pn-linuxdoc-tools-native = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
 CHECK_DATE_pn-lsof = "Jul 30, 2014"
-RECIPE_UPSTREAM_VERSION_pn-lz4 = "122"
+RECIPE_UPSTREAM_VERSION_pn-lz4 = "123"
 RECIPE_UPSTREAM_DATE_pn-lz4 = "Aug 28, 2014"
-CHECK_DATE_pn-lz4 = "Aug 30, 2014"
+CHECK_DATE_pn-lz4 = "Oct 26, 2014"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-- 
1.9.1


