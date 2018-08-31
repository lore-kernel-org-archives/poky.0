Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4FC8E00655; Fri, 31 Aug 2018 06:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD6AE00566
	for <poky@yoctoproject.org>; Fri, 31 Aug 2018 06:54:05 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id d8-v6so1056424edv.0
	for <poky@yoctoproject.org>; Fri, 31 Aug 2018 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=mRWsU8w4DIknBHFfSX9t8rnFZRypKvprsQf3iVdqu/c=;
	b=j2WH2FAOlLtg7gUdhfq59B2QWflX4dbD2/t5ywT/BqBKSkiIkeUD2xwPM07Gb3aqwN
	N9Cblf9i5pX+FR1kZCckE4Hn1GM+mi636AVlyriq5+0lTkA9Bq+S/NkbyBgU4/Hqdn+6
	Fatl2gOeUtGuyoc3d5VTCsMGUIr/YpR8sKY9E/GyCC0uBDGtQ3vxuHowiwAK3EY1eXFw
	EfQBhIgdmS+89wlp5GJHDEjPaGZczjPQsK4UhaFCz2XSc/nTBF1fdtqsw7wkrThRlDxP
	v8AQmBnXx3iZmDyY6YacN1VRvPL5uoY5IyiXA40xpblW1qcqxnPtYmHO7wRDvwnLs/G6
	Kg8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mRWsU8w4DIknBHFfSX9t8rnFZRypKvprsQf3iVdqu/c=;
	b=kHR5ICrUd9To7AcQl3K+oosy9+jLtJzyT0qPZG2ydqEUD2ehDfWrV5T082jadbECyd
	btSYxHhDx5ULYxGSpdD0H87XT1rVJx3equcZWeOu5rA1PDIUcTDuOiq2GcLgJ2DRJ6ib
	mw1vzB2ovZEenrMttoPig5GflmNhLunj/fWAUmI8kya808lE3uP329mKn2zFdwUwLffK
	Elrjm0/+/e9XweA2XiHI7CTQXoodzGIlkkPq9TbXf25IyYgEBwj6NIlGOoTdO9Os/zQy
	TbnkkEBfQFwGsuBZPowtHvRNYntWfYBM+G4hxpxKTmPRPTK+0guuZksSv858MwSIUDgE
	1Ziw==
X-Gm-Message-State: APzg51B5t3k3cPSVzpdpJLUwkhtqOAzXW1F6WajtcxIIG7vWDmZ3p1SE
	h+m1XCjNjIskwD6DJ3nESP1OGadC
X-Google-Smtp-Source: ANB0VdZKw4kDv1Hly27RvNTdTjuCSAJHfCTDzaD1J6Pa0RyAKouzhSynYbZqO28i3FQeeHTVDlRkrQ==
X-Received: by 2002:a50:8c06:: with SMTP id
	p6-v6mr3320416edp.282.1535723644857; 
	Fri, 31 Aug 2018 06:54:04 -0700 (PDT)
Received: from localhost.localdomain ([79.140.126.226])
	by smtp.gmail.com with ESMTPSA id
	g54-v6sm4857923edb.47.2018.08.31.06.54.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 31 Aug 2018 06:54:04 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Date: Fri, 31 Aug 2018 15:53:57 +0200
Message-Id: <1535723637-32480-1-git-send-email-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] genericx86-common.inc: remove eee-acpi-scripts
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
X-List-Received-Date: Fri, 31 Aug 2018 13:54:06 -0000

Asus EEEpc hardware hasn't been produced for a long time;
upstream repo is now gone.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index c71ff9b..f83ce5c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -13,7 +13,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
             ${XSERVER_X86_MODESETTING} \
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "kernel-modules linux-firmware eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS += "kernel-modules linux-firmware"
 
 GLIBC_ADDONS = "nptl"
 
-- 
2.7.4


