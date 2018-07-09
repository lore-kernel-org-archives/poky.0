Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A5EAE00EE0; Mon,  9 Jul 2018 07:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0426FE00ED0
	for <poky@yoctoproject.org>; Mon,  9 Jul 2018 07:59:39 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id q10-v6so11333704wrd.4
	for <poky@yoctoproject.org>; Mon, 09 Jul 2018 07:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=aIDqOlza91HTkwwLs+KAK3z5oDENmlD7FK0PBzcwUYU=;
	b=cjGUjDIqOGmEl4GLAy3MZwUgK5ICYzTGwMf7v8xW9kw4US1Sj5Tn/c55usNb8VvTH0
	/q31qt7BtzhA4JgLznJEi5kWUNnPV3OPqj/jKzRvFC7W4+t+cg85s2w+r1Ymy51cc5hE
	KI/dC0o2CNeI8BnZdvE8I30Rv1po34PNht4NFSlkFeLtI2pV4AD+OIrl25zLNGLPuyCq
	HsD8a2NsJsrPLtKvA4Eq5S5d/P+Mi6fYcAHRxjrpdJHUnUkVAiHpyK+/kOa9BqC8ckjQ
	sF9RdKLIi/aWc5PCrXNuKlNea+DGRSeDJQwGfH3TE/tD+c+2KvVRjGFwtZMl63skD7kK
	jM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aIDqOlza91HTkwwLs+KAK3z5oDENmlD7FK0PBzcwUYU=;
	b=Uo+wzX7vtV4JJ06bPlA4tRbzhxxzDHmxPrN3YAAV1UawZY6hPNlha01+Yly/HGGyd1
	T6zTyNebtQ8LIIjcBcXK7SDO8c86IoYbIyZSnXg1X9QQqRikFREDUKbgFadiy7o6ndSL
	p6C5mE7ZG+eGIlWWDmLGsUHf14i6X5zl00oCwx20W4tX/6Omh+besJlDSW5+b0gNIQib
	D7QkaJAR0AVTRtQ/ptf073Uly4dOrgpa1IUkiVFr5tB6kHAPkSRDruzJ3aMdx5eRQBkI
	RmSgDTgdDtGGF/e2Y9JXDFRiYkzvMv45KdIH0VfZqjzI/zmBLBB62op+Ag9CSRfghWhH
	cd6Q==
X-Gm-Message-State: APt69E15hphR33V3r3eZvSDsP84HZY67oXsP2KOcZvCarW/33S5e7JYT
	SkvO0hd7J6itd9eKAIa6g/xOMQ==
X-Google-Smtp-Source: AAOMgpcEFc7oSTuJ3NdGDYwR8nGy4rbHZ3UJ4PyKTnJnlMw9HN3ZMrxhHNIgh68hhSO8u0MplHEu5A==
X-Received: by 2002:adf:c321:: with SMTP id
	n30-v6mr14648779wrf.235.1531148379059; 
	Mon, 09 Jul 2018 07:59:39 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	t10-v6sm11433792wrs.59.2018.07.09.07.59.38
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 09 Jul 2018 07:59:38 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  9 Jul 2018 14:59:36 +0000
Message-Id: <20180709145936.19918-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH][meta-yocto-bsp] meta-yocto-bsp: mpc8315e-rdb.conf: use mpc8315erdb.dtb without the KERNEL_IMAGETYPE_FOR_MAKE as a prefix
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
X-List-Received-Date: Mon, 09 Jul 2018 14:59:41 -0000

* fix the issue with newer kernel-devicetree.bbclass as reported by RP in
  http://lists.openembedded.org/pipermail/openembedded-core/2018-July/152594.html
  with changes from
  http://lists.openembedded.org/pipermail/openembedded-core/2018-July/152560.html
  the bbclass no longer creates the dtb files prefixed with
  KERNEL_IMAGETYPE_FOR_MAKE:
  deploy/images/mpc8315e-rdb/uImage-mpc8315erdb.dtb
  use the version less symlink:
  -rw-r--r-- 2 bitbake bitbake 9.3K Jul  9 13:30 deploy/images/mpc8315e-rdb/mpc8315erdb--4.15.18+git0+45c256a5ca_0b32edc46d-r0.2-mpc8315e-rdb-20180709125726.dtb
  lrwxrwxrwx 2 bitbake bitbake   84 Jul  9 13:30 deploy/images/mpc8315e-rdb/mpc8315erdb.dtb -> mpc8315erdb--4.15.18+git0+45c256a5ca_0b32edc46d-r0.2-mpc8315e-rdb-20180709125726.dtb
  lrwxrwxrwx 2 bitbake bitbake   84 Jul  9 13:30 deploy/images/mpc8315e-rdb/mpc8315erdb-mpc8315e-rdb.dtb -> mpc8315erdb--4.15.18+git0+45c256a5ca_0b32edc46d-r0.2-mpc8315e-rdb-20180709125726.dtb

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 72f5291..eae8157 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -32,4 +32,4 @@ JFFS2_ERASEBLOCK = "0x4000"
 
 IMAGE_FSTYPES += "wic wic.bmap"
 WKS_FILE ?= 'mpc8315e-rdb.wks'
-IMAGE_BOOT_FILES ?= "u-boot.bin uImage uImage-mpc8315erdb.dtb;dtb"
+IMAGE_BOOT_FILES ?= "u-boot.bin uImage mpc8315erdb.dtb;dtb"
-- 
2.17.1


