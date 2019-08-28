Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1969CE00D38; Wed, 28 Aug 2019 08:26:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CCAE00D11
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:26:39 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id j16so214381wrr.8
	for <poky@yoctoproject.org>; Wed, 28 Aug 2019 08:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=FC+ORbDeZXYzHYnDzb5h6joY7RY7VDrY1FRR4ide/qU=;
	b=Pj9xd9utATKVGusFJSXzfPnfddK+YCHYrD45vxgpsyr21OARcGArw0tBQNwoMYagW9
	N8TN2AJdw7btIDgG+eL6ZAPjigijQzH3cJnng2+x6lb3s+g1lNy1+Uuh8v3Rkb5zxtJS
	xPdhI+1qPSFAjzGBFpIYEJZ6f0vMTsJSMNBBvpbM9PRMSZN96J/s1tTVtFog2fwaCxTs
	0dQpLY25PEB6Z5KauGxFKsXwPhQSJOD3JsDKjGINMHNaNaLrtnicTJFjzJy+whFiSJpI
	LklV51Fj/9CSQHQ5Er/jEVw/dWj3O6uHj5NFsE8DjHxhlEvop3JdWL4merVl61oKoaI6
	CtDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FC+ORbDeZXYzHYnDzb5h6joY7RY7VDrY1FRR4ide/qU=;
	b=tlpPcVDJ7guNjYw/3XLk6u/b3Elm3yVVIar3KmlTT9xVZCT2nsO9LZjt6hcITnaC2S
	fcbvIjMF2t//LS0rnrl1r4hewCIOFXq6emI2Niu8EahYNOr6G30XcVCpkhavHWpFVX1Y
	jgdQXwAsh+sINjYrJnyvQutDndXG4O/8zFMawf+qlzUHJp0uRMsV5CtgHOloqdwJeFDZ
	sbMzbIBJTZbM/dnCpehaT85Rpq2kSR9JGnk5RerXcZg98cq5HFlq98IIOJzATpbRBNDQ
	fcXREULNIqBafnVYtiVNbx98AYcTBG0gotyxc/QXZ1YXTI80cNZRtgwF+wqLvK/3tekO
	UF9A==
X-Gm-Message-State: APjAAAUcyJNysiigdLOhaXV9lgPHKAZ+DKNYDrTw3XiQKH8N3QDn4/+k
	lz78ikjiwmD3+tc/DHvoP5H6/6Ek
X-Google-Smtp-Source: APXvYqyBvYPksa2rLwJvh9KXPUkkjW0bIVd0U/7i2Y4yzNepeTUq4OtCaqtZ6A6ykyOanvTzghoNsQ==
X-Received: by 2002:adf:ef07:: with SMTP id e7mr5623768wro.242.1567005998255; 
	Wed, 28 Aug 2019 08:26:38 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	d16sm3969770wrj.47.2019.08.28.08.26.37
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 28 Aug 2019 08:26:37 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 28 Aug 2019 17:26:33 +0200
Message-Id: <20190828152633.70910-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] beaglebone: use the default of 256M rather than 512M
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
X-List-Received-Date: Wed, 28 Aug 2019 15:26:40 -0000

This is done for the sake of using the same default
everywhere; see here for details:
http://lists.openembedded.org/pipermail/openembedded-core/2019-August/285900.html

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 7c7b3059a9f..57b799294d4 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -47,7 +47,6 @@ QB_DEFAULT_FSTYPE = "wic"
 QB_FSINFO = "wic:no-kernel-in-fs"
 QB_KERNEL_ROOT = "/dev/vda2"
 QB_SYSTEM_NAME = "qemu-system-arm"
-QB_MEM = "-m 512"
 QB_MACHINE = "-machine virt"
 QB_CPU = "-cpu cortex-a15"
 QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
-- 
2.17.1


