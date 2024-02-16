Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37907C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 11:52:20 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.16943.1708084339324489359
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 03:52:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bG3VKiYW;
 spf=pass (domain: gmail.com, ip: 209.85.218.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a3c1a6c10bbso247717066b.3
        for <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 03:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708084338; x=1708689138; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WihegPldfZQm+t9lIPwlXWgee/iBt94H1zi1JWrQU+4=;
        b=bG3VKiYWaAdwn0HpJ3U+YRKYita0Rc+YHGcPO57kxYpDLliQjPGu/k2XA4CxGaMsca
         7AmpGGIsVweps9GKzXhoHANwF1OZ+gDEH1LrsmocCtKnRd58/l59OfbIeuZPeugab8uK
         0YOl6YauZBGkFds6BfARkOWMBQjV+BGGF7/nN7V96n0i7eR47ktKCfpkW0TkfLA6VM34
         31BuAEX6Yos8nYoJKa0qupErx3IJxT8CmKrKf2VaO1rwPJpSyOnhtIsUNYloItNJLp2t
         LKrEYofx1KkNY92WF51tG6f0kEZpA2X2oqsTh6LLERIU/Bwfwp1+5PHWMsTrwPbjz11e
         P8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708084338; x=1708689138;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WihegPldfZQm+t9lIPwlXWgee/iBt94H1zi1JWrQU+4=;
        b=PXO+ihH4yRtcaoQNW+QDmQsgCQFnZWdXxzKEffYWlJKl9Qdpb6TmGxkELDJ5ScyB8G
         B0+LiANgNA2JllB/ZYMuUYg2EIcLVsRTqRE+QW/koNW80w8z/zeW09ckVUcEON7PAPaB
         0Xdudv+CB64scykQko/AZB9Rk1OvpWBRTQnHRiVN/psf/sT+TCY+67SpQaFohmqLKW2D
         x1+myxZ93cI8YcZcMdLtuzOp+SGTvcVlvu/NcqhESik1Vl7+ICmekTlAnJAGF33qDIfT
         XRbHtR3RBYUmuYP0T1imT4ZnyqwlTJZ35amjZU2So+YV5mwxX59ems2EMf0id7OQSax4
         xK/Q==
X-Gm-Message-State: AOJu0YzlWpXIszSmuGdFRY4n7Wa0xuTC4i7f1eUu0esPZH8eRNEa1GV6
	GDzyYSnh1OV+NLHU0FVX67PKgbc3wukKf47WC/izIA1IAHCsMc+A7L2J1kC0
X-Google-Smtp-Source: AGHT+IFDLw9KwT7gc943B5ysNJicg696s4Z5ZqlnQns8xVYeQHV0JjujpVIkUOEncQXbAt4XPKZJWQ==
X-Received: by 2002:a17:906:b0ca:b0:a3d:482e:9725 with SMTP id bk10-20020a170906b0ca00b00a3d482e9725mr3829673ejb.0.1708084337523;
        Fri, 16 Feb 2024 03:52:17 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id e25-20020a170906081900b00a3d197339dcsm1476369ejd.106.2024.02.16.03.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:52:17 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/2] meta/conf/templates/default/conf-notes.txt: remove
Date: Fri, 16 Feb 2024 12:51:52 +0100
Message-Id: <20240216115153.3342614-1-alex@linutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 11:52:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13255

This is present in the poky repository, even though it should
not be:
https://git.yoctoproject.org/poky/tree/meta/conf/templates/default

I couldn't find which tool leaves the file in place when combining
oe-core/bitbake/meta-yocto repos into poky, so this patch is rather
a request to point me to where it happens (or just fix it directly there).

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/templates/default/conf-notes.txt | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta/conf/templates/default/conf-notes.txt

diff --git a/meta/conf/templates/default/conf-notes.txt b/meta/conf/templates/default/conf-notes.txt
deleted file mode 100644
index cfd1f1977bf..00000000000
--- a/meta/conf/templates/default/conf-notes.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-
-### Shell environment set up for builds. ###
-
-You can now run 'bitbake <target>'
-
-Common targets are:
-    core-image-minimal
-    core-image-full-cmdline
-    core-image-sato
-    core-image-weston
-    meta-toolchain
-    meta-ide-support
-
-You can also run generated qemu images with a command like 'runqemu qemux86-64'.
-
-Other commonly useful commands are:
- - 'devtool' and 'recipetool' handle common recipe tasks
- - 'bitbake-layers' handles common layer tasks
- - 'oe-pkgdata-util' handles common target package tasks
-- 
2.39.2


