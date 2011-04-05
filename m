Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D56674C802F2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:20:56 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so348872yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=tPvQSHnNrsqDeZxAYaCQXWk0h+ndVQ9udu2nhq0MEXE=;
	b=eQv5KuZTN+ZIh6TkBzAM9gPvAQGg4L4Mz2Mfb6uj24B5vTHuNVQLd/ifXD8L9PkAZ0
	VncPbuyWPCikxsqNrqc4TnJZlt0fjvqJYv52qkXPWzPrxlKy/lvuYoRgN1eG/abiSWcQ
	jWs/bbDf+D5W1/5/giNUoaODSgzSPN/NzkuYQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=rqI8KbrwTMohaZnFi8+FAHWV2Tgw9B8ZBh0JuGEhk0nIMxDGoBuJSqghulf+Q00k1J
	HPkD4JC0gjSsqEi1Ww/85NCqkWdwCGqfhtUaaaBFeLh0O5EBp+X9V26TDDiryZXlWIWB
	eQ5ifR8P8hHMaH4N9h1+E3C/AqniHWLixqMm8=
Received: by 10.236.184.130 with SMTP id s2mr1466yhm.71.1302027656581;
	Tue, 05 Apr 2011 11:20:56 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id l29sm2955857yhn.32.2011.04.05.11.20.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:20:55 -0700 (PDT)
Message-Id: <aff47490323fe897a253ceb2c9a8d41cbf09f3d7.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 11:50:37 -0500
Date: Tue, 05 Apr 2011 13:20:53 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 03/15] documentation/poky-ref-manual/ref-structure.xml: bitbake section updated
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
X-List-Received-Date: Tue, 05 Apr 2011 18:20:57 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section A.1.1 (bitbake/) contained two URLs.  One supposedly went to
a BitBake site and the other to the BitBake online manual.  In reality,
they both went to the online manual.  I removed the one referencing
the site.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-structure.xml |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 74687c5..7ebf9bd 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -32,9 +32,8 @@
         </para>
 
         <para>
-            For more information on BitBake, see the BitBake project site at 
-            <ulink url="http://bitbake.berlios.de/"/> 
-            and the BitBake on-line manual at <ulink url="http://bitbake.berlios.de/manual/"/>.
+            For more information on BitBake, see the BitBake on-line manual at 
+            <ulink url="http://bitbake.berlios.de/manual/"/>.
         </para>
     </section>
 
-- 
1.7.0.4


