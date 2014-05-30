Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46811E009A7; Fri, 30 May 2014 08:06:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C268CE00724
	for <poky@yoctoproject.org>; Fri, 30 May 2014 08:06:09 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id f8so1304770wiw.2
	for <poky@yoctoproject.org>; Fri, 30 May 2014 08:06:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/zqrElTztd8sfNq53p5OYiZNy7pjYsVsrtNmPFKCbrI=;
	b=N7EDtc54DQyICLKxfX2B0wbgvFwwqi6ZtMu5bnXd65NDZK7GTFSL1ei8KCdSfIhiNV
	ZaWQi+dlJpsAp9SzXbtbG8X98XTpfBCo4gFfOO8Jw7HeUaNF2k7T0Mf6jiIDkE+ERkcC
	SHE6tJwrNeNUHTEs1I5zO/FLt994KmXxPrsLdEX89bvAHINtrPWhSpWK7b/gzjMgh+0a
	N4S2xLMTm5IWb114Fwcw9Gg6IVqBHAtzE/t0yHkyJNv/O1HdRmtw8ZCcPg0cfLBxSJff
	YT5Tcuo/9gBTqhVgRdppKennntmaFXpyTw1DV7F/uNHp+qGrJfQ3nBwHyuMvqJcNfV8F
	vS1Q==
X-Gm-Message-State: ALoCoQkZCw0oEhc1WJ1MMM9MDUIom4S+GdEpSZaN/wvBg5hL/0TvIhTL6CmET4ctt0nX2Pd84M+C
X-Received: by 10.194.6.166 with SMTP id c6mr22787983wja.64.1401462367356;
	Fri, 30 May 2014 08:06:07 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id dk10sm4336449wib.1.2014.05.30.08.06.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 May 2014 08:06:06 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 May 2014 16:05:59 +0100
Message-Id: <1401462359-21556-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Cc: dvhart@linux.intel.com
Subject: [PATCH] genericx86: switch to Linux 3.14 from 3.10
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
X-List-Received-Date: Fri, 30 May 2014 15:06:16 -0000

Boot-tested on a NUC.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 66bfd19..c61be97 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86-base.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.10%"
+PREFERRED_VERSION_linux-yocto ?= "3.14%"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
             ${XSERVER_X86_EXT} \
-- 
1.7.10.4


