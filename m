Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2624.1576469682458449007
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 20:14:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=hEWx+OwE;
 spf=neutral (domain: stusta.de, ip: 140.211.169.56, mailfrom: bunk@stusta.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFCB5E01145; Sun, 15 Dec 2019 20:14:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 488 seconds by postgrey-1.32 at yocto-www; Sun, 15 Dec 2019 20:14:38 PST
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F26E4E01140
	for <poky@yoctoproject.org>; Sun, 15 Dec 2019 20:14:38 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47bnl83jqHzLW
	for <poky@yoctoproject.org>; Mon, 16 Dec 2019 05:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1576469188;
	bh=7b1CZc0mBQywbjIOOjv6letyFP8sF8XrxQvdWVqbR8M=;
	h=From:To:Subject:Date:From;
	b=hEWx+OwEq0rUPr5U3kQacvPGZ5ekwrAM4NPwNI0RD680ZAvxyXwPApRCQ13GcfVcD
	 SYbzUbJIYCP6yJUE3pGDFl9dTGdcyvoNoBt6kvKRg4kSnqGgRfKgKPJOteazsFkjPI
	 z6VMfWg3OQQyylsSxA1eQ72ZAv5TuoS3SBD2lpfOrLoOG9xpjVqtABE19HB4GiR/+w
	 Z4H6FZOGTOlEuig1pCFv0a2iaZ56JYsNJuB0PrKqUjBU6CS3hCkHohFwKF85RZ1Rbz
	 FBtBH9uABurpsS8To9TRvoZRe1kIGcVeV16aFwjGTFhciU6SkHdfe2PHhs3Q9UtPi8
	 XEqi3eqMh7WH3zfFQ6HAEPGA3quOLczcU2JHYgwk5utije7nh9Oa2vfahIOVXkYQLa
	 Vo0xCz+NOFm9UftrVD8rcHTdTtLWR+EOSAT4EXc3jRu2jPneQhhdN840K0i4uVeL+E
	 cqMWws+OIbZPxfnkxT2cX0UhdKqk87DW+kAd9brHU9IKto/xXtnUzKh+q2+zDpxJb1
	 NT4VaCsJJ3J55MQm/S6tcBeZQUUYc9BCj7RmpmlgGTIDUanKNIRAHebrizzXYxZKtY
	 4Iu4aP34H2dxeBVpyIDj88t2VawDwaK04lnWuxULvhrGRWgYuG83x9KUZhYRJOm6LJ
	 Qj4ukLRLiymyx+NsZTRVr8io=
From: "Adrian Bunk" <bunk@stusta.de>
To: poky@yoctoproject.org
Subject: [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
Date: Mon, 16 Dec 2019 06:06:27 +0200
Message-Id: <20191216040627.29272-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1

Upstream LTS EOL will be June 2020,
and Python 3.4 is now too old for bitbake.

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8a0f28a863..995dd826ac 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-29 \n \
             fedora-30 \n \
             centos-7 \n \
-            debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             opensuseleap-15.1 \n \
-- 
2.17.1

