Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BEAC04FFE
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 14:29:06 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.15066.1714660141136010525
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 07:29:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NdIIPLzG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-51f57713684so500456e87.1
        for <poky@lists.yoctoproject.org>; Thu, 02 May 2024 07:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1714660139; x=1715264939; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=EzBIpZ1SWn92E2aR5NUh8x7k9+uayy9w5jGPCt9vy34=;
        b=NdIIPLzGFg09HAUXpUxsUnr2f5kC6QhplXLaGLY3TL3Sn08ICMhj/y1l0nhEfb98vH
         iH3LW7Zccew9uJhOTacqs4iL+wy/aImh4pLSKJSTiBb7oQ2e9oc1wtnGcu4MsAN4M7/v
         rc6aa/m0m/vm+YfX4YWwZ36hvAOWZkPuFrVPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714660139; x=1715264939;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EzBIpZ1SWn92E2aR5NUh8x7k9+uayy9w5jGPCt9vy34=;
        b=FwDvRXKVBSS+8MPOz+04YAOtnVyvD0pKdAOrLeScgIJDHujXkDFjvPaIL5XjZ5Riyv
         mpjOajkWIXd1GGvaVmv+F/UINrkp8tcHbd/puJIAc74eTcpYW5nWrxdZbu9gQFo+NDvL
         jBwT0LilbHb+qEu88+ab6RwSyO7r1fZZsYlTY8VPPXxMYoh5ab6RF20V3rU+0FDW85yT
         St6U1p7E93jD2xk87756AqKTJZmWVJhlv9rjt5yahTdFn2GZi6Z/4YIecKG2rHD6IV9f
         cOHth9IHDYCjnDNmn2C5BIcD38PgVJPFM/h+jKjQNYUSAKqzrYu1tWzhC4mUOyU/9dAw
         9Zng==
X-Gm-Message-State: AOJu0YwUG1CS6dLYKjJcA0ElQSEtCFv+ou9H9JrJF2CzV3PF+4ptAW5f
	t1+i+poJk54BN3SZBvf6SsGqojxAD8GoR8lgUTOM7FQbI6WlCFwymqd3ISYVOxujGOauwO4MJgO
	KIlo=
X-Google-Smtp-Source: AGHT+IHrxt9ycw4iCiogdBrHK4TCab4mx0HGlxYik0x5wkpCzo/MBbTjxWnT/apM9zKIzU3TCoxnFA==
X-Received: by 2002:a05:6512:12d5:b0:518:e69b:25a2 with SMTP id p21-20020a05651212d500b00518e69b25a2mr4650955lfg.45.1714660138814;
        Thu, 02 May 2024 07:28:58 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e92c:f8cd:59ee:48e5])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d588c000000b0034cfb79220asm1398627wrf.116.2024.05.02.07.28.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 07:28:58 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Fix hashequivalence server address
Date: Thu,  2 May 2024 15:28:57 +0100
Message-Id: <20240502142857.3460390-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 14:29:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13339

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/templates/default/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 1a93c9bdcf3..72d35662940 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -238,7 +238,7 @@ BB_DISKMON_DIRS ??= "\
 # (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRRORS lines, not both.
 # Using the CDN rather than the yoctoproject.org address is suggested/preferred.
 #
-#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
+#BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
 #SSTATE_MIRRORS ?= "file://.* http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
 #
 ###SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-- 
2.40.1


