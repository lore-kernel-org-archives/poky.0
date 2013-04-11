Return-Path: <twoerner@gmail.com>
Received: from mail-ia0-f170.google.com (mail-ia0-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E38E014DE
	for <poky@yoctoproject.org>; Thu, 11 Apr 2013 02:32:52 -0700 (PDT)
Received: by mail-ia0-f170.google.com with SMTP id j38so1265750iad.29
	for <poky@yoctoproject.org>; Thu, 11 Apr 2013 02:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=2RyN0Og2TVUlynXXI7lwJyhRgPwPFhJd7gsCGpsQnvk=;
	b=xO6MtRrBaUS3/fBSLeHYbe6SKHJ4cDEtgwbLMknoFe/3Qmi44bKa8ihpcaO5HBv56d
	On95gfhhmzD5cQOMGZgAE5+jjZEDSx1yOsjjl8JXtT/eXhk+N+4vAgvMcbhYL4oSt1qa
	jRJUdkGUGsG7IvdA+zdvXsQh1uCQan98g/6s0EBuspsFgIkKPaAEkM7PQymdB1Xu7h1w
	qru3GDkPQphBSLSNzCl9wRm+e7gZDLNgQsBeAm+BtQbK+azmFVvP9c5Q1m9Z9P8/0KNS
	DaDQw3qJj9ukKjQFjvQ3eG7wMmjyR50z16bQIGD2JLF09CuUTsaAKInlnj01092B+HBz
	HYIQ==
X-Received: by 10.50.36.199 with SMTP id s7mr15888712igj.56.1365672772392;
	Thu, 11 Apr 2013 02:32:52 -0700 (PDT)
Received: from linux-dsst.site (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id px9sm1836485igc.0.2013.04.11.02.32.50
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 02:32:51 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 11 Apr 2013 05:32:40 -0400
Message-Id: <1365672760-20867-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.8.2.61.g7b9a419
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Thu, 11 Apr 2013 09:32:53 -0000

Include release 12.3 of openSUSE as sanity tested. For each of the provided
qemu targets I have been able to "bitbake world" and "runqemu".

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 538f343..02ab400 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -89,6 +89,7 @@ SANITY_TESTED_DISTROS ?= " \
             SUSE-LINUX-11.4 \n \
             SUSE-LINUX-12.1 \n \
             SUSE-LINUX-12.2 \n \
+            openSUSE-project-12.3 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.8.2.61.g7b9a419


