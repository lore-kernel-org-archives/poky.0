Return-Path: <chiachiwu@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E18C88CB6
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 12:56:36 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
 by mx.groups.io with SMTP id smtpd.web11.12391.1686660987808787983
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 05:56:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20221208 header.b=dY9g2N+r;
 spf=pass (domain: flex--chiachiwu.bounces.google.com, ip: 209.85.219.202, mailfrom: 3e2eizakkbjy2780278mk6ee6b4.2ecfeaob8iji.oe2jefhe942j.eh6@flex--chiachiwu.bounces.google.com)
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-bc8c062d542so3787477276.1
        for <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 05:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1686660987; x=1689252987;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=dXfA97NQEmilUIRn3nhDNnbWRdeA4NsJ8uIt2Jzc6M0=;
        b=dY9g2N+rFq9tV838t7bs+MCWrvceyMTu5U3vLbNSK6cRSt0NURos7Qx/Xi4e4QpA3f
         GfU1llTSmbmvjNL4Uh+LrKAshrKPIZ9Q1W8g6ZHaz44T5ZAv3bW4klwSzw+i6p0b84pc
         3AnIHz863EviwkK6PwkAPKbU8Lnep6sXEGCJp/UYmPkamEA4KUrDRY9Q8wbfHzfs3jds
         EGBMrpEWu+OM96lDpfSbAB1Cb8F3qs41wnA4vK4DGQjNLxYD8M9A6DkfzuMJbC6s2X/Y
         eRW8UcIvQKaad8DsgaSeFwltKK6og3iqCnTonz+VgM9AVkt+lA+fJvTw3/HHP4WjvQ1o
         vV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686660987; x=1689252987;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXfA97NQEmilUIRn3nhDNnbWRdeA4NsJ8uIt2Jzc6M0=;
        b=XDWVOmTyN8QJ8nze+hj2RgKK7h675NpOdYziQh7WnTtXpe+8wMeH4bSF5CafF5QZEs
         7vxRUejsT3IgiBJMDjMAaYK5YblzVGiO2qSrNXc7uyHvgxLVscasPKUg8OWbRId/BIGn
         4EvILd+snmw8lL4HxzN93ZEcFt2zU53VkLvSTHUL+Ea9hQl7GG2qB81k9nk2zEkQ9lr9
         Q7qgS/Qhh+8foU5XlMCcDdRB+N+dxCnyJRD4LU8bNX0lCTcLBQ4dzybuICWt76quJqf4
         lC/+FQ9mpcNd4Q91rICk+nPEOReDtde5F5P00Bt5MVgO4gb+xIEE2izuuiCoofivOkZE
         jfxA==
X-Gm-Message-State: AC+VfDyOslUNMtjUSroMcIGlBqIabPlzKj3oSGxu7M52oaS1r5HvIx23
	N6OkV0Ie4SPuoGKCH+OBhhpo60NzbaRl4xsfhVa1MdbXhFIdIaxtNSiJ1aAf8xFB6JhViv29N+r
	/OT3XZzHVsX45FYKRWxqhqjjhyqvHjFlnx1EZs2cMbXe6sXx0WgdTCZBaK9/J7Pxo200PqEvCck
	/F
X-Google-Smtp-Source: ACHHUZ48IecpIn+cxpBkFsIYgpyRn0/nKz9yGtOrM9X+Hd3zPzrY2xr0kUuAye+wRJFiXr5QWQv2mTINvufKAeo=
X-Received: from ovssbuild.c.googlers.com ([fda3:e722:ac3:cc00:3:22c1:c0a8:13e4])
 (user=chiachiwu job=sendgmr) by 2002:a25:ac9:0:b0:bc9:3c66:cf1 with SMTP id
 192-20020a250ac9000000b00bc93c660cf1mr793864ybk.0.1686660987009; Tue, 13 Jun
 2023 05:56:27 -0700 (PDT)
Date: Tue, 13 Jun 2023 12:56:18 +0000
In-Reply-To: <cover.1686657637.git.chiachiwu@google.com>
Mime-Version: 1.0
References: <cover.1686657637.git.chiachiwu@google.com>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
Message-ID: <271614cc517d93437c74e12e4d86d2d3149574ea.1686657637.git.chiachiwu@google.com>
Subject: [PATCH 1/1] devtool: Fix the wrong variable in srcuri_entry
From: Charlie Wu <chiachiwu@google.com>
To: poky@lists.yoctoproject.org
Cc: ryanoleary@google.com, Charlie Wu <chiachiwu@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:56:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13083

devtool crashes when running "update-recipe" and append changes on the recipe.
"$ devtool update-recipe -a <layer> <recipe>"
Traceback (most recent call last):
...
File "/ovss/ovss_quanta/poky/scripts/lib/devtool/standard.py", line 1636, in srcuri_entry
    return 'file://%s%s' % (basepath, paramstr)
                            ^^^^^^^^
NameError: cannot access free variable 'basepath' where it is not associated with a value in enclosing scope

The input variable 'fname' should have the same meaning as the variable 'basepath'.
Modify the 'fname' to 'basepath' and solve the issue.

Signed-off-by: Charlie Wu <chiachiwu@google.com>
---
 scripts/lib/devtool/standard.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/devtool/standard.py b/scripts/lib/devtool/standard.py
index 852672810a..86ca77f718 100644
--- a/scripts/lib/devtool/standard.py
+++ b/scripts/lib/devtool/standard.py
@@ -1629,7 +1629,7 @@ def _update_recipe_patch(recipename, workspace, srctree, rd, appendlayerdir, wil
     else:
         patchdir_params = {'patchdir': relpatchdir}
 
-    def srcuri_entry(fname):
+    def srcuri_entry(basepath):
         if patchdir_params:
             paramstr = ';' + ';'.join('%s=%s' % (k,v) for k,v in patchdir_params.items())
         else:
-- 
2.41.0.162.gfafddb0af9-goog


