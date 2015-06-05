Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 694B1E009F0; Fri,  5 Jun 2015 09:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B458FE009E7
	for <poky@yoctoproject.org>; Fri,  5 Jun 2015 09:53:32 -0700 (PDT)
Received: by wifx6 with SMTP id x6so26785616wif.0
	for <poky@yoctoproject.org>; Fri, 05 Jun 2015 09:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=f0Uts7W4k1FE/WpC15ATZ2JtdbUgjt5rCPPOapEff/s=;
	b=FjueLFHP1+oHOhxSGyEjWelF0JLKWzgQS/8qC2H++Rz8QKMNb/e0jhpkeu3LG2qhvB
	Uf9SdIE2Q3A+54p7EZTurGSc0ipqWOrKnrHFDsw7T/Jg5khEL4jH6ymEe/GqxV1j+EDg
	O0V9TBT5DQhiPSXdrml64e9v2Dxx2Olo0fr/7CIRmHHWXmr+ONrR9DZABw9mTsFLX2c/
	f7rHZraBkY61CCjgJR/RCDLCqOa7pkZcrvc7Qd7NgX0V+B3IJQfB70sCxdELCpfQ9Dzd
	etbQLjBiivykh4h36DhbMwb4C93bI/AJjBmnkTH255RKmGvz+CEGfjiAGDPPxQf14exx
	VkLg==
X-Gm-Message-State: ALoCoQkfJuvvAhGUNe5lgV9qjk9QaXP72zKTeJBkluyzHYIX6OPW0BB5r5H6SZ8A1PEY2NACzi2q
X-Received: by 10.180.94.35 with SMTP id cz3mr20075048wib.85.1433523211324;
	Fri, 05 Jun 2015 09:53:31 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id ju2sm4095319wid.12.2015.06.05.09.53.29
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 05 Jun 2015 09:53:30 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri,  5 Jun 2015 17:48:54 +0100
Message-Id: <1433522934-23551-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] poky.conf: use correct GPLv3 license name
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
X-List-Received-Date: Fri, 05 Jun 2015 16:53:35 -0000

The logic to determine whether qemu images can ship parts of the toolchain was
using the old (non-canonical) name for GPL v3, which meant qemu images were
attempting to install binutils in no-v3 images.

Fix this by using the canonical license name in the check.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index b47325d..e3d3c78 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -32,7 +32,7 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
-POKYQEMUDEPS = "${@bb.utils.contains("INCOMPATIBLE_LICENSE", "GPLv3", "", "packagegroup-core-device-devel",d)}"
+POKYQEMUDEPS = "${@bb.utils.contains("INCOMPATIBLE_LICENSE", "GPL-3.0", "", "packagegroup-core-device-devel",d)}"
 DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
 DISTRO_EXTRA_RDEPENDS_append_qemuarm64 = " ${POKYQEMUDEPS}"
 DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
-- 
2.1.4


