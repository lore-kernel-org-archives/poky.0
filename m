Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web12.7836.1663234158787978245
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 02:29:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GpalMchc;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id bo13so13373647wrb.1
        for <poky@lists.yoctoproject.org>; Thu, 15 Sep 2022 02:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=HLdslObI2/Y7yRNp5iDWEluDr8C+44LY3HzNJTIMLH8=;
        b=GpalMchcGtdUrrNrbZh+eu839lt3hoVzPT07gP0HbDAeQo8VANcAhyJ3BtqY3OJUf8
         vLTGujo/k2rThCzhq8JHbtBuwZX1UFjQiPiZNpCqB4qgFWR4OFtz5BEgglUcqTCo7L0s
         PnBi1psH+60gN6VI/L9XQVsb/xfX6xi1vW0bo2HzgPo4JElU73fChjKXF05vuc8O3dcI
         67i2Eq88b1u7AKJP9+M8t9yD0ZEmFWjLJLrJVatC9n8hJH5XbVPIWsR0zNfPMYex/oWs
         z83Jn1B53IUDlPXR2d0P10k/o801cYQKRDHqbM1KwG2AbI4Tb6J9bpAvMRb8wVkINgxz
         BnMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=HLdslObI2/Y7yRNp5iDWEluDr8C+44LY3HzNJTIMLH8=;
        b=H5PkvBTBFSPdxnhcakR9T65p2I9mg28k3N+oBPBFdQ5C4psj9CRHVe280zAfCfsWYP
         BkDaIPHOQMceGDQpcRJ7QchD+vD8+gbXnY4+o7gcJUgUbG/2mMZK5LCgf3dkSaMfwY1E
         S/K3ZZqg+uJFFWIsT6TflyGY7yJOaM5PK6SenmLV7LUW+CiAiFw4zolrxGOM5D/zOl3E
         6U4FnI86U8naCQCDkiKIWOkx9oZ5OWeYk18GqopS60J6jkc+cal0gcYhTqF0sq4Cg668
         Ba774xsyUbsVa4ChMryfc6sAACO7487ppGoj3jETbqbmTK6aHcO9noUG3sjkIjx30ugm
         iV3A==
X-Gm-Message-State: ACgBeo2ZRzRJAbhDTIL8VaGkTxQzlknqvK+5ohv6MWf4jgpTWTmqNDBP
	/JIkieWrarMPB3eGJmnVv0oWn/2f5fPL7w==
X-Google-Smtp-Source: AA6agR5vwJgm9rgZMGqgEPvEq4NFpe9/RCeTG2UgI69pqs8a8Dq0HxhKGdJmUY19bIELfG/tt4NT0w==
X-Received: by 2002:adf:a3c2:0:b0:228:64c2:6c5c with SMTP id m2-20020adfa3c2000000b0022864c26c5cmr24189519wrb.674.1663234157048;
        Thu, 15 Sep 2022 02:29:17 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id r17-20020a05600c425100b003a62400724bsm2291033wmm.0.2022.09.15.02.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 02:29:16 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] local.conf.sample: correct the location of public hashserv
Date: Thu, 15 Sep 2022 11:29:13 +0200
Message-Id: <20220915092913.3252441-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index b96dc908f4..7be423ffed 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -234,7 +234,7 @@ BB_DISKMON_DIRS ??= "\
 # which will depend on your network.
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
+#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
 #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
-- 
2.30.2

