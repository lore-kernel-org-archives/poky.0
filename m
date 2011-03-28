Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06CE04C800AC
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 18:15:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so1756635ywo.35
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 16:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=hjbeewFJyXRQTv2FzgS9/9js52jd8Rpt7ddJTWDG7sQ=;
	b=r5c/FI9i6Gm4n3imZcjToUjCqUi5kd+GGVswOLed+XYlMoUWVBBDnC22Y0wu3TJb92
	N6Nsj5gBkTp7YJfmggtvjzlJZ3e6t9anh3GLQoUupcylvbOHbc2oODPGHhoeiKSsouW+
	lY/bGI7Apw5avzhkl+rxNMfYOsAUXmtnzAnG4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=xbCxE/j3BY1sX/JRPoPaC8ZUQ8Fs8P+DWOSp45s3MateLhZIj20lGSTFezpZulblbF
	1r6AlodfdWOu2R1bb1aV/iqgp3aA4I/OsJa7AtZILQejTAS/B3DXbv2VxXHUmAR1WT+9
	6Gy35o0FdUarX63HBZPb/BRSPpxPURsQua8aQ=
Received: by 10.150.193.17 with SMTP id q17mr4284516ybf.189.1301354109753;
	Mon, 28 Mar 2011 16:15:09 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id w15sm1584353ybk.16.2011.03.28.16.15.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 28 Mar 2011 16:15:09 -0700 (PDT)
Message-Id: <2639f54ae5c59b1ba15eb05489696db28ca80443.1301351290.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301351290.git.scott.m.rifenbark@intel.com>
References: <cover.1301351290.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 28 Mar 2011 17:26:05 -0500
Date: Mon, 28 Mar 2011 18:15:07 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: removed (YP) acronym
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
X-List-Received-Date: Mon, 28 Mar 2011 23:15:10 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I removed this YP acroynm since we never use it.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index b1040a2..fb06322 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -13,7 +13,7 @@
     <title>Welcome!</title>
     <para>
         Welcome to the Yocto Project!  
-        The Yocto Project (YP) is an open-source collaboration project focused on embedded Linux
+        The Yocto Project is an open-source collaboration project focused on embedded Linux
         developers.
         Amongst other things, YP uses the Poky build tool to construct complete Linux images.
     </para>
-- 
1.7.0.4


