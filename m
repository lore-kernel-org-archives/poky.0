Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6BCFE00D42; Fri,  5 Feb 2016 12:58:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3184FE00D36
	for <poky@yoctoproject.org>; Fri,  5 Feb 2016 12:58:43 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id 128so86524308wmz.1
	for <poky@yoctoproject.org>; Fri, 05 Feb 2016 12:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=6XZi6zZdJz5S0EFgXt/bk/eXIrcUkZK75JLs/QwSg3M=;
	b=tkxeteKMjJKWpm1P69l/3iuXUxZ23ZAqC7KChnJUwzM8yAY8EQEbEXN/13wHPy1hBY
	G2r7w4jpKr5ewIwxADgrUuRn2rcyeNPQiFG5TtUcfIy52mGe77p+3HBnB3k/Fpe4jcUD
	n31N9LQDELSXHx0Alf3XRiLPtpjE6sddRA3sMb7dKFMAHx92X10Kby4KzgJSXLE9V25L
	WZ+iERgg/P4MEGXajbHr1rJfoOZRW8IRvsSuaO6q0UPDzvi3XVvwD1H4vjZua41+pRQO
	NsaKXjAf3bs9ylmfyzLdQByL5f2FBoAqgys+6PUX9vGLAO8UhIH90EMayrojXFjdY8h1
	kdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6XZi6zZdJz5S0EFgXt/bk/eXIrcUkZK75JLs/QwSg3M=;
	b=UOKvlD8+u1PO4wx7KPcPypNWM46Bax+kcawdQ77aV8bki5lxdjs/DKUyvmvPVRWAa0
	MeJKk84kFj9gC8MD+YRlEFlLnMxjT5RGhOWI0hITb1ZT/32aO6Tdi5Sw+Tx4R/6GrW3k
	WVntLnFcGvCrn1SCyHOWaJzAY3xZylo9IOe1nZN77hbXg7iGWXa162thYZujXZejXFcn
	qoFEbTtf0/1BEI8HmyRtr93RTwNaX6Jt+TEDw2q4l3acGY3JYCifSWMmnTdTWAml6mwq
	vuVmNwMte5vNnSGAC6lhv/uWVby0Mimt9XlJYHBGlY6b8HOzYDZbkCc7yulu/NqyZw1T
	HPYA==
X-Gm-Message-State: AG10YOTZfyD7LJhayIwXviGiTqeV05lRxRwOAYHkUSPjhwYNs66ZjmzVaa1boVk2EXVX8+Np
X-Received: by 10.194.134.105 with SMTP id pj9mr17755234wjb.10.1454705923115; 
	Fri, 05 Feb 2016 12:58:43 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	pu8sm17482307wjc.17.2016.02.05.12.58.42 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 05 Feb 2016 12:58:42 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri,  5 Feb 2016 20:58:40 +0000
Message-Id: <1454705920-24671-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [PATCH] maintainers: remove gtk-theme-torturer and gnome-mime-data
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
X-List-Received-Date: Fri, 05 Feb 2016 20:58:45 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 09320ab..de1f818 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -200,7 +200,6 @@ RECIPE_MAINTAINER_pn-gnome-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop-testing = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop3 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-doc-utils = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-mime-data = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -227,7 +226,6 @@ RECIPE_MAINTAINER_pn-gtk-doc-stub = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-engines = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-icon-utils-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-sato-engine = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-gtk-theme-torturer = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-guile = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-guilt-native = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-gummiboot = "Alexander Kanavin <alexander.kanavin@intel.com>"
-- 
2.7.0


