Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F53AE0072F
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 16:18:44 -0800 (PST)
Received: by mail-ob0-f173.google.com with SMTP id xn12so1567683obc.4
	for <poky@yoctoproject.org>; Tue, 08 Jan 2013 16:18:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=Pl6Wc4KeJ6xGR+g3i2FkTW7E3/jTqPCMYmMnxrlhoUU=;
	b=K5VEUMbqdZKUGIF6yeUTNsSTWY4Rfz6I/0CPhp0bwSfBzIv0RtopshLZfuTQGvmWu1
	VcYLYeY10JzfNJcQYgNrXRoLK5VrN0cQPkFFSbWzoZuKMA5HY4exDF0Q11g2PRHVyS2K
	Dc52TNMq7HaEO3+4hJzT647DGI8nnC2E17It6WRpArFwdzyqadACc3LTTRa05lrDh4vf
	/QEUokn/F0J6Oxo1VfAxpgNzJX2/YgTECLNODSH9IAbWNzvvbndZYpfwQkfk7LJ5RilZ
	nzoMMx7tp0V4Wqp3OpPjjPzZibGRB2CGvIiKrmI5G4/3MUd3AKs7ZD2e3w9pVEbUkJHz
	+G9w==
X-Received: by 10.182.88.38 with SMTP id bd6mr5552695obb.19.1357690723855;
	Tue, 08 Jan 2013 16:18:43 -0800 (PST)
Received: from mlabs-ftonello.masimolabs.com
	(wsip-70-183-20-162.oc.oc.cox.net. [70.183.20.162])
	by mx.google.com with ESMTPS id h2sm34706811obn.11.2013.01.08.16.18.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 08 Jan 2013 16:18:42 -0800 (PST)
From: eu@felipetonello.com
To: poky@yoctoproject.org
Date: Tue,  8 Jan 2013 16:18:38 -0800
Message-Id: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQk2nhErlIpbBkSyxwDzhtlodqyYkZslDgxogE/XOezlQ1ALCHM88Y+nfJb0uR0/IaB5qjj8
Cc: "Felipe F. Tonello" <ftonello@cercacor.com>
Subject: [PATCH] initscripts: added save-rtc to runlevel S
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
X-List-Received-Date: Wed, 09 Jan 2013 00:18:44 -0000

From: "Felipe F. Tonello" <ftonello@cercacor.com>

It is necessary to add save-rtc.sh to runlevel S so the system is updated when
it boots up.

Signed-off-by: Felipe F. Tonello <ftonello@cercacor.com>
---
 meta/recipes-core/initscripts/initscripts_1.0.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/recipes-core/initscripts/initscripts_1.0.bb
index 39be9a8..24fa940 100644
--- a/meta/recipes-core/initscripts/initscripts_1.0.bb
+++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
@@ -113,6 +113,7 @@ do_install () {
 	ln -sf		../init.d/umountfs	${D}${sysconfdir}/rc0.d/S40umountfs
 	# udev will run at S55 if installed
 	ln -sf		../init.d/halt		${D}${sysconfdir}/rc0.d/S90halt
+	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rcS.d/S25save-rtc.sh
 	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rc0.d/S25save-rtc.sh
 	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rc6.d/S25save-rtc.sh
 	ln -sf		../init.d/banner.sh	${D}${sysconfdir}/rcS.d/S02banner.sh
-- 
1.7.9.5


