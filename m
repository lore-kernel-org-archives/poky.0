Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FC274C81069
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 13:07:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy10 with SMTP id 10so6868621ewy.32
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 11:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer:in-reply-to:references;
	bh=eA55XyD2j/y8YasJpayBUALjezkDZvPqJWU+SZYo+vc=;
	b=TeTA2D9jtYI69WFCXLfKhj/DL4GNUdW0ua538jjqy2w00qL7gvsXGI94r59LNYkuOe
	Bdnz1HPbteICuqRkopPmeY44CWqB7avt3fG/DGkrt9rJ0gh4YZc0W6WCnMZo3PfBsYsL
	vAs3+0ibrKotHqx46yJhHNhEWCIaxUTYqqecE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	b=VU/Q5S92jjhXfh5I9ZUy3UONdErsskq5BbfjZkw3AHil6DlsXLC1MkcH1bR7RCSktK
	aCw4DcmARGE88pV81SIKDyEEXPogeMQQP2shl/p0I9jq5WysjtNgNZ0Woyaj1UpRIdJR
	4VoaKKiBKP58zg2CHrgRba2Tlb/Oqr8pP73/8=
Received: by 10.213.101.12 with SMTP id a12mr1713401ebo.64.1291662456448;
	Mon, 06 Dec 2010 11:07:36 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id b52sm4979362eei.13.2010.12.06.11.07.35
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 06 Dec 2010 11:07:35 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  6 Dec 2010 20:07:26 +0100
Message-Id: <1291662447-13865-2-git-send-email-fransmeulenbroeks@gmail.com>
X-Mailer: git-send-email 1.6.4.2
In-Reply-To: <1291662447-13865-1-git-send-email-fransmeulenbroeks@gmail.com>
References: <1291662447-13865-1-git-send-email-fransmeulenbroeks@gmail.com>
Subject: [PATCH 3/4] libcdaudio: new recipe (brought over from OE)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Dec 2010 19:07:38 -0000

Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
---
 .../libcdaudio/libcdaudio_0.99.12p2.bb             |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-multimedia/libcdaudio/libcdaudio_0.99.12p2.bb

diff --git a/meta/recipes-multimedia/libcdaudio/libcdaudio_0.99.12p2.bb b/meta/recipes-multimedia/libcdaudio/libcdaudio_0.99.12p2.bb
new file mode 100644
index 0000000..62b3f96
--- /dev/null
+++ b/meta/recipes-multimedia/libcdaudio/libcdaudio_0.99.12p2.bb
@@ -0,0 +1,17 @@
+# libcdaudio .bb build file
+# Copyright (C) 2006, Advanced Micro Devices, Inc.  All Rights Reserved
+# Released under the MIT license (see /COPYING)
+
+HOMEPAGE = "http://libcdaudio.sourceforge.net/"
+DESCRIPTION = "Portable library for controlling audio CDs"
+SECTION = "libs"
+LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19"
+PR = "r1"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/${PN}/${PN}-${PV}.tar.gz"
+
+inherit autotools
+
+SRC_URI[md5sum] = "15de3830b751818a54a42899bd3ae72c"
+SRC_URI[sha256sum] = "5fdaf9af5ac4f75c0215d000b82b128fd054a582f81cc4f039a1e7fe69335ebb"
-- 
1.6.4.2


