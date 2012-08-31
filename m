Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48C0E0027F
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 12:28:07 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 31 Aug 2012 12:28:05 -0700
Received: by wgx1 with SMTP id 1so1939730wgx.11
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 12:28:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=2u+tL0krtXLLk2ED9dwmvKDuEM9TfQKg+DzQLwg6xYI=;
	b=ZzwSFz+x3ODbrnbkCGIDC8eVY7tpEEfDo9MY2SUc21BCsVDBM+wY716DhGLi9ESj4L
	UGsFyHRP9VxEW/url2wbPdb/DLhb2ICJ5YO9+FBYjYPQ4G0Rja4ieTNn5iZH1jOfMUCX
	IquQ5hpCbYeabVFuhlZirr7QDHT3cBReo/Imwx6lnDKnMKl4WtRgXZKzkMrICCI2I8pt
	M7ht/kxE8wbZJ35l24Hnji2i5IYBRZtdJlviOJvzKbhyGVlg6aJ4xshL++APAix/KPNf
	/NRUJo7kL9qM+SpPZVom8cdmRCrGucoJMpcaHyW3d+qVI4hc7OuzbQvNd4KRPZmKTY8J
	YfIg==
Received: by 10.217.2.133 with SMTP id p5mr5471698wes.143.1346441283919;
	Fri, 31 Aug 2012 12:28:03 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cl8sm2454511wib.10.2012.08.31.12.28.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 31 Aug 2012 12:28:03 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 Aug 2012 20:27:18 +0100
Message-Id: <1346441238-28023-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1346441238-28023-1-git-send-email-ross.burton@intel.com>
References: <1346441238-28023-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmObZF+bzlbRZYIW58LDbr1XAsNAayCURNILJaMahT7gMvJpMMhNl+B82jKFMJdoPpmP9Sr
Subject: [PATCH 2/2] mpc8315e: switch to Xorg instead of kdrive
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
X-List-Received-Date: Fri, 31 Aug 2012 19:28:07 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/mpc8315e-rdb.conf |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index aa1e5c3..266f9d4 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -17,8 +17,11 @@ MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+            xserver-xorg-extension-extmod \
+            xf86-input-evdev \
+            xf86-video-fbdev"
 
 PREFERRED_VERSION_u-boot ?= "v2012.04%"
 UBOOT_ENTRYPOINT = "0x00000000"
-- 
1.7.10


