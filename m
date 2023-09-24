Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2048CCE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 12:24:32 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.38322.1695558262340229070
 for <poky@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 05:24:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FXdHqRVC;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: bhstalel@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso817710166b.0
        for <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 05:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695558260; x=1696163060; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Iog1FSuaOgjX1eJdPe/5bviRHz080BUi3MN4XxIG5hw=;
        b=FXdHqRVCUiBxA7S61fhVlu3j0n/YYf+m9n/xTi1eUNHyJMPKA9HEjfEBv6hvCPsiau
         tp5802zBovrAE0SM3RFkruLG30ZYrYpP6tsdDroU9WTvotTAvk547GVigiS4RATt/XLj
         y5BfV7VcHh8X7bC9hMtAnGYQd1og9OCkMLEP2Ic36/05FUfKzRzjZvNLBLqj4k85ulzL
         OsH4ZiVJljSUWH+GsO6dfDOV46xl1AQIfLXSLvEQB8lzheqYS0nxme+3k358mNSgKbGI
         1tihJBtDZf0gX2gBBdDID20xXpxMzPzoEytmgCZb95HvrxFR5G2Z8/zpJzrtm7MqgOfL
         a5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695558260; x=1696163060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iog1FSuaOgjX1eJdPe/5bviRHz080BUi3MN4XxIG5hw=;
        b=PcUfiHEICw7xrvijrzh8Fdh2P60ahrXadZlfiI7KG1ZEe6rzpKfB8lsQz4vmjwcPBK
         tSA9J7z5q6NnnJxqDNcNgT4uSrVbH36MPNv7Wrwz2t/XuGnjKkH/yRcnVA8hbxIF395K
         83/mlpiadP7uoUPpPZ7QRV603COmbDqOqi8wPfYfmmpZK4h66bNhp3nkqWVRv5BMwz3g
         8gjExdq/Yoxz9djTwtRDYx54OFwg+zlt70h8jZVgoSPnmsqRub1TasH1Eig0jnFlkcg8
         AIQVhMcvORAY9aKRj4tAohXQpWlv+9/hHLXCke5F7W40f2VNISUYvdivM+I5XCG+/0Od
         xHCA==
X-Gm-Message-State: AOJu0YwYMRCB2c21+tCO/ernLObQYzLUqHP7oTXMLTHQL+x9M/rqdcxg
	4AM0GsBJ15dl4L4+tapRpvlGSK7OdPBmfw==
X-Google-Smtp-Source: AGHT+IEWRtjs0IHZllxpXHWFl0N2CEEH/VPhn3ejnTmTdmIIRzOkCN4aK/BXfMkIloYTB4rZRZJLdQ==
X-Received: by 2002:a17:907:760a:b0:9ad:e0fb:6edf with SMTP id jx10-20020a170907760a00b009ade0fb6edfmr5845260ejc.7.1695558260328;
        Sun, 24 Sep 2023 05:24:20 -0700 (PDT)
Received: from localhost.localdomain ([196.229.5.216])
        by smtp.gmail.com with ESMTPSA id jx10-20020a170906ca4a00b009ad87d1be17sm4916372ejb.22.2023.09.24.05.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 05:24:20 -0700 (PDT)
From: Talel BELHAJSALEM <bhstalel@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Talel BELHAJSALEM <bhstalel@gmail.com>
Subject: [PATCH] scripts/oe-setup-builddir: Add option to force TEMPLATECONF on existing configs
Date: Sun, 24 Sep 2023 13:22:59 +0100
Message-Id: <20230924122259.2697980-1-bhstalel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 12:24:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13162

Since we cannot force overriding of the config samples created based on TEMPALTECONF variable,
and that's because it may remove any custom configuration done on local.conf or bblayers.conf,
and that's also because TEMPALTECONF is, usually, used to create new builds.

But, when the developer wants to recreate the build after changing the sample files, the developer
must remove the files manually.

I think introducing another variable FORCE_TEMPLATECONF can help when override is wanted.

Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
---
 scripts/oe-setup-builddir | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
index 678aeac4be..3bd3df0930 100755
--- a/scripts/oe-setup-builddir
+++ b/scripts/oe-setup-builddir
@@ -64,7 +64,7 @@ unset SHOWYPDOC
 if [ -z "$OECORELOCALCONF" ]; then
     OECORELOCALCONF="$OEROOT/meta/conf/templates/default/local.conf.sample"
 fi
-if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
+if [ ! -r "$BUILDDIR/conf/local.conf" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
     cat <<EOM
 You had no conf/local.conf file. This configuration file has therefore been
 created for you from $OECORELOCALCONF
@@ -79,7 +79,7 @@ fi
 if [ -z "$OECORELAYERCONF" ]; then
     OECORELAYERCONF="$OEROOT/meta/conf/templates/default/bblayers.conf.sample"
 fi
-if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
+if [ ! -r "$BUILDDIR/conf/bblayers.conf" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
     cat <<EOM
 You had no conf/bblayers.conf file. This configuration file has therefore been
 created for you from $OECORELAYERCONF
@@ -101,7 +101,7 @@ fi
 if [ -z "$OECORENOTESCONF" ]; then
     OECORENOTESCONF="$OEROOT/meta/conf/templates/default/conf-notes.txt"
 fi
-if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ]; then
+if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ] || [ -n "$FORCE_TEMPLATECONF" ]; then
     [ ! -r "$OECORENOTESCONF" ] || cp "$OECORENOTESCONF" "$BUILDDIR/conf/conf-notes.txt"
 fi
 
-- 
2.25.1


