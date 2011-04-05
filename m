Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 730DB4C80A71
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so347991gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=5FOqA63KMDLHeTHPUaGe8IjEUdSVNVESaegsRQRAuwQ=;
	b=KV1TTTp9xVh4zFroo02uBrujv0465FYL0sRBfFZ7+pQtZG0z97KPO3cog3aKZ2sNgO
	6up6ii3/HqD4DMtNT64Am1OQFbMy3TjVl+CZMaqB6sENgPs5pg5bH1s3hatucMxaEHX/
	Qxmwerdby3EayCnxbS81KEELomkWIeTw7LRTg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=k51dua6s7CXyBHEdLFatZTsSgOgTPe9mz9uIV9VoeSMFRTGH2/5l6tUJlBf4zRWuyt
	CJZ9RJkD/b4ZoVk6LXpPQV6J7sVZbA+QT/vI0+y2WfX2KmBrOxiom2012xqu8C7PD2xo
	049WWlu/hvSue2rUSA4DNI9FXiDRZKQtIe34E=
Received: by 10.150.69.9 with SMTP id r9mr827218yba.427.1302027661252;
	Tue, 05 Apr 2011 11:21:01 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id f5sm228026ybh.13.2011.04.05.11.21.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:00 -0700 (PDT)
Message-Id: <1d9de777019ad69219122b6e7684603bbc0a727e.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 14:46:30 -0500
Date: Tue, 05 Apr 2011 13:20:58 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 05/15] documentation/poky-ref-manual/ref-bitbake.xml: Grammar fix
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:01 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section B.2 (Preferences and Providers) had a grammar error.
It said "An common example is..."  I fixed it.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 8076066..8848190 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -125,7 +125,7 @@
 
         <para>
             Sometimes a target might have multiple providers.
-            An common example is "virtual/kernel", which is provided by each kernel package. 
+            A common example is "virtual/kernel", which is provided by each kernel package. 
             Each machine often elects the best kernel provider by using a line similar to the 
             following in the machine configuration file:
         </para>
-- 
1.7.0.4


