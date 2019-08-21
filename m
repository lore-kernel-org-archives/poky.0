Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D94B8E00D74; Wed, 21 Aug 2019 03:23:10 -0700 (PDT)
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
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3748E00D74
	for <poky@yoctoproject.org>; Wed, 21 Aug 2019 03:23:09 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id d16so1565811wme.2
	for <poky@yoctoproject.org>; Wed, 21 Aug 2019 03:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=NOuBknzjlxQ52kQrt6ojh4vHyVwks5dUahOHJdMalQ8=;
	b=SQk7Z27szWlOAcHgu2JfVFm7Oa+9ur5qon12WPCTTDY8XB+ueVyXFFRciNNtd05Wrw
	uHmpjBOCKGNvxDLpJzCT/8BfAyU4EzEDQTpd0Dd++laQ+hkAyOQODWgqtpRbsgNZQsfS
	CEBSFif90Ze/S2BMlYQE1qQkOBfWHAmNoKlMRkINV4K0M9r/5MwBrzBZLQD00Gsdhz0/
	noGOS+KwcFgCpqDNYHqb0iYt9CJ+X/suPxLz26klYCA4BPiC/nzeMm6ZIOUfn3GiUDcR
	qz4abpij5TzeZag2LY1BIx8XKCC/yHNnd4KpsU1f1yta5ae6KtueKcgsVfaiSqM/EIi5
	Hbfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=NOuBknzjlxQ52kQrt6ojh4vHyVwks5dUahOHJdMalQ8=;
	b=NEvSWM94AburD4mR9Gd5O8Qwe7QrOapJDGMxTF8IEki0Z1TxARNYW8HN8qHYrHEmNq
	gCjgjRSERAXyoiImQ+10OP+FeiiTgYRmQMblSEmPVfbDd7DOqPzh7zq/igFRIkJczDpE
	LsrD7vE+o7ydkpK79f41MUO07DRBIoh25mUbl/RBVUjha/6RqBYUYAAyLGTkQTe+QkAA
	l6Uc7hagvuggnyLUEgatPs9CrtiNst3JIOzwMu4FM7vohzWhEiqm/wLnYAZNHiTmOHQl
	1VAmexnHPyz411YJYUfiXeG2uvAJR9bBxtZb3S22R7R/hZcmJq2ctfTMDj8M3+2o1NXT
	Gqrg==
X-Gm-Message-State: APjAAAWxLS+tylWnJFEVLq4LWueFny3xIt9/D4/oroD4NpptbW7r+7x2
	Gn9/i10x1AKrbxeb09kTda5TzcjdEXw=
X-Google-Smtp-Source: APXvYqyhs50B/gX70axTkdFxvflt1hVOPjk5N9KmqIvr3EHuve/pTkE7UjQQLXyhI5eDhcTiH7FplA==
X-Received: by 2002:a1c:cb0b:: with SMTP id b11mr5293008wmg.128.1566382988535; 
	Wed, 21 Aug 2019 03:23:08 -0700 (PDT)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id g7sm3472549wmg.8.2019.08.21.03.23.07
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 21 Aug 2019 03:23:08 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2019 12:23:03 +0200
Message-Id: <20190821102303.67921-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] conf/conf-notes.txt: add a mention of common tools
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
X-List-Received-Date: Wed, 21 Aug 2019 10:23:11 -0000

They remain not as widely known as they should be;
perhaps mentioning them in the environment init banner could help.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/conf-notes.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-poky/conf/conf-notes.txt b/meta-poky/conf/conf-notes.txt
index f1a4f4da143..67c177db405 100644
--- a/meta-poky/conf/conf-notes.txt
+++ b/meta-poky/conf/conf-notes.txt
@@ -10,3 +10,8 @@ Common targets are:
     meta-ide-support
 
 You can also run generated qemu images with a command like 'runqemu qemux86'
+
+Other commonly useful commands are:
+ - 'devtool' and 'recipetool' handle common recipe tasks
+ - 'bitbake-layers' handles common layer tasks
+ - 'oe-pkgdata-util' handles common target package tasks
-- 
2.17.1


