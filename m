Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3C7E4C80ABE
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so348872yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=DCyjM0eecGtevSkWuEiFQEvNnRr1uenXEJc+ZDJt/60=;
	b=csx3RZU0K0yoKuDvD2oN/hVWegi0gfmyBBSOJ7us5JSIhBDqUlQOHD9d9jbBbNPZzo
	Mzooi14dL1XiCvzz74MF9OxpXgk305cB/K3Xgnz+jcCU2J7b+ueH/5TL4547RYcWvZAL
	+ptRkkuW2lvVoABqPvaMVsZMUucOymMs0z4Rs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=bvC4bwfUVy3M4KbqgN3XSaAObFYQv0SI8Mm6VKcwJRn6P+YhCPLugDzhykHzveKv3c
	wWcKGiY3pPwKp+Ef+13J/VGPHEjWxyMDmcSlZHeruLnZbNrPOSnciR9AV1eLbZuOfbXK
	iYqrFnJNg8og+kpfJPaOTo3R8Vj+JNi9L3IbI=
Received: by 10.150.173.9 with SMTP id v9mr859672ybe.168.1302027668479;
	Tue, 05 Apr 2011 11:21:08 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id q33sm2805619yba.13.2011.04.05.11.21.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:07 -0700 (PDT)
Message-Id: <025026e803fa56dbf028cfa58ff0942da877cc4b.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 16:08:48 -0500
Date: Tue, 05 Apr 2011 13:21:05 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 08/15] documentation/poky-ref-manual/ref-classes.xml: Fix to <filename> tag
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:08 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Had to fix the <variable> tag by replacing it with <filename>.
Previous commit didn't work so this is fixing it.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 9082aa7..0cb2fce 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -35,7 +35,7 @@
         (empty by default). These are often overridden or extended by other classes 
         such as <filename>autotools.bbclass</filename> or 
         <filename>package.bbclass</filename>. The class also contains some commonly
-        used functions such as <variable>oe_runmake</variable>.
+        used functions such as <filename>oe_runmake</filename>.
     </para>
 </section>
 
-- 
1.7.0.4


