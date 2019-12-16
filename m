Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web09.2636.1576469867022366356
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 20:17:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=lBWMTjTx;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47bp075h1tz8V
	for <poky@lists.yoctoproject.org>; Mon, 16 Dec 2019 05:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1576469864;
	bh=7b1CZc0mBQywbjIOOjv6letyFP8sF8XrxQvdWVqbR8M=;
	h=From:To:Subject:Date:From;
	b=lBWMTjTxeoxCgOoeFE1J975jQDrYwSsh9TIfNtyjCNWHgP0JFn2Wdf97UEaj4bE7e
	 YrrYNmjPD/8DJ0Z3GduzODmyo9zR+Pmd7x3Sjnkdce10EBTu+xCm7QtEkDbjNdvPhA
	 6LaQrwTioBf5EB9EMP5sDDZKeUH4ArRKQdHrGxoViveGAJZRoyZL/gOn0IuQ4V/o5q
	 uAju6C0argbWuQsg+gGfGUHukrvMZXSGzCp/UP0Tn+wXNnZ8eVOLF+jNz9jviU5ECP
	 pM6jiS2qMMCW8By15T34JCygtzCAB+3WX4ETBoW86TVDP19YxLqkYvOXcVwGw3lRQL
	 9wQb52W4wfruoZAPH9l5WDJGCyAn8WqgoXAxfGI3488Cd/RJKKNJaQrVdtyTw1kKU+
	 1FQBp2Qj0R9dUNXOU8SWWoCs0VD7BfO6O4mqH8aWmmwpE7RhXjMicoCyLyY4DYBsVH
	 LiWxBggjQ2SfipRyVhUNFJKoBBiOGgRRUiW3xNpQO9HRhXVm3DbRECgU3X/SLQNtkU
	 8fI1o9GaefZXp4gEV5VrnV0+Q5nt3CYLZ3aPdoDo5c+w2rOqHSl2eDFMMjNgkcqcOU
	 g+Ut31U50+6PXtrZ5t/NsJ2sY4fs2XhaIFK2f2vcZQYGdVriu6VTTxC/1tlUuoWQEF
	 SaaosfLY1T8h7JvuBZOyA3uA=
From: "Adrian Bunk" <bunk@stusta.de>
To: poky@lists.yoctoproject.org
Subject: [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
Date: Mon, 16 Dec 2019 06:17:42 +0200
Message-Id: <20191216041742.29581-1-bunk@stusta.de>
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

