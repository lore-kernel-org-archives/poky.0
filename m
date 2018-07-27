Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42209E00CEE; Fri, 27 Jul 2018 00:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21BD9E00CE0
	for <poky@yoctoproject.org>; Fri, 27 Jul 2018 00:45:29 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id d14-v6so1462317pfo.3
	for <poky@yoctoproject.org>; Fri, 27 Jul 2018 00:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=J7EqxViMq5U4ai7xlg0jaKZt6LTQgtia0JFQgBYTcWc=;
	b=rMeWIMlx3Z5isLuJ49Z1NFvSrUn1WkyCi1RQeeD9j6MUZmSfqyDwtoiRrBDWb+HLLx
	H2a9YsCvacLHsz2zcr+SiZUi3PH9uqAphm1yx6RDgsVa1B2p/rYLr0p/4JYdlagVhEIq
	vQdaa+pyvThnFVR575WFq1IiRunF3qIwQ3vJwxMfwHwLq1yLJIU+UhZTz41/C6F4W6j/
	fjoEBqHDMhwI10J5HUtU6vdtJ9ohNM9yuM0Aq3+pwHX6rwZaeNNTrljbXwoWqdBZ4keL
	3FhodQ6/wUZKuvUQwsFXySG+y6PR1JQg4WybXt94wP+ISNNMBR8YcSYTj4408qZdB5Ba
	GUeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=J7EqxViMq5U4ai7xlg0jaKZt6LTQgtia0JFQgBYTcWc=;
	b=J67DV9bA7e10wN2FSVCh+1dn13bz39HG08pr4rSHqBXGThvIiONarM+4zE/GQaId9w
	BxbHcOpChW8VcIeWcCI5FBRkw8qjKGR2mBMn0EQiFL9To8PPMR/tAXK9ps1ACEmt+8lk
	RaLW8Hib4U49G0fO3rQqYFllT3Qr1I6S8ZIq+2LUZAmGbTTSDEdd6JmPmyvrWnQNPlpZ
	r7KWbIx5OgXM/5wyFOYFadGQQHtooeFkZJRs4yDP+SxzjYVKYacmUwSVGXerLA6i1bEn
	gltIxLkOqw65SA/Q3eDnD+z8etLsUjpIPVwi0V1CTARDxBju3NCsqlgNYkDOIS6lKMXo
	8DcQ==
X-Gm-Message-State: AOUpUlHo8jL4VMEzatcfxUNXe/YczdsSj8xVZpie5vvyegSTKoN6N10h
	HmBPEZeyKJDz4ImiYedxFFjckxY0
X-Google-Smtp-Source: AAOMgpfd+mIQ+0MxcG0o4ORfOpomRQ04ap30YNM/WmfbiUm2qHzlXgjzim9lXR2uagRes7A9H2o6SQ==
X-Received: by 2002:a63:be05:: with SMTP id
	l5-v6mr4984227pgf.330.1532677528288; 
	Fri, 27 Jul 2018 00:45:28 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::ee7a])
	by smtp.gmail.com with ESMTPSA id
	n12-v6sm10249741pfh.146.2018.07.27.00.45.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 00:45:27 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Fri, 27 Jul 2018 00:45:19 -0700
Message-Id: <20180727074519.21773-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.18.0
Subject: [meta-poky][PATCH] poky-lsb: Remove including security_flags.inc
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
X-List-Received-Date: Fri, 27 Jul 2018 07:45:30 -0000

This is in  default distro config now

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky-lsb.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
index ecfe5d2f446..1c426bae0e8 100644
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ b/meta-poky/conf/distro/poky-lsb.conf
@@ -1,6 +1,5 @@
 
 require conf/distro/poky.conf
-require conf/distro/include/security_flags.inc
 
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
-- 
2.18.0


