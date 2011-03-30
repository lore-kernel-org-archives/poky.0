Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A6914C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 09:33:35 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so688886gya.35
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 07:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=ScRPG8IHzsAW4pT5rbMdEze7mM6NiGEt2ijzOuoetC4=;
	b=sV8ljYL2guc3nFOALqqplVWHheD4Nb3hwv86E7KaG4Bf63UnSe9pJXyk0F61vtdLiq
	QjwR6IzXallQRAeQ+5erA9bU5SrZ8vdUQ3Z4cBYNuhPteBiqoXxRMu3+XkXhljkDHMm0
	vRukP8xZKyiXyED/4SJ6pyau7z7UrkGkaBoSI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=obmzw3McZ02sUbKlh9xdNRc3z59S/j1AuEQAbxJUJZAF2sqKu6xwhhTfNV+Xy7KMMZ
	R2+CwgMkg5YAo2W7Gg1Pn5nZmRKWiYRWRk+Ohz72lFUwXyvbN+B0z/5f1Jh/cjj7aTPw
	cOyAWyUAstbldyJ3pDqU/24yZmJvzeQEgj+Ow=
Received: by 10.236.190.33 with SMTP id d21mr1714811yhn.233.1301495615090;
	Wed, 30 Mar 2011 07:33:35 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x58sm67924yhn.6.2011.03.30.07.33.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 Mar 2011 07:33:34 -0700 (PDT)
Message-Id: <9547d7748ad871e1e8425c1ad9eba4fbe3651006.1301495477.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301495477.git.scott.m.rifenbark@intel.com>
References: <cover.1301495477.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 30 Mar 2011 09:17:33 -0500
Date: Wed, 30 Mar 2011 07:33:34 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/poky-ref-manual/usingpoky.xml: [BUGID# 929] - Note added warning about switching up GPL versions
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
X-List-Received-Date: Wed, 30 Mar 2011 14:33:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In chapter 2 where we talk about building images I added a new
note indicating that the user should not switch around using different
GPL versions when trying to rebuild an image as it can cause dependency
failures.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/usingpoky.xml |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 92e3ed5..fc4fbdc 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -163,6 +163,12 @@
         only supported for minimal and base images.
         See <link linkend='ref-images'>'Reference: Images'</link> for more information.
     </note>
+    <note>
+        When building an image using GPL components you need to maintain your original 
+        settings and not switch back and forth applying different versions of the GNU
+        Public License.  If you rebuild using different versions of GPL you can get 
+        dependency errors due to some components not being rebuilt.
+    </note>
 </section>
 
 <section id='usingpoky-install'>
-- 
1.7.0.4


