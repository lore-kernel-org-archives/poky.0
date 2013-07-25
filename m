Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D98BE01534
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:05 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id t61so914274wes.3
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=ofK+9kebX23dnjPUgt700CTuNX9apF7Jss30smKg44I=;
	b=ZnMr0x/5EywSlHVbw37wjUo58j9CCca4IN5W7MPnzqu0Yhkq2YQtCPuTrwyt9bpWjV
	GZ1ktMkbia0FTg2c0KwNQnHbREm1UACwK7o3UJBqQL0zelxfbm9DwW8/aGSggSOVo+dF
	gxfrI/BxVaj4e6FUsXXg7LO99Rih5Zq3eiPZR71ImD3W5KGwRcMbJtEBQblw4noKRYb9
	QQdonbQBo0thW3/iltri/nCfsWV7N6wRpMRXHsTQbhxUgO6fjp5agayEOg5U6USeHqxL
	/T+QmL06DFV32UJWy5NNp3jqYUMX5sY3ArzqVAMzb9GIJMELD/DZ1r9NUpd/CEVdavWU
	nzgA==
X-Received: by 10.180.36.238 with SMTP id t14mr2773092wij.29.1374770525134;
	Thu, 25 Jul 2013 09:42:05 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.42.03
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:42:04 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:38:03 +0100
Message-Id: <1374770285-22235-5-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmIRxKm0swSIrBsoruZBFandr4H0C5eVNs5cymUF9wLG59YafHuCtN0pgEUvlS5eo7tXMBb
Subject: [PATCH 4/6] genericx86: disable rootless X
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:07 -0000

Not all video drivers support rootless X and this BSP aims to have broader
support than atom-pc.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 2154943..572a480 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -36,5 +36,3 @@ APPEND += "usbcore.autosuspend=1"
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
-
-ROOTLESS_X = "1"
-- 
1.7.10.4


