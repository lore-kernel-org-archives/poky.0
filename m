Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD40BE0027D
	for <poky@yoctoproject.org>; Mon, 30 Jul 2012 15:03:34 -0700 (PDT)
Received: by eaab14 with SMTP id b14so1358144eaa.35
	for <poky@yoctoproject.org>; Mon, 30 Jul 2012 15:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=4HyXrE+rgpLRYBXbJsbVtfcfwkHP92MP+80eOqoVh1M=;
	b=U4tFlEWD25dtM6i7mrycrKyxV37hRNO+sbpwevUYe8UlZqmgXoCRcZ/G5vBQiXsaUj
	HXQU3Hsa9GPkLKmY9V/48d0hbA52uVAmp97rShqURktqBC/CDsx85AFBFwbrR+C1i3kX
	Sj1YDlwDC+BimivO5q7+KEp2HKUMtbOKd5cewIZHyjwKN+UmzAdUNPGZ/HnrUqeVJcAS
	vNMIAZuyps02zm9IRkKq+1TrZV/l8VzVxmXwDB/jUQAa6EK+x4p9MHlCzyP+eInhqnBA
	Dur/8PESL8nB5XaKMGTxO3WWQieGD6Rl19DMT1K9aC+bgdJiNXkT/g7OAELBdbF0I4J6
	ESUA==
Received: by 10.14.184.130 with SMTP id s2mr13760438eem.43.1343685813491;
	Mon, 30 Jul 2012 15:03:33 -0700 (PDT)
Received: from localhost.localdomain (095-097-098-131.static.chello.nl.
	[95.97.98.131])
	by mx.google.com with ESMTPS id 8sm31637168eeg.16.2012.07.30.15.03.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 15:03:32 -0700 (PDT)
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 31 Jul 2012 00:03:27 +0200
Message-Id: <1343685807-4157-1-git-send-email-sidebranch.openembedded@gmail.com>
X-Mailer: git-send-email 1.7.0.4
Cc: Leon Woestenberg <leon@sidebranch.com>
Subject: [master] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Mon, 30 Jul 2012 22:03:35 -0000

From: Leon Woestenberg <leon@sidebranch.com>

Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
only iff exists.

Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
---
 meta/classes/kernel.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index ab984e3..1d8dff9 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -188,7 +188,9 @@ kernel_do_install() {
 	fi
 
 	# Necessary for building modules like compat-wireless.
-	cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
+	if [ -f include/generated/bounds.h ]; then
+		cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
+	fi
 
 	# Remove the following binaries which cause strip or arch QA errors
 	# during do_package for cross-compiled platforms
-- 
1.7.0.4


