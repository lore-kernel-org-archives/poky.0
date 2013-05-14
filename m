Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7297BE014E7
	for <poky@yoctoproject.org>; Mon, 13 May 2013 22:42:11 -0700 (PDT)
Received: by mail-pb0-f46.google.com with SMTP id rq13so119170pbb.19
	for <poky@yoctoproject.org>; Mon, 13 May 2013 22:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=c/zpTzD3rqCCwEkH2XRxijauyD3bSrdqQv4zT4DUt38=;
	b=vrChttXAqn2+BGnjFTC/rvtjd2MFM3HD+8RiJva01pxJLPrg99J8DKgAZXOlnM4ZvP
	GPwv5+3qbTcaYHIfZVIdOYnXeQrEwmbZmgWlqQhLSgR/OrWFBBGq4qesyTNko1Fv+f1B
	JG6Wnj7hhANaGZhcPBhfbgU3zk4RnCuzI/Lfs6JpLfT7eChoOJuPIBn4B47OptZHDrC8
	7DpKme+iBd17HP2NX9GrB7jPda5PIXu7tcy3qCANmqfb2hEfuC0lLwndpij3vx25QK15
	p463oDMVQqkT+VRSvnMQxjNrjsuIzpvaYfMerCHGDSFWEyrFXfX+5tsERmIKS49Y731N
	pRvQ==
X-Received: by 10.68.49.130 with SMTP id u2mr32216174pbn.124.1368510131164;
	Mon, 13 May 2013 22:42:11 -0700 (PDT)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPSA id
	kv2sm16740383pbc.28.2013.05.13.22.42.09 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 13 May 2013 22:42:10 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 13 May 2013 22:40:33 -0700
Message-Id: <1368510033-16174-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH] poky.conf: Adjust DISTRO vars post 1.4 release
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
X-List-Received-Date: Tue, 14 May 2013 05:42:11 -0000

Use next to denote this will become next stable

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky.conf |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 044d051..4a2019c 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
-DISTRO_NAME = "Poky 8.0 (Yocto Project 1.3 Reference Distro)"
-DISTRO_VERSION = "1.3+snapshot-${DATE}"
-DISTRO_CODENAME = "dylan"
+DISTRO_NAME = "Poky Next (Yocto Project Reference Distro)"
+DISTRO_VERSION = "1.4+snapshot-${DATE}"
+DISTRO_CODENAME = "next"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
 
-- 
1.7.9.5


