Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DD4CDB47E
	for <webhook@archiver.kernel.org>; Sun, 15 Oct 2023 12:59:46 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.92765.1697374784126835238
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Oct 2023 05:59:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YMa3vEll;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-32d885e97e2so3562176f8f.0
        for <poky@lists.yoctoproject.org>; Sun, 15 Oct 2023 05:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697374782; x=1697979582; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=/+r/73VFoDxG6Wiwi2ErhfuxGb25GE6Cwiqm4ffdzWM=;
        b=YMa3vEllzVU/4hnPGMT/aKIaMoAufcTNNFRyO50Xvhs1eQMPKI2FfRokVsNYm3Xelt
         JVBkasU3nv/hXfFB9k/4GMwKijISa43Xdy+yTSNaE0DhFbnBE3jTrwQXKeNYBLlaSCSa
         7JvYszRkjBd9IHhUgen6SoYVDKVld9CRa/3fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697374782; x=1697979582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/+r/73VFoDxG6Wiwi2ErhfuxGb25GE6Cwiqm4ffdzWM=;
        b=Pp3dPdFqTJMYL0A+bl3U5fTsuPw2Ck4yfwEPMqkE/iyNpiqRugNwNemPcL7i/Kzone
         Z5gN4lwdqb+MkopzxqHlcaxGPQQidhel+P/SHwBZuxVDleSaTyxBcfNN8LXaWVnQNnor
         lyzKc1PnNX6gJ0eQZw94/Hxw45BT4VxHoWZSjNfxDyDVbw8AZD2dwtYq3yJQ2qtpwAIi
         OcLHjHgKM4aJisaig0gdrryHRh9yoNubi74c71Nl8J+qV5nSGzoCUD9gdnth2WO9rMwC
         mWe/6352YAhi8ABH6YBZn5DpZjX7USRzim/FosRlQBcrp8nEayoEFigr1rTSnR9KZoiy
         ljTQ==
X-Gm-Message-State: AOJu0YyYeF37HA3d9hQqTjEQDe0p60FATTfujRwWNpfXN30fkWBZ7vqm
	lMOy4muMrJdtE2ZRzltDVlHllGnhg39X3ujNe/0=
X-Google-Smtp-Source: AGHT+IFmN02gwL1KKCWVVeqswcWKhL0CksJKrGgjRpvrDy1ApV3dAXr30ED+wK5ScFeooZF6Ez4yyA==
X-Received: by 2002:a5d:4ccf:0:b0:32d:8183:d130 with SMTP id c15-20020a5d4ccf000000b0032d8183d130mr10356459wrt.38.1697374781909;
        Sun, 15 Oct 2023 05:59:41 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7e01:6bdd:8c85:9c17])
        by smtp.gmail.com with ESMTPSA id bg24-20020a05600c3c9800b004053e9276easm4546476wmb.32.2023.10.15.05.59.41
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 05:59:41 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Document new CDN mirror for sstate
Date: Sun, 15 Oct 2023 13:59:40 +0100
Message-Id: <20231015125940.412569-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 15 Oct 2023 12:59:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13179

We have a Content Delivery Network available for sstate, document
this in local.conf.sample.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/templates/default/local.conf.sample | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index f9cb8aa77d1..44b851b9dd5 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -228,15 +228,21 @@ BB_DISKMON_DIRS ??= "\
 # Yocto Project SState Mirror
 #
 # The Yocto Project has prebuilt artefacts available for its releases, you can enable
-# use of these by uncommenting the following lines. This will mean the build uses
+# use of these by uncommenting some of the following lines. This will mean the build uses
 # the network to check for artefacts at the start of builds, which does slow it down
-# equally, it will also speed up the builds by not having to build things if they are
+# initially but it will then speed up the builds by not having to build things if they are
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
+# There is a choice between our sstate server directly and a faster content delivery network
+# (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRRORS lines, not both.
+# Using the CDN rather than the yoctoproject.org address is suggested/preferred.
 #
 #BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
+#
+###SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
+
 
 #
 # Qemu configuration
-- 
2.39.2


