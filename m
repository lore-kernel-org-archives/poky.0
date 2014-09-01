Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F4E3E0082F; Sun, 31 Aug 2014 21:07:12 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2408CE0082A
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:03 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id bj1so11125086pad.4
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=LrV7WGFnxUeJ5332UPET4vzLL6ZMAh5aATtrHiqz2eI=;
	b=miw2+Q3L/eJGlU7jFEVxb2ilZ6revyRnfdUhnQxdE7/tlo8C8cS7iuiaSIOBjqP9FF
	0Dx8aGY0E0ou2mXpMCk3IGRSovC9Z5vI0304A/fMjOWlTIJybntkCLBpNpNSETKk90sm
	w98igO9U+/JO/6L/RbmmTMBbs8XWTlO3jZT8lYGid2pb6MlkWTAZPcce00iWmotJQwDe
	/ywtf2puw7wUWs5gcOIL5LOtx21cnvprNFctjCy/5TBPd6v4Oy7c4KiqmP2nLYKmCV8u
	MvTft+yrQ6XQKQgvcrtjm8y8k+YERTuVgXU820yxnoSG352doLdz4IyLDQwpnwKT+ZYg
	vy0Q==
X-Received: by 10.68.130.5 with SMTP id oa5mr35736340pbb.4.1409544423806;
	Sun, 31 Aug 2014 21:07:03 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id aq1sm6556805pbc.96.2014.08.31.21.07.01
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 31 Aug 2014 21:07:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 31 Aug 2014 21:06:55 -0700
Message-Id: <1409544416-14993-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1409544416-14993-1-git-send-email-akuster808@gmail.com>
References: <1409544416-14993-1-git-send-email-akuster808@gmail.com>
Subject: [PATCH 1/2] nettle: Add name to maintainers list
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
X-List-Received-Date: Mon, 01 Sep 2014 04:07:12 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 6940d9e..a96f88b 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -473,6 +473,7 @@ RECIPE_MAINTAINER_pn-ncurses = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-neard = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-neon = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-netbase = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-nettle = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-net-tools = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-nfs-export-root = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nfs-utils = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-- 
1.9.1


