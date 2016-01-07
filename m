Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 811EDE00C7B; Thu,  7 Jan 2016 15:34:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B20CE00AEA
	for <poky@yoctoproject.org>; Thu,  7 Jan 2016 15:34:14 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id f206so147592642wmf.0
	for <poky@yoctoproject.org>; Thu, 07 Jan 2016 15:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=CoEvEuvMAI8rBCUiLO//yhCaFcsBcXf/bkEJXswgBKs=;
	b=PY+ViM8QrjRdh5PZCL+HVwj/aEt1n9eBFmnuRA1ZYmhBd0WwpZ/XWlvq0y9i0I1gIe
	QMZGVyMsmirjvzgvc5WI+i5dlaq7Jo4AlPxgNmyCv6yFCOdx9uhObHEprLYeHmowWWaw
	JjwrFBnvIQeydDNCK0FOzqP75EQCgd7BXC/oqhCv3v/DyORAfj4M388iZm0wj2XGSQkZ
	aRaVy2ZZJwbGeNYLNgePMOAIuDQof1O+ZPgjrAuuG5M2iKLmrZ1lkqt4qGopYHW0gWqi
	2Wop+r9k2AUhsUkERClyig0C1kIHHA02w4BrDZV4u26LVZDqVvGnn54qGJEduk8ubgiY
	hZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=CoEvEuvMAI8rBCUiLO//yhCaFcsBcXf/bkEJXswgBKs=;
	b=DNwG1AGAxhF7c200uGFHnIAqYqunoI1usXbsLqCWHWpQTFPzQb8cfigWYcgaJlqMed
	9nqOk8DkgdAXztbDJKnD8plwk2f37L4h0Ma347EeY1HRf6p3fSHgj8NHRidJLuiraAT1
	dNk9gxVxkH+qTiC0oAcql0EkHcZjJjYYPA1iY0vGNn/w6my2fZyuYjxnXNKuykoZjNbJ
	xds4VlQ8gUcpDJMwwbc/ntVUVrtMlirffwuzAKrJ+SZX2loCdlwQzdyv4i/QiNiv8GPP
	AF/XRbwMmqTp0/Z4MqOVeKH5SEDIpwSzoj9C0BIvUV7+1To+eS4Xnmpe7zFyNQhTpXIl
	YBUg==
X-Gm-Message-State: ALoCoQk/ZR76xaDxLOcnJeLQGcg5o9qDLIU3+DDmqJjxs7DK3dASx8XKdOC7ZCBBIgLNdftlL4ws9MqeXcJU6GPHXYEKwXKlRw==
X-Received: by 10.194.223.39 with SMTP id qr7mr114161300wjc.63.1452209653440; 
	Thu, 07 Jan 2016 15:34:13 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	g3sm102979501wjw.31.2016.01.07.15.34.12 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Jan 2016 15:34:12 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu,  7 Jan 2016 23:34:06 +0000
Message-Id: <1452209646-23210-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH] conf/distro/poky-tiny: correctly disable python in opkg-utils
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
X-List-Received-Date: Thu, 07 Jan 2016 23:34:20 -0000

opkg-utils has more than one PACKAGECONFIG option enabled by default so wiping
out PACKAGECONFIG entirely breaks poky-tiny as then opkg-utils doesn't build an
update-alternatives binary.

Instead, use the _remove override to selectively disable Python in opkg-utils,
leaving update-alternatives present.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index eb0e88b..0ac46ac 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -125,4 +125,4 @@ PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
-PACKAGECONFIG_pn-opkg-utils = ""
+PACKAGECONFIG_remove_pn-opkg-utils = "python"
-- 
2.6.4


