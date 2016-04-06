Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96A30E0096D; Wed,  6 Apr 2016 10:04:17 -0700 (PDT)
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
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03A5E0048B
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 10:04:13 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id f198so82385145wme.0
	for <poky@yoctoproject.org>; Wed, 06 Apr 2016 10:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=K3nde4XwjlwdJWhn0hjtD7SYJ7fYbPbipHDo3yaZ+s8=;
	b=q4FDVlh/KC/ZNy08vaFcOZufj6ADC8kJQDX84jzceTTcnGPcnAK/NZgWfHmUSxtX2V
	RUBpuKM6Wu+icumgk4WJc7E6Vl5hnF0EmY7NuuZYSYg0C4dfrTWXe1yzspAPN9zvWT92
	PMjFR6VhWHGtuA6ZNtlAyRx6snrMHHf5JEDx/u6Jq72fy3BbvoK3vSuRBE+axPF1+WkD
	ivEbOp8f3qGrwgdwx8EGPdLNpc4+RwkdIn/uUksInvKmY4EwvgxqNwjkp6JBEsKDfbLm
	uRzAkYYWDWOrPJm4D9Z5JFqh89lnmIF5IpEAbhIMWF2Kh5wPl5BPUlbnqD522ZCm5r+u
	ibpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=K3nde4XwjlwdJWhn0hjtD7SYJ7fYbPbipHDo3yaZ+s8=;
	b=lJDirccjY74SInx6zJvDXOea4oHOBiUc6d/yul39Yw7yYhytD71jgzHCm4pdCMssYq
	4eK0vH3anGlUWtbuze0FyTOxMA91Gm6lqSTKT+WAJQ3x/vm+2gOOBAmQ7kNzNO/NdjE8
	+6H2aiGDmNMPnk7BLI39tqMzHyf3N4ClwYA3jQS2b05KxeWL4Rh14ZLnDalp5zMNppNH
	ejgxsI21Xic0q3FAtwk8KBQ16fV90wYODmvcOvhIjU4adivRqkMP+8xhnvHjsxXAsxJp
	rN2MrPMclkU0DgWBz94MkNEa9BT1uUFZh6u7S4kTOy9gQikbS2g7qOWewF2UuAXBAXlp
	v0Eg==
X-Gm-Message-State: AD7BkJIIPdvBEbw4Q/kDwgQmGIQEO7jMhAoIWqUrv3npEMsEkGn+R1AiBAT86Hd3reZwtsKN
X-Received: by 10.28.10.18 with SMTP id 18mr24696778wmk.64.1459962252478;
	Wed, 06 Apr 2016 10:04:12 -0700 (PDT)
Received: from draco.icx.intel.com ([83.217.123.106])
	by smtp.gmail.com with ESMTPSA id
	c190sm4630304wmd.10.2016.04.06.10.04.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 06 Apr 2016 10:04:11 -0700 (PDT)
From: Michael Wood <michael.g.wood@intel.com>
To: poky@yoctoproject.org
Date: Wed,  6 Apr 2016 18:04:08 +0100
Message-Id: <1459962248-30718-2-git-send-email-michael.g.wood@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1459962248-30718-1-git-send-email-michael.g.wood@intel.com>
References: <1459962248-30718-1-git-send-email-michael.g.wood@intel.com>
Cc: Sujith H <sujith.h@gmail.com>, Michael Wood <michael.g.wood@intel.com>
Subject: [PATCH] toaster: add DL_DIR and SSTATE_DIR to poky toasterconf
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
X-List-Received-Date: Wed, 06 Apr 2016 17:04:17 -0000

From: Sujith H <sujith.h@gmail.com>

[YOCTO #8422]

Signed-off-by: Sujith H <sujith.h@gmail.com>
Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
Signed-off-by: Michael Wood <michael.g.wood@intel.com>
---
 meta-poky/conf/toasterconf.json | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-poky/conf/toasterconf.json b/meta-poky/conf/toasterconf.json
index dc592ab..8153b7a 100644
--- a/meta-poky/conf/toasterconf.json
+++ b/meta-poky/conf/toasterconf.json
@@ -2,9 +2,11 @@
     "config": {
         "MACHINE"      : "qemux86",
         "DISTRO"       : "poky",
+        "DL_DIR"       : "${TOPDIR}/../downloads",
         "IMAGE_FSTYPES": "ext3 jffs2 tar.bz2",
         "IMAGE_INSTALL_append": "",
-        "PACKAGE_CLASSES": "package_rpm"
+        "PACKAGE_CLASSES": "package_rpm",
+        "SSTATE_DIR"   : "${TOPDIR}/../sstate-cache"
     },
     "layersources": [
         {
-- 
2.1.4


