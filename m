Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.6528.1655529790024081383
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jun 2022 22:23:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D7SOdnwq;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: fede.evol@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id j5-20020a05600c1c0500b0039c5dbbfa48so5234881wms.5
        for <poky@lists.yoctoproject.org>; Fri, 17 Jun 2022 22:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5YSKHF1CEBbWC0HDxnFtpucmlUsDBhf/dWmAo8zQpSM=;
        b=D7SOdnwqj7sFq1dOdgcvnJl/EwYQy0Mr24RAKYwSSKn8QA7GlJ5P9ZIYddznQ5WRut
         Yh8XdDGLGosW9J2d1gfmiyIeAEKzDH7d4NyHDM48Q62CTl9uME6c817BWfiny9SmgIJR
         vQcCuN8cHDljPNiAYD/2OGiPAh5atEscIFCcATq1+Ofht+X5ooejv7tXeKXVxJL1NCSQ
         gm5rYgPzg/dju4NZz/VUXoGGry3IPC53eW26i2ZyxAdVlTMB4vvwo0puTCUxHDNhiwoI
         OH5tz6UC7KBPymW7RV2zdtveKlBfmLkcIdO/cXXnCtZg5NL3k9dorL/TNMtRI/laA/P8
         MB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=5YSKHF1CEBbWC0HDxnFtpucmlUsDBhf/dWmAo8zQpSM=;
        b=Cxm/WW7/7qG848SRh+ZSlE7k2qSEGJGpimcGUVKnHTXMp4/f1Sk//KX3On5FnIJU7e
         StsyVe3p/arjY107vjs2dN+BcgR8faHeD2COoSPWXUopbio+vn89qERP80gM/6WVsHJV
         rZLkoN47aj7eZmOjSxKFKSuecuhXGNZs///NoaLF7FDGYtpEdH81l/FCgQ6B4jJrSd4h
         V9LPbadCsRmFyeTBq7VPAUZKQmdl87KKZ4TEeEhXmTfgGCkb6lI38WI2pzczBgTxdqfR
         tAEXR/Zn6l2jKwBN2gnMfMjfXFBPevO7U4a2zv/U0r5QcvwRVqAuYaE6jj1Ge02s6Ehh
         2jew==
X-Gm-Message-State: AJIora8N8cbzQq8RbUidNmVnwQiaiYm/9p5fsvKfyonVt/iTdHcQZbaq
	tPljb9UvxNOJELkpdQiD6jkEwvTaH+0KCQ==
X-Google-Smtp-Source: AGRyM1siOYmkRArlKcjxXC79AYdKitDcNgMQX2AjUw+gM7IvCWYysy87beN2clMzJOYG+CniP9t55Q==
X-Received: by 2002:a1c:4604:0:b0:39c:4769:3bb7 with SMTP id t4-20020a1c4604000000b0039c47693bb7mr13632629wma.115.1655529788491;
        Fri, 17 Jun 2022 22:23:08 -0700 (PDT)
Return-Path: <fede.evol@gmail.com>
Received: from interzone.fritz.box ([2a02:2455:e62:5a00:cd58:9e10:e01f:52a7])
        by smtp.gmail.com with ESMTPSA id f21-20020a5d58f5000000b002185c6dc5b1sm7599980wrd.108.2022.06.17.22.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 22:23:07 -0700 (PDT)
Sender: Federico Pellegrin <fede.evol@gmail.com>
From: fede.evol@gmail.com
To: poky@lists.yoctoproject.org
Cc: Federico Pellegrin <fede@evolware.org>
Subject: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from specific provider
Date: Sat, 18 Jun 2022 07:23:05 +0200
Message-Id: <20220618052305.304352-1-fede@evolware.org>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Specific provider (ie. RPM or IPK) does "provide" just itself as a
package to the system. This will cause the "-dev" package, which
refers to the generic signing-keys and not the provider specific,
to miss the dependency.

Error case (RPM) when populating sdk:

Error:
 Problem: conflicting requests
  - nothing provides signing-keys = 1.0-r0 needed by signing-keys-dev-1.0-r0.noarch
(try to add '--skip-broken' to skip uninstallable packages)

Examining signing-keys-rpm packages in PROVIDES we have indeed:
signing-keys-rpm = 1.0-r0

But in signing-keys-dev: in REQUIRES:
signing-keys-1.0-r0

This MR will fix the situation bringing the specific provider
PROVIDES to include also the generic package (RPM example):
signing-keys
signing-keys-rpm = 1.0-r0

Likely another way could be also to change the requirement for
dev or just allow empty packages as well.

Signed-off-by: Federico Pellegrin <fede@evolware.org>
---
 meta/recipes-core/meta/signing-keys.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/recipes-core/meta/signing-keys.bb b/meta/recipes-core/meta/signing-keys.bb
index 03463f95f56..d0602cf82af 100644
--- a/meta/recipes-core/meta/signing-keys.bb
+++ b/meta/recipes-core/meta/signing-keys.bb
@@ -18,6 +18,10 @@ FILES:${PN}-rpm = "${sysconfdir}/pki/rpm-gpg"
 FILES:${PN}-ipk = "${sysconfdir}/pki/ipk-gpg"
 FILES:${PN}-packagefeed = "${sysconfdir}/pki/packagefeed-gpg"
 
+RPROVIDES:${PN}-rpm += "${PN}"
+RPROVIDES:${PN}-ipk += "${PN}"
+RPROVIDES:${PN}-packagefeed += "${PN}"
+
 python do_get_public_keys () {
     from oe.gpg_sign import get_signer
 
-- 
2.35.3

