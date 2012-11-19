Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EF89E0049F
	for <poky@yoctoproject.org>; Mon, 19 Nov 2012 08:51:33 -0800 (PST)
Received: from mail-we0-f200.google.com ([74.125.82.200])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 19 Nov 2012 08:51:32 -0800
Received: by mail-we0-f200.google.com with SMTP id x10so729596wey.11
	for <poky@yoctoproject.org>; Mon, 19 Nov 2012 08:51:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=h29Mv9b5PMwii14f4tgTl16Lq1ZLxxeTAnfpuk+g5aM=;
	b=VZ0wfz1zceEgyi5TXKM5KAi1wn04w1Y+KendZfGiGJPZTRmdBxDP3LbwG7WjdP+msl
	JQnhy/kVY6V+f2kqODGBxOCr29XX5A/1DB2bv+Mx2IjqOiZHOcWba2hRQZcY6BgKSZ0R
	PFrbx0cEzQd4+Kw2k57hKUlRUcAq3/pzoCncYUNsAIeUs3K0b9ADnty/DaOFdD1+RjOW
	/MXHKRpqsBQhZo29o66Lf6yGT8s06gO7e/vsxqtf3yxPl03THxKvKw4x6VAe1NwajtLn
	Dy8bvUteClXjZn4NyZOmAD71OGGCbMz+S2uWrlne1Zh+1P5RMqdi+tz6KuNG0zGfbXoK
	d8NQ==
Received: by 10.180.74.108 with SMTP id s12mr9959360wiv.12.1353343889735;
	Mon, 19 Nov 2012 08:51:29 -0800 (PST)
Received: by 10.180.74.108 with SMTP id s12mr9959339wiv.12.1353343889455;
	Mon, 19 Nov 2012 08:51:29 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id bz12sm898675wib.5.2012.11.19.08.51.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 19 Nov 2012 08:51:28 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 19 Nov 2012 16:50:04 +0000
Message-Id: <1353343804-12664-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmfL8Aph5rtnCTgqrEV8JOsCYO4B/sRiKnasHRBUW0nfy6KBSB9Is6lpcemMgXVxdZjUptEkK+VJob0D9Hz4p4FVf59t/TACJMGip/WDFSWX9LhB1WuVZ6Xe2n3BQY+WHPdKNXr4KODD+YCDQLpsKk2zbbK+w==
Subject: [PATCH] qt4: remove qt4-x11-free bbappend
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
X-List-Received-Date: Mon, 19 Nov 2012 16:51:33 -0000

This bbappend is forcibly enabling OpenGL on atom-pc and mpc8315e-rdb, but as
Poky enables the OpenGL distro feature this option is on for all machines
anyway.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend |    2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend

diff --git a/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend b/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend
deleted file mode 100644
index 0c948bc..0000000
--- a/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-QT_GLFLAGS_atom-pc = "-opengl"
-QT_GLFLAGS_mpc8315e-rdb = "-opengl"
-- 
1.7.10


