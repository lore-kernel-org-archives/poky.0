Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2F66E0154F
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:08 -0700 (PDT)
Received: by mail-wg0-f53.google.com with SMTP id c11so1918607wgh.32
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=NlL9iJl6yH1PzG3wkO36sx50P9jH0FLLCvrJs0rmfSs=;
	b=hq8sfLT3i11byf2tKiWb2iBClDXfct/ZD0Vlh/W1V6f0C0Zd6a+XcrkOjH5Q7786Y4
	r0zl79Rox9SGxWuBBeWzOdLQH8g4S7NMp6f7AT3wnAjw9FatuqEBgqDsQ9cWdiTRs/BI
	+kmHZjmDEDqhOdZDyr6YI8W1aNV+HBhuYTlTkblKKFqyZrYIaxw879rvOVeER2wn0NDK
	AA3CmiWHsSb8pcSFDKwNTPSGWXKygxDr13MSK3ORbu2sTeA+ibyXV2rx+3qQNYvvviuh
	8ZBg3OASBt3Fr83OD9iBuL+Fuwa/6G34839vRvBGqhDqtUNMapMdF46fn5KbP7AwGzQ8
	hZ3Q==
X-Received: by 10.180.78.137 with SMTP id b9mr2749352wix.16.1374770528274;
	Thu, 25 Jul 2013 09:42:08 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.42.06
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:42:07 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:38:05 +0100
Message-Id: <1374770285-22235-7-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQnxFp5d0RoLIQfg7fsE0GTXKgV8KN7u/LyXiuHfWCuxtBTZ17iL1Pl+xoMtWmrlOO1XVfDq
Subject: [PATCH 6/6] linux-yocto: enable more framebuffers on genericx86
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:10 -0000


Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/files/framebuffers.cfg   |    5 +++++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    3 +++
 2 files changed, 8 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/framebuffers.cfg

diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/framebuffers.cfg b/meta-yocto-bsp/recipes-kernel/linux/files/framebuffers.cfg
new file mode 100644
index 0000000..162e103
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/framebuffers.cfg
@@ -0,0 +1,5 @@
+CONFIG_FB_UVESA=m
+CONFIG_FB_EFI=m
+CONFIG_FB_NVIDIA=m
+CONFIG_FB_INTEL=m
+CONFIG_FB_RADEON=m
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index c4c005d..d660450 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -18,3 +18,6 @@ COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+SRC_URI_append_genericx86 = " file://framebuffers.cfg"
-- 
1.7.10.4


