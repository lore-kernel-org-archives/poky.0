Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43235C83F3E
	for <webhook@archiver.kernel.org>; Sun,  3 Sep 2023 08:55:15 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.24495.1693731310772943735
 for <poky@lists.yoctoproject.org>;
 Sun, 03 Sep 2023 01:55:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=pljBTjTw;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5280ef23593so497808a12.3
        for <poky@lists.yoctoproject.org>; Sun, 03 Sep 2023 01:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693731309; x=1694336109; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2hWwqtHp6N5kbh8Ll0qDqXk2duiSHmp2KdTJzx3CMII=;
        b=pljBTjTwzx98x8keYCSK+9Hcz1SUROC8phNYCsp0xav7WSs9TuncshySHsKM7bFLl4
         /gFUcXAbvtK+rC54iSpWmh7yMl0eV5VBimqNIQYBFfzA8r0SADuSSbfHjuv/DumcSAWT
         12LD2kVuoRXJ8AtG1klIctWp3hLnNSf8rN++djXiz1Dtb2T8ng/SIyeiBgzfpC9YX184
         PxElXzHuOMA+iUcakfzgrtFydDZqrcuaHzoq0lxW0iP5nQzt+VtrP5N17jsTLPKQzd6v
         0x0lOcMKCzFOEFPN2CPZBbxS7d+Ne1BUEARu0P8c0pbyvsfwXsSCpzfu6xdawt4qr3mB
         CnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693731309; x=1694336109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hWwqtHp6N5kbh8Ll0qDqXk2duiSHmp2KdTJzx3CMII=;
        b=BcbavR6MHP4E7o/dUQQ1AnsE1bvLOV4k6U7S55cn8q2Bud5sWwTBWgri6ri1gek+wO
         nls+Grsj84NRvJ78GNBcb4hVMBa6xa/KTzxpkTcNrpmDder48stDuuAisgOIvaCU72za
         Q7dev8DMtOJEm2Wsu8KRSrTGZYUhRyVMXRz8zbu4hM+GRcpa47B+mt3UwjE/DSZU6MLh
         tZvn5hINUuD2wHGkBMK1+ElGb4Is898E1bEre44l6Cm4i1NwJR0zurBYKpeP4lHsN0uE
         bhBruSSF/UYGW+9IXoPZdDD1HLSxMTy/kjvL4xqz7l5lxjD1D8JMjA0EvRzL6T39sqIG
         TKAA==
X-Gm-Message-State: AOJu0YzaqpTC8UNfemCQygnikJvY96D1QuJRXUyDaNEs9wLMudRl2NgK
	7v7x0R4VmenkHjnmR5sS/rozq1EcCQ8=
X-Google-Smtp-Source: AGHT+IGdAsJRqVersfMFoX+onG0odqCDBXhsAoePZQwi8dfvNOIuqDBUfu15uSa9YbnLVJBYqZnZuQ==
X-Received: by 2002:a05:6402:1f86:b0:52c:9f89:4445 with SMTP id c6-20020a0564021f8600b0052c9f894445mr1705951edc.21.1693731308805;
        Sun, 03 Sep 2023 01:55:08 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id n10-20020aa7c44a000000b0052a3edff5c3sm4270171edr.87.2023.09.03.01.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Sep 2023 01:55:08 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [PATCH 1/2] Makefile: remove from top-level directory
Date: Sun,  3 Sep 2023 10:54:42 +0200
Message-ID: <20230903085443.684963-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 03 Sep 2023 08:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13146

* https://git.openembedded.org/bitbake/commit/?id=a7c47f1eac8caac607a2b5f12d07235dff4d740f
  was somehow badly imported as:
  just a rename from bitbake/doc/Makefile.sphinx to Makefile:
  https://git.yoctoproject.org/poky/commit/?id=1fd9c4b2c0ae927df29f7a0d34c3e595bcf48e89

  The missing bitbake/doc/Makefile was later restored in:
  https://git.yoctoproject.org/poky/commit/?id=415962ad94149de121a1c01215073a52bb54dc14
  but the doc/README change is still missing in poky

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 Makefile           | 35 -----------------------------------
 bitbake/doc/README |  4 ++--
 2 files changed, 2 insertions(+), 37 deletions(-)
 delete mode 100644 Makefile

diff --git a/Makefile b/Makefile
deleted file mode 100644
index c9518558bb8..00000000000
--- a/Makefile
+++ /dev/null
@@ -1,35 +0,0 @@
-# Minimal makefile for Sphinx documentation
-#
-
-# You can set these variables from the command line, and also
-# from the environment for the first two.
-SPHINXOPTS    ?=
-SPHINXBUILD   ?= sphinx-build
-SOURCEDIR     = .
-BUILDDIR      = _build
-DESTDIR       = final
-
-ifeq ($(shell if which $(SPHINXBUILD) >/dev/null 2>&1; then echo 1; else echo 0; fi),0)
-$(error "The '$(SPHINXBUILD)' command was not found. Make sure you have Sphinx installed")
-endif
-
-# Put it first so that "make" without argument is like "make help".
-help:
-	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
-
-.PHONY: help Makefile.sphinx clean publish
-
-publish: Makefile.sphinx html singlehtml
-	rm -rf $(BUILDDIR)/$(DESTDIR)/
-	mkdir -p $(BUILDDIR)/$(DESTDIR)/
-	cp -r $(BUILDDIR)/html/* $(BUILDDIR)/$(DESTDIR)/
-	cp $(BUILDDIR)/singlehtml/index.html $(BUILDDIR)/$(DESTDIR)/singleindex.html
-	sed -i -e 's@index.html#@singleindex.html#@g' $(BUILDDIR)/$(DESTDIR)/singleindex.html
-
-clean:
-	@rm -rf $(BUILDDIR)
-
-# Catch-all target: route all unknown targets to Sphinx using the new
-# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
-%: Makefile.sphinx
-	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
diff --git a/bitbake/doc/README b/bitbake/doc/README
index cdbb23776ee..d4f56afa37c 100644
--- a/bitbake/doc/README
+++ b/bitbake/doc/README
@@ -47,8 +47,8 @@ To install all required packages run:
 
 To build the documentation locally, run:
 
- $ cd documentation
- $ make -f Makefile.sphinx html
+ $ cd doc
+ $ make html
 
 The resulting HTML index page will be _build/html/index.html, and you
 can browse your own copy of the locally generated documentation with
-- 
2.42.0


