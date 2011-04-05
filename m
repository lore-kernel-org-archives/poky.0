Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FFF04C80A86
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:20:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so348610ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=koSF+Y+sAWkY5m/WeVnYTOzKRSrxJ3ZbahFVfsZrHF4=;
	b=a4HuwDxpZJ0JD1APTgmhNJ/+EqtI4Hhkj66tSjiqHHaxuv2Y4U7OQjClYQSZ1CQEU3
	fWad5oZ/RbtVKaqo2IQ9CAiepoz/lacjOcQSfEU0mREQuz77cTMbfc+KwyG/nfbw5C76
	NqXhUmzoNE3+dMMWGV9bE7RotStjVWf5I9uQs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=FIPt+hD+ZIrx1nbQYmcCgcXrsN940MBjx7QWseOqJKNgnYygC8lGiFgATSCBgfiCbI
	FVfof78FKyJtggs3hxp5ByPoZrNH2d18UAqc43WitG7xPme6oexfTkI8bJbn2qI/2Qt2
	FfCG6Tl8BEzG8h9zFIecjz6CN61/oXmWznIZQ=
Received: by 10.150.62.8 with SMTP id k8mr860531yba.92.1302027651926;
	Tue, 05 Apr 2011 11:20:51 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id q34sm227408ybk.18.2011.04.05.11.20.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:20:50 -0700 (PDT)
Message-Id: <a09e75a5990433161e6d6718a474b2adf96d9d98.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 10:47:40 -0500
Date: Tue, 05 Apr 2011 13:20:48 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 01/15] documentation/poky-ref-manual/development.xml: Corrected command syntax
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
X-List-Received-Date: Tue, 05 Apr 2011 18:20:52 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In section 5.2.2. (Building the Cross-GDB Package) there was a resulting
directory listed where you could find the binary.  The directory had
a couple of variables for 'host-arch' and 'target-abi'.  There was
a mis-guided angle bracket wrapping the 'host-arch' variable.  This
was fixed.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index e63511b..5479854 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -719,7 +719,7 @@
                 </literallayout>
                 Once the binary is built you can find it here: 
                 <programlisting>
-tmp/sysroots/&lt;host-arch&lt;/usr/bin/&lt;target-abi&gt;-gdb 
+tmp/sysroots/&lt;host-arch&gt;/usr/bin/&lt;target-abi&gt;-gdb 
                 </programlisting>
             </para>
 
-- 
1.7.0.4


