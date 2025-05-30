Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C066EC5AD49
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 21:30:15 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.140.1748640612534620300
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 14:30:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Tqh8mgf3;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-742c9907967so2591239b3a.1
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 14:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748640612; x=1749245412; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bDZZKV0xQSWStTMg6K0olrimceVep3d9AvS2QciPKjY=;
        b=Tqh8mgf3vj5LVFD3TUDVLbFg8HWOX2VfbyAt4hYwVgNuPC6pS+kZc4S5HH21TBbS+b
         Em+Nv8lbCXsRN7Wmbr4gO5YLBQ2dpP7wIf2mVqOqCZe5VXkFShReMwlUyljmW81SGq3X
         g+jOnIjKIo6riOfy//8Pig1ZeTUMteCdhL7sokX1z2QxrHAVvoUxqZF2gYQtQ/1dFw/P
         aV778VO/fhfmDy2m+6n1/Of0pHOoyh/JUFg+wQN2A0pHF1ho9N54boBjWe5XSuDB7dMm
         UBmi3dsO1sk7WlTniPx9O3zbkxrS/hSdsGl/KJE96ZUZwmzh8pvfUr8HllmfmWiiXBBQ
         tL0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748640612; x=1749245412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDZZKV0xQSWStTMg6K0olrimceVep3d9AvS2QciPKjY=;
        b=P800UdK2IcqX4AsOuCbe5E5My8yGhN/cKJj80L95LavIbESMug+m+H0cPAqIYb2YnS
         So7uOeb0tIajMiUffmNBnuedj5V5YbDg9jSaVXNPCf5cxJkDTpCLOtILNjLYu2UjFLrq
         PhP8h8aK5ZIOd5yL931odK00DYTrhcu6cqbNqAMWNxkXr11nY1LoPVB95ConDYPujfss
         t//6iR1TtQ2LgxpZIdlAzv9RdQCM30fVIPdBsaIa9muOBM+UNKc3huih70FtHnzGSpbw
         gL3brE+DCh3rWMrUuOAOUW+2avIJD9CL2YEsNY7xUdalQqOFPeyhURKusAO9NB7AnYCY
         A3NA==
X-Gm-Message-State: AOJu0Yy4mRR4S7imCNE85QqTEDqZMeuHgCIAJyhJrFMZ+PHxeoCsogJc
	0HtJqn4axM5/+ko+hDfoIZ5HHYogi/f0zIeji5qQuDecg+ObQ/LH2g/D/zR+frsvWOJEcIhqmdn
	gyoYN
X-Gm-Gg: ASbGnctzmAW0zfuKr5vQqbeOJqc8SGqTXPG78cclUKFkVS0skRnG3zlEU1O5fWR9tUX
	3p9Isf5FUGKW2WDznmgi6ozp/Bnky7h4aKy1lo3jBJekPNdLEIzwhHjVZu1ByGLsTM/0ObR9lc2
	ztitlcyNFnTQYOJbrTngHydpaMZ1e+ytXt3IBS5WPAf9bySFMhtcwRWFcMVtW1rt6Iazef/CmfC
	FXcffvU0yBHrXXvPfGhKq4rvh/PCX2u4al6f2K3HP7hh55MMZ1WWLI15n/JLpgjqZBGde3PuP+H
	6K56zRAdLfPyqqPcfExqpU8a3uwkVOqSMSCpql12w48F70FUuTSXwg==
X-Google-Smtp-Source: AGHT+IGvx6tUufIBGSqxtV9AamhXYWDwjtB/jIcThIp4UtANk7J1NheFxtBmzFfr2O/F+8cFAAQCRA==
X-Received: by 2002:a05:6a21:68f:b0:206:a9bd:a186 with SMTP id adf61e73a8af0-21ad94f8c68mr6905706637.3.1748640611544;
        Fri, 30 May 2025 14:30:11 -0700 (PDT)
Received: from hexa.. ([2602:feb4:3b:2100:c9d8:e2d0:bfbc:3a26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affd4594sm3488517b3a.152.2025.05.30.14.30.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 14:30:11 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap] local.conf.sample: Switch to new CDN
Date: Fri, 30 May 2025 14:30:02 -0700
Message-ID: <38f539da85530a851434338c4fac0b08d2a0c3d2.1748640534.git.steve@sakoman.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1748640534.git.steve@sakoman.com>
References: <cover.1748640534.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 21:30:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13630

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The project is switching the way handle our CDN provision of sstate objects,
update the URL accordingly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit e5b8e76ba8232860943406e1c53e71b3d2790f17)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/templates/default/local.conf.sample | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 72d3566..b6071e2 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -239,10 +239,7 @@ BB_DISKMON_DIRS ??= "\
 # Using the CDN rather than the yoctoproject.org address is suggested/preferred.
 #
 #BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
-#SSTATE_MIRRORS ?= "file://.* http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
-#
-###SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.43.0


