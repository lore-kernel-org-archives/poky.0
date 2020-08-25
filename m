Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web12.306.1598393361286071363
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 15:09:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=h9tHOWAG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id b17so348295wru.2
        for <poky@lists.yoctoproject.org>; Tue, 25 Aug 2020 15:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zhgYbNXAllYZVxSD42uHafd2ZtVzgoyLcnSZBIxAqjs=;
        b=h9tHOWAGmzrP5O1pfZJmICNRoa7e0M9JXa6slFbQEzqP8xJIbGkfQHOJvqCjj+VqGx
         D5cb/KrxmUexMODWHJy2ZnU3dVyccORrNLaR+tF88PoEZxGsL+QA/swjAe4mF6/fgTRo
         YCvifXdjYNpcd9gpKE1le086aQwEPGtYHQJOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zhgYbNXAllYZVxSD42uHafd2ZtVzgoyLcnSZBIxAqjs=;
        b=Zm63KRLke3YZFNWAjGpqt61vvBNjNsNTmHDWZOo51I5iFNBa8hhIQZIXHKm8pL8phc
         fXdGZBrJfDNX+drCxbTEJ3EAT4csXJNT+ng0g68rODUd9pwraNSDaKtoiUtI92qeENIo
         LfQWUhkgXBbnd9WK3RdQOF/xtCJbztTqh9KKr6IsddlHdWy6lKoH1kazE45INiWN+E0C
         5bM29z/4/n6iRfGhjyrriYCfPiM/FbQa1+6p/C84I3mjIf2/eN0JrnnD5LqYCdsa67Gx
         lEcPN8e4KmEWKG2LCkGJQ/cefCK5+09NJOPfz5f6O+PWL3Swe/wYtxTWuEo8SUPk+Ky7
         Au9A==
X-Gm-Message-State: AOAM530q58ptstgltR8XNbT4tR6fNPQxSLseMi2s7yCfPWXezhmV/YZO
	QxPZDwg72cih6ZnLTKLwtCRZHfXnlP2c8fXX
X-Google-Smtp-Source: ABdhPJwr2ADcmOnhGl9UeqMpMfgwu96CXnUICIGFCvDfox3hEHEhtgbtfrEJlEac9oSuxRmA979nSQ==
X-Received: by 2002:adf:e30e:: with SMTP id b14mr12142181wrj.215.1598393359260;
        Tue, 25 Aug 2020 15:09:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id 36sm556263wrs.25.2020.08.25.15.09.18
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 15:09:18 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Document memory resident bitbake
Date: Tue, 25 Aug 2020 23:09:17 +0100
Message-Id: <20200825220917.1445642-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an example of how to enable this to local.conf.sample

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index b555f1d21ef..952443db9d7 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -261,6 +261,16 @@ PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
 #BB_HASHSERVE = "auto"
 #BB_SIGNATURE_HANDLER = "OEEquivHash"
 
+#
+# Memory Resident Bitbake
+#
+# Bitbake's server component can stay in memory after the UI for the current command
+# has completed. This means subsequent commands can run faster since there is no need
+# for bitbake to reload cache files and so on. Number is in seconds, after which the
+# server will shut down.
+#
+BB_SERVER_TIMEOUT = "60"
+
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
 # track the version of this file when it was generated. This can safely be ignored if
 # this doesn't mean anything to you.
-- 
2.25.1

