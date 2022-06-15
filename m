Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.6840.1655309499613697181
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 09:11:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BJuTXnhh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id m24so16000452wrb.10
        for <poky@lists.yoctoproject.org>; Wed, 15 Jun 2022 09:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bKBYeFa29wdyP0vhYMBDDuwm/VeMwetl0TcnDQlWW38=;
        b=BJuTXnhhpyCI5kTVJdLIex3NuqjBimHSE252jN0J+qt+OEE7cldfmbu/niqJXreH/f
         DXgYWlw5cuZgumSlLyhvW/+pnsfgzqP1OTC+CiiWH8Zui/6DLs4wP6AfvFHHpO8SLo/p
         ULfbC5Jkhx5lbV1wJzrFqAZdTZ3H/Ac+LzPJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bKBYeFa29wdyP0vhYMBDDuwm/VeMwetl0TcnDQlWW38=;
        b=qJ1iqlFRssr2ghD3inzV+UZH02d/i7luH6Q9yZtrhdO4nzpsbJWl3ntZirfr2Ktsvp
         +v8IKoeAMpDEeiMoqrZOvcrttXgYIeQIK9QfsT2IC5wtBImx5AuANb5lhh1wgcygop21
         Xh68HT/JViPxc5H9L75F72/xtZlTF+tCVmD2F6317gU8BgqahsEkZ0lxFJX/Ltm++E1f
         Dw8o0v/0rBJOdMW8Cw3i+kwcMo+2ZnQhOk2IlKUBDgyEmK+zccgOJSY46bIWo2RcCx/W
         TrpfHDnXOa10oQjTXFSC+NfD8Uu5FSk8iDtBfcUv/MAzqIN5DoMv6HDFwIHFtwriRVie
         exXw==
X-Gm-Message-State: AJIora9I7zr8UMdxvbkVdx5yUyquGJVb4u7v3obxv/tndIN8o6EAv8ts
	oScs2dQkjH6bwOWW/C1NaP44N7l1yQ3vhg==
X-Google-Smtp-Source: AGRyM1sToghbUimitxfsICTjoqGyT2VBXvSfLm/58IP6XJo/wewVdSo/+S5K0rKwqmU6t8naEksOEw==
X-Received: by 2002:a05:6000:1446:b0:218:5a5d:6cb5 with SMTP id v6-20020a056000144600b002185a5d6cb5mr479328wrx.629.1655309497883;
        Wed, 15 Jun 2022 09:11:37 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5217:2b74:ee57:d3bc])
        by smtp.gmail.com with ESMTPSA id d19-20020a05600c34d300b003973d425a7fsm3244480wmq.41.2022.06.15.09.11.36
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 09:11:36 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH][kirkstone] local.conf.sample: Update sstate url to new 'all' path
Date: Wed, 15 Jun 2022 17:11:36 +0100
Message-Id: <20220615161136.99837-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index d92aa0ef875..ae9c87f4b2f 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -230,7 +230,7 @@ BB_DISKMON_DIRS ??= "\
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
 #BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/4.0/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.34.1

