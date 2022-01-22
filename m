Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web10.2572.1642890800929272588
 for <poky@lists.yoctoproject.org>;
 Sat, 22 Jan 2022 14:33:21 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com header.s=default header.b=JYFtrHS8;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182, mailfrom: alhe@linux.microsoft.com)
Received: from alsamon-xub.lan (cpe-70-112-59-126.austin.res.rr.com [70.112.59.126])
	by linux.microsoft.com (Postfix) with ESMTPSA id 125FB20B6C61;
	Sat, 22 Jan 2022 14:33:19 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 125FB20B6C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1642890800;
	bh=jPNbF/kxo9Idnl74Y8IBF2oMM3UD+563LQQxb5i+zGo=;
	h=From:To:Cc:Subject:Date:From;
	b=JYFtrHS8iGWcd2Z3T9ztSQcGR6+6QffdkakOYzgTTa+WXcJ1lMfvVNj8eRTqQylof
	 CD0bnuPFLBe0GEJKU5m+Ohx/PR6Ji+8r/QLEFOtWTjLfa0M7SvRGmuHo9weOsMXdZ9
	 1RAwqHTVR2kFs6L8rAaHJCzvHoAuegyZXh6cuuwc=
From: "Alejandro Hernandez Samaniego" <alhe@linux.microsoft.com>
To: poky@lists.yoctoproject.org
Cc: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
Subject: [PATCH 1/1] busybox: Add shell arithmetic to work with poky-tiny
Date: Sat, 22 Jan 2022 15:33:17 -0700
Message-Id: <20220122223317.1626304-1-alhe@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Fix error when trying to boot core-image-tiny-initramfs:

/init: line 144: syntax error: support for $((arith)) is disabled
Kernel panic - not syncing: Attempted to kill init!

[YOCTO #14702]

Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsof=
t.com>
---
 meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b=
/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
index b0fb88a0c1..6e9faa4119 100644
--- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
+++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
@@ -1160,7 +1160,7 @@ CONFIG_CTTYHACK=3Dy
 #
 # Options common to all shells
 #
-# CONFIG_FEATURE_SH_MATH is not set
+CONFIG_FEATURE_SH_MATH=3Dy
 # CONFIG_FEATURE_SH_MATH_64 is not set
 # CONFIG_FEATURE_SH_MATH_BASE is not set
 CONFIG_FEATURE_SH_EXTRA_QUIET=3Dy
--=20
2.25.1

