Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BC0ECD4F3C
	for <webhook@archiver.kernel.org>; Mon, 18 May 2026 13:46:22 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8705.1779111975474543306
 for <poky@lists.yoctoproject.org>;
 Mon, 18 May 2026 06:46:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e2Bj3Q8w;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so34703415e9.2
        for <poky@lists.yoctoproject.org>; Mon, 18 May 2026 06:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1779111974; x=1779716774; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=psg/MVlTMfnp3OzwupBuetos3WpJBIyPWR4hRdZlWl4=;
        b=e2Bj3Q8wpZ5m3gDJ5/d1Yeee3p907dV5GdCBJrMhxHgCKKNxcQtRBlgzS01EdbAgAa
         QM1NO9xRpLriCaI7QwpYmjag0Y1CApHlcU5Xi0tI7xSCnuS77zu6m6OJYEkxzfZu6fZv
         /ppamO1YzN9kKGHmbI6k2O8EtWMS1+s7RDaYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779111974; x=1779716774;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=psg/MVlTMfnp3OzwupBuetos3WpJBIyPWR4hRdZlWl4=;
        b=WN8cOSMXjVYX+wdcGgJC0M/bD065OwwahZdXXvM7kTqFGP04ywgotlrZtKOPVfi5eJ
         r9lTySa5Tk2oQpMOhBK/5woxnYvp8D1kUmU2Ml46R+BEJItUCxRVvNaRMjZzXrSbhvQ5
         hxXZekZN0vzR3JH2o5kwdT4FWG9jnjTQV2Rh0RwwJg4lt4KbSbMVo6zacdjvUm6Vxpol
         aroE/uWSB+0lG4dGMY0O1+4/b9v2Ii6buoZy2HoYkBgcOfM9qMWVAV5nkNr3FSQI5bUw
         NMAurmM4RmuWk9gL1BhnWQhqyVt37w9Ebqt37rYHheSIjalvDVpjJa8j1leFxBnay0+l
         H/Hw==
X-Gm-Message-State: AOJu0YyKRlKzxDWfGJTCfI1ut5YQJ25GcMcfQy4xj9sis9SaXMLSVlTw
	2R6R9tu002BAglp9oLx4Ea/qmaYQeo5U8tojeRr9UBk3ZOq7Vh3r+Yb87Sogs5oTqEXkRWkIm9I
	F7dKJ
X-Gm-Gg: Acq92OH+qPYLpgNQxMYM+iqv+4XRxn1u6OoOZxR6c0gDyMAeNfJSEg7UY/54PbvjSqp
	fWLn8Zw5+u5guzuX2gVtpSmhJan7E4GGm4iZ6HoPqqmOv6IlqZlBPzbFUR+W1WP5M47m84Qblez
	XDDBT49YZnnI7wq/D+1OTSLq1syInxLKDBh42yHmwKp/UAuBrwMt4p6b7BqwYAG/K4QAWWuA6Mo
	4D9QpHDX90ublEz6Ss7Yiu0N/J5w0mKWjw8TpBeLFyXqz7kRk/Ad8UNSqnechtBBotYhiLkTpan
	cXXlNLhvItA3ialG8EYC2NO/Fe4sYGrk7ofUWwttWaoyddeI7snintnAoUzPLb+G3qZRoi5Ih04
	92Y9Q+AJ65ElDN3Wfflkh9yKZbcN2BzSMrZixF7cCKYWzRfxij90Z8CDzIuVBZ5ptRN4AP5Rsjr
	YBhSXLjK6XpxsQ93YGlmFfBz2BXp/BJpdslh3f7nnxFz+yDM4n9No=
X-Received: by 2002:a05:600c:c494:b0:485:4388:3492 with SMTP id 5b1f17b1804b1-48fe60ed839mr224476495e9.11.1779111973618;
        Mon, 18 May 2026 06:46:13 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c0c5:308:9c51:e911])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe537c516sm279291845e9.13.2026.05.18.06.46.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 06:46:13 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] layer.conf: Update to use blacksail release series name
Date: Mon, 18 May 2026 14:46:12 +0100
Message-ID: <20260518134612.3569443-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 18 May 2026 13:46:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13919

Now that the new release is available in core, switch to it.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 3b70af51ead..4a444d31046 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "wrynose"
+LAYERSERIES_COMPAT_yocto = "blacksail"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index ee12e304b38..cbb8c82b033 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "wrynose"
+LAYERSERIES_COMPAT_yoctobsp = "blacksail"

