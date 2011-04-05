Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7877A4C80ACC
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so348872yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=URcFrDsXHuWFhqnfJrGTIRtcSO8nNy7xHWszk9BS/ys=;
	b=TE638mZa7sjqv6rSlSrdGbEseEgtgpsrGqDkxa0dzUQVCooXCkHcmEFPuXRANUKTsg
	r9uClS0GgeyBEwso8KdD7AEcwlRwBoOZJEkrH3aSUF2h5einmMKwG3rS/xHc7Rr6Em07
	g+KQB5G/h0HNBG2zG5H/VnSFf/7spqvM+kNbY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=iPc9gGVWWxF7OuR2nMDB2r88Ngh0L6usn4UTRD+mWuopLEAV/rAU8pR767CZy4iNWL
	rHr2TU1zWBdPsM6RDAg6lq/F1p5kn2enNekzwH8Zjb/e6d21IXadkaFXMRA0nRHAtAGj
	78H2GJPqVO3QLQB79YVzP65FsEX5OTnEw8Q/4=
Received: by 10.236.190.166 with SMTP id e26mr4474897yhn.145.1302027683857;
	Tue, 05 Apr 2011 11:21:23 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id h43sm2956590yhm.22.2011.04.05.11.21.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:23 -0700 (PDT)
Message-Id: <846deefe12219292e569d637c262652a3618c51b.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 18:12:25 -0500
Date: Tue, 05 Apr 2011 13:21:20 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 13/15] documentation/poky-ref-manual/ref-bitbake.xml: BitBake parsing section update
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:24 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In section B.1 (Parsing) it said that BBFILES variable by default
specified the direcotyr 'meta/packages/' as the place to look for .bb
files.  This directory is invalid and needed to be changed to
'meta/packages/'.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 4bea1e4..d870387 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -80,10 +80,8 @@
             is set, usually in
             <filename>local.conf</filename>, and defines the list of places to search for 
             <filename class="extension">.bb</filename> files. 
-            By default, the BBFILES variable specifies the <filename class="directory">meta/packages/
-            </filename> directory within Poky, but other directories such as
-            <filename class="directory">meta-extras/</filename> can be included 
-            too. 
+            By default, the BBFILES variable specifies the <filename class="directory">meta/recipes-*/
+            </filename> directory within Poky. 
             Adding extra content to BBFILES is best achieved through the use of BitBake
             <link linkend='usingpoky-changes-layers'>"layers"</link>.
         </para>
-- 
1.7.0.4


