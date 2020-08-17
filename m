Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web10.42657.1597669305115199170
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 06:01:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rro9siOq;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id o23so17663552ejr.1
        for <poky@lists.yoctoproject.org>; Mon, 17 Aug 2020 06:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/sYTu3TTSx+QuvYsYCM+ictLrQDRDOxlNQ5z7Agn2Wg=;
        b=rro9siOq7uNEl9nCPOXctxMfYmQnXmZTR+hLUZ2QRo27lCOyNtpvjC/hkRwaqb86PZ
         FVMwywu32Q+JTz5RiuU5lMQSHy+l015FUbXIrviR0u430aq26lmjAyJEPvRb4QXnxM2j
         pijar5EtyXoA+m1QysD/wXTMzBZ+554EiqVMJaFp07mCAC91bTHJDMZZwbQVeZdIMdwV
         /0j6u0cDQFTXoVin4Ytlm3mIfzLIaGR1BtHgg4knSvevR5WjA/lgJbDfXDfXUxQSKqTJ
         atxDhOyXJDKthgBs3D5P0ULsT2FUpjchboLxuWyd5rOohI5OW0mKli+T+kRdg54u3AjD
         RSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/sYTu3TTSx+QuvYsYCM+ictLrQDRDOxlNQ5z7Agn2Wg=;
        b=kTjlo5MtwfeRYyRSRaYy3LAbmt9arVKbcA41pFxbL9c6S6OxnmnT4pRl25lWmlTdbj
         I6mS0D63W2wpiJ0Jn1WJh6lSwItSzEcsj9PfvfBLVeJL3TpcdIslTJQdKMdAdWOFPSEq
         kzmqun+Qkk+nAxyaYv7VK+jLpguLKQaEFLPKurgPVBBP/lQlzO0el4+AojHoFfOcjlEK
         Ii/7aIboBRReU3yicnL21vFnpm5oj97pHZW2Vc1VnFbYiBMZzPzQkx0FazoemNC5kPV9
         GWMyBW7EE8y5eIgb94ACapy5vT/x5UWw3M5nZfjbNWCk9nVwmev+pQiNDdMvVvTB79wX
         ZqOw==
X-Gm-Message-State: AOAM5314028CsJYxfHZ6vw5LMDG3OYFd2dQ5f4zUeenuiXWxHgEF1bQm
	IfzHxJZyXhj9c1R9AtRy1W0sGjpppNNWFw==
X-Google-Smtp-Source: ABdhPJzB1BrcA0K7DAGa+DcgZ4rgyfNVfFlhPFFNs0Xmuv8SI0TmtRINQSwkgN/9XRVVJ1tYmkJWHg==
X-Received: by 2002:a17:906:454e:: with SMTP id s14mr14591303ejq.147.1597669303249;
        Mon, 17 Aug 2020 06:01:43 -0700 (PDT)
Return-Path: <vvavrychuk@gmail.com>
Received: from glva-laptop.open-synergy.com ([213.174.19.120])
        by smtp.gmail.com with ESMTPSA id j7sm14231343ejb.64.2020.08.17.06.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 06:01:42 -0700 (PDT)
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Subject: [PATCH 1/2] ref-manual: Fix mistake in base class description.
Date: Mon, 17 Aug 2020 16:01:34 +0300
Message-Id: <20200817130135.3512-1-vvavrychuk@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clearly, previous sentense speaks about definitions in classes which
can be overrided or extended in other classes.

Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
---
 documentation/ref-manual/ref-classes.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 1dcd5fdd03..1f353b3c30 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -191,7 +191,7 @@
         tasks such as fetching, unpacking, configuring (empty by default),
         compiling (runs any <filename>Makefile</filename> present), installing
         (empty by default) and packaging (empty by default).
-        These classes are often overridden or extended by other classes
+        These definitions are often overridden or extended by other classes
         such as the
         <link linkend='ref-classes-autotools'><filename>autotools</filename></link>
         class or the
-- 
2.23.0

