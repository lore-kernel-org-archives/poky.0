Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web09.6780.1655309478050681866
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 09:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LNIIbgo/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id u8so15993889wrm.13
        for <poky@lists.yoctoproject.org>; Wed, 15 Jun 2022 09:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nARvAtPo6DIitFPhxbB4tnteEudc++6gR3NcrSL7oxQ=;
        b=LNIIbgo/jmMUHRF7D8P9P8lwK44DQ71LagT73yOsFipf0Du9Ry0c6zR/y4CIVIwm4M
         vh86jS7RO4MwdqlMdh/HoksLZqWuM7N2IPRoockUdhOt5XSodzyT4hOAsqzBH6tExhDJ
         xRwNqwta1MOmibPa54/fJxj1F4eKAS+cYpqvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nARvAtPo6DIitFPhxbB4tnteEudc++6gR3NcrSL7oxQ=;
        b=4UXPKaJkYmvPTWCqCf0CqyGlZLWXJvKo1YvmV6W8VtVAnBZB/5Ulj+duzmTAm+j6lX
         zKLy6RMNM4lyO2bHitFIF0K8Lps7hjs4KQ+qtv1dfMPeeJXWRyzhc7ERJaoExClDkHa8
         jWl/l/59jFk7g6L4tc1/uke1zw6HfxnwDU/J1Tn+Jf7KddMY9QQ8pZeiTxEKMwczbYzl
         SJNGZTmiFAfQsWQEYnLjoeFncC4/35IyiVDN4tZisBfpKp0d4Nu9g5+9PW48p859WwJA
         IenijCtbzp7o8h6aROjmk7fNLgcuUbfC2p2CYaJePy9FZcgPOzue1dADXl8Kifya+0jq
         i7pw==
X-Gm-Message-State: AJIora9vJzfYhukeQap7GDmpqTwkFy4UTTTMvhKSvsID0NicHa/FK2mO
	2tuyBJatk3Db+tUHcJ2qjqGRms0PQVb9Gw==
X-Google-Smtp-Source: AGRyM1uI7AeHNig1pYmKp2BC9vwLdMr8gorhVxO/XVVDcyMGAj/wIMfOQVBMuYDfLC/a+LIzcSREvg==
X-Received: by 2002:a5d:6d84:0:b0:217:e7af:224b with SMTP id l4-20020a5d6d84000000b00217e7af224bmr560145wrs.512.1655309476270;
        Wed, 15 Jun 2022 09:11:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5217:2b74:ee57:d3bc])
        by smtp.gmail.com with ESMTPSA id w15-20020a1cf60f000000b0039747cf8354sm2881663wmc.39.2022.06.15.09.11.15
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 09:11:15 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH][dunfell] local.conf.sample: Update sstate url to new 'all' path
Date: Wed, 15 Jun 2022 17:11:14 +0100
Message-Id: <20220615161114.99775-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index b555f1d21ef..ea37a801aad 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -231,7 +231,7 @@ BB_DISKMON_DIRS ??= "\
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
 #
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.34.1

