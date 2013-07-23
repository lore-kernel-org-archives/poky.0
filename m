Return-Path: <djszapi@archlinux.us>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1F21E01525
	for <poky@yoctoproject.org>; Tue, 23 Jul 2013 07:58:26 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id ey16so3140232wid.4
	for <poky@yoctoproject.org>; Tue, 23 Jul 2013 07:58:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=qK7iLRFTmwJJBTla9hjJqzRRXm4rIDfjr6MWdltom7Q=;
	b=TU2Zgpa0qtydasZVcU/EhJ6vW7UMa+ZgcHv5gdm3wSPPSOBZ/Ow9y4eU83zx5NKzl4
	7rvRuJDzuUbFSNsf1nH/UEupF5LDkcKsa/6GMo5HvJLzAsEWB2srSeaBFARjMcgj/1LJ
	YzraZ8O4AEoGnXuQHPHQcurtcGtpfPK13hDNcbIjCiWc15zxbfveaPyBSBRHYOltsbXv
	20YUXrpV5fXbbMv24eWon3N2lq1DpqtJJkWLNna2qmrqAUklIS3Hq55OyugV38GYS+2n
	iqVwbhvF+50He4pflyMDwAd7ebMsvE5w3oEEMce4t1J3/rdROhrnDhYhuN/mun1+0b1c
	KM4w==
X-Received: by 10.195.12.202 with SMTP id es10mr23706405wjd.17.1374591505413; 
	Tue, 23 Jul 2013 07:58:25 -0700 (PDT)
Received: from djszapi@archlinux.us ([212.44.19.228])
	by mx.google.com with ESMTPSA id l2sm6456296wif.8.2013.07.23.07.58.22
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 07:58:24 -0700 (PDT)
Sender: Laszlo Papp <djszapi@archlinux.us>
Received: by djszapi@archlinux.us (sSMTP sendmail emulation);
	Tue, 23 Jul 2013 15:56:44 +0100
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Date: Tue, 23 Jul 2013 15:56:43 +0100
Message-Id: <1374591403-5078-1-git-send-email-lpapp@kde.org>
X-Mailer: git-send-email 1.8.3.3
X-Gm-Message-State: ALoCoQmHxyPAlFNHq6ESas/z3mtDxX30iL038/O1MfgkQx85HAUDN4oLZJhHCCLaxDC5rPDldiUP
Subject: [PATCH] layer.conf: make the yocto layer dependent on oe-core
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
X-List-Received-Date: Tue, 23 Jul 2013 14:58:29 -0000

Signed-off-by: Laszlo Papp <lpapp@kde.org>
---
 meta-yocto/conf/layer.conf | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index e012f24..e326aad 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -9,3 +9,8 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
+# This should only be incremented on significant changes that will
+# cause compatibility issues with other layers
+LAYERVERSION_yocto = "1"
+
+LAYERDEPENDS_yocto = "core"
-- 
1.8.3.3


