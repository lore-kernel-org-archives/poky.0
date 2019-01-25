Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F322CE00C58; Fri, 25 Jan 2019 11:32:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F187E00C29
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:32:24 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id m19so8650248ioh.3
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Fb9gBfCidwy/eAQuDsKO6o6f1v66K7GdP/FizhjZFt0=;
	b=qnN9HEp2EMJN03prVWW6PbzhuvE7MCNTBeFWsQo3lecgbcUZg584E3G1e5f6y/8AK8
	eFakuiQTWm12+gcws3vRkDC2PHLJB1m5b9nZSBkYoQwf/LTgdkJruXxdCfSLskPr+IDJ
	C7QYg7uJP7dAIrnVmn19uHw1/Hi2rVZv9SsinVbtuI0NBCf2CfvVGjGLT70wau+PyVCg
	M7NpapT3RIRB1aqptpwvb3ZVXhQsu78B/rzoQlwhTtkJlnl7ooP92sXJ+l+LjhfZkcjG
	pfa+KqRyWBhhw8PWNf273l40SAQCG/gHUuIo4FdkHdKUcF06ms5QX1HAbqLVNwmRlg8a
	ileQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Fb9gBfCidwy/eAQuDsKO6o6f1v66K7GdP/FizhjZFt0=;
	b=reJhQPTb9bw0OaeOd4FymDANWWeSLfe92u4zWON3qHS0Fm2IedAG+EqmbqVFSmR5cE
	aAwhOD24DVqg5C6lPZDb9HCfMHqSDb2GRjTKw9yb0Nai3XnZtKvEAIZQDLmEMSp+JxzZ
	HieyV+xEkjdoJKwunK961rb6Gy0Mp1BOprC9h6k9BYZH///QaHBAFmQV48Gs4m/mXb9r
	6rIoOUV+tPrUrTS/8HjrOmUDFwsezRYw6o/wtS+QNlSdL1SA9+DjLI05nTfBapNeTBp7
	+zi4wiN/akMAp/83cUW0zTgXO3h409YbweVEDQvWubomrPtS1NdbJZVB9+Q6YvvAxc4g
	EBuA==
X-Gm-Message-State: AHQUAua8XbIoqZwALz6bvM+D5tBlOm0H/Ori1jle1CTCh/7vWlZp75E+
	V9vL6YrflZ8GbQqF3GOE6ZPR14sDfqUy+4OELNsSMLhaGfQ=
X-Google-Smtp-Source: AHgI3IZ0gbh/IqPQYJigzR0OwR6cbw5ouGsn2NwzR0+Zblf+KKK3R8EEI1/jgc/lOGM2d9/djnsi0h0unvIwJINKPe0=
X-Received: by 2002:a6b:e514:: with SMTP id y20mr1279115ioc.105.1548444743578; 
	Fri, 25 Jan 2019 11:32:23 -0800 (PST)
MIME-Version: 1.0
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Fri, 25 Jan 2019 20:28:07 +0100
Message-ID: <CAJkqNs1bYfi32DSq+=KUOODgygq2gZ9=f+xBGoVA70yTvcrQtA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PULL][PATCH 1/1] lib/oe/patch.py: Fix applying a directory as a patch
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
X-List-Received-Date: Fri, 25 Jan 2019 19:32:25 -0000
Content-Type: text/plain; charset="UTF-8"

If a SRC_URI content ends with '.patch' bitbake is
trying to apply it as it's a patch file.

It causes that if we use git repository for 'patch' package
the bare clone is extracted to a directory
(i.e. build/downloads/git2/git.mirror.org.patch/) which is considered
to be a patch file, so patch.py tries to apply that directory as a patch
which ends up with a failure.

Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
---
 meta/lib/oe/patch.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/lib/oe/patch.py b/meta/lib/oe/patch.py
index 07a40fc50e..3d0b7d7289 100644
--- a/meta/lib/oe/patch.py
+++ b/meta/lib/oe/patch.py
@@ -793,6 +793,8 @@ def patch_path(url, fetch, workdir, expand=True):
     """Return the local path of a patch, or None if this isn't a patch"""

     local = fetch.localpath(url)
+    if os.path.isdir(local):
+        return
     base, ext = os.path.splitext(os.path.basename(local))
     if ext in ('.gz', '.bz2', '.xz', '.Z'):
         if expand:
-- 
2.19.1

