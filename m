Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD5C7E00874; Fri, 27 Jul 2018 19:46:25 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841DFE006F1
	for <poky@yoctoproject.org>; Fri, 27 Jul 2018 19:46:24 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id v13-v6so4216023pgr.10
	for <poky@yoctoproject.org>; Fri, 27 Jul 2018 19:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=e9x5d7AkYZrepGGv3ouWRWwf4PHryNK3iX2KibU85Qg=;
	b=hUnouLhgae7AiSGOThyc2tfYTnoYg2D7zlJcVKUmESzOyZAO/L/+SYMkEeit+ClYlj
	HmOWx4hJ6fNeopKkx8uNZ1W0oG2/6PseScsfMyYSglmErjtkrxuZPrbpnZoRVCmJvuw9
	RObvMlYa+i2g2fFflYuCsrwDprhx0N+gpUBLY1shiQZX9ft+fln9ZiOunpS3SwmrhIgP
	jGqfJaj1ZgqvuXckt4vvqNTMzmHOhBWw+dBBHnXrAchfkj12j/qPSZ3sRBrYEyQ0Cx7m
	4xFmgaMjIrc5FoRNqZBoZ0oKpY0Rjh4UsEcwo2thEu7MK2MSTzAAl8HefrjxgQ2StF5h
	uh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=e9x5d7AkYZrepGGv3ouWRWwf4PHryNK3iX2KibU85Qg=;
	b=srpXJRu/of7ZzTN3rH6aGpsp08oD3EFS0s1raQ4KoxRa3LDl3NsBZewHDHKQh4BRNB
	Hef4Ag5dihApoM0FhCJI4OVgr6/s69+3T8xjMxqciw06mR02xlsiGa5M2nsbn7NwbtP5
	KodMaHRMB/EbJF06fX9FCXMEtyfENeoe+V3YftNUzCuhkkciaTa/A52ZmKQ49TBi0ycg
	I1PdhWIzdoo8FG2qbDpg0DpkyKcA7y7uoiYX6dZkzZ5mfDNfn10t/qsSj5xbmzlhdOXp
	eL4ZHdGrS+9W0XZ6S8PiMTiIHaStcX1CcCgBj1IoREFV/h8544GS4Y9+ROvwEjMOBREO
	oSsA==
X-Gm-Message-State: AOUpUlH4law2dhGcc0Zpb9C2OjCf5xChikPJhbA4HgVuz/awqlu31giI
	VCNyZ4HCCffmbIRtxYN3UDo2m+bJ
X-Google-Smtp-Source: AAOMgpdDW2AhUG+tYX1fJ9xnRfRTCRFzDAbxcQDt0P9y5LhPt/pidUkzD11r0t94up6le98x/gdtQQ==
X-Received: by 2002:a62:dc8f:: with SMTP id
	c15-v6mr8985307pfl.155.1532745983469; 
	Fri, 27 Jul 2018 19:46:23 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::ee7a])
	by smtp.gmail.com with ESMTPSA id
	h10-v6sm11808403pfj.78.2018.07.27.19.46.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 19:46:22 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Fri, 27 Jul 2018 19:46:14 -0700
Message-Id: <20180728024614.10888-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.18.0
Subject: [meta-poky][PATCH] poky.conf: Enable security flags+pie by defaultEnable security flags+pie by default
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
X-List-Received-Date: Sat, 28 Jul 2018 02:46:25 -0000

This has been an opt-in for so long, some distributions e.g.
poky-lsb uses it by default however, since most of linux
distros have started to default to these settings for security
enhancements, time has come for OE to make it default too

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 1c4feeceaa9..392c2383ee4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -98,4 +98,5 @@ ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
 require conf/distro/include/poky-world-exclude.inc
 require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
+require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
-- 
2.18.0


