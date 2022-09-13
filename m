Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web12.6186.1663082587653064239
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 08:23:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=i8+RHK0H;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.50, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f50.google.com with SMTP id j6-20020a17090a694600b00200bba67dadso11666325pjm.5
        for <poky@lists.yoctoproject.org>; Tue, 13 Sep 2022 08:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=AHHINqyPsVJ0wiVPoiD6Sg3g7IiQCUg5yAaL6mPpU3A=;
        b=i8+RHK0H6uBWv46gJN42UltH6V33nEZCExaOeOd0L7zSBcGUJcDBMIMlVf00forXkl
         5o3lymTiWfuHnsX9DqpeLPiz37i0uRIZI7R6Tjm4eQruxG+Y1jozTfeMWI0FRpxpNQ6a
         siCvlI8YjO70K2Rb8R4k2AfTMLRQ4huqi2JL3vvoPUJoImvKTG21+OGpeu9w8dMftlKy
         fP3roa69GtUg1d4A3sB/RgWQEQowwaLC6CpvueRRlZ9jvkvmae+2yz6oZL7bf29xhA0S
         NwxJv9wSwh47G1kgl3A/qmV8iRCNgV2rrLZ8E8t3giSWUXa4UyKVd1wEcC3QSepiBN4V
         wURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=AHHINqyPsVJ0wiVPoiD6Sg3g7IiQCUg5yAaL6mPpU3A=;
        b=FtBsKDkUvVoj3smi5FXl3d/zKlmY6AltQ7apzh+TUjhjB+V6Bl8uzFHRSkF5+LQPWS
         x3uS6TjMDsjrpYp+1HR1Alc5EkL/I0O5Y7HaMQK5SBHOhhjcHmUIYCxo0uPcCCKPgWFZ
         BfIqqFh3PiQULtOiZWKYSbdLqPymzgLQ2nIsIbtq+j3uvLgjeZIP+wSOdfE+KzJQy8ZS
         c4rQOtgPcq7JwFkS4dMTCjG3Ax1oO0Udndu2gmeYBh59xKZ4INGSG4gSOfkrFYHC37lU
         SlMxNex9AGmM3xp85h7ACFNI6D0roUe64X8EQYawa7qOQHvANS5hwh/zjev+u7qFVpM/
         DfYg==
X-Gm-Message-State: ACgBeo2ZrLnwIF2spnwTzjReJf6v5DcYtxSZUNtmb5sZjC3J63z1smHX
	Po7fFhBgQcXprQa2TRXu3XmpIhm4ptF04Ijw
X-Google-Smtp-Source: AA6agR53RhM7+FIu26zko/YfGaM/w3SclEgKC1gKEQIWFPjz8YaO7IAvwOdpxpo7Mc6UbsHd/pIyAg==
X-Received: by 2002:a17:902:7481:b0:178:2889:95da with SMTP id h1-20020a170902748100b00178288995damr13982805pll.105.1663082586680;
        Tue, 13 Sep 2022 08:23:06 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id u7-20020a170902e5c700b001782977fbcdsm6097358plf.206.2022.09.13.08.23.05
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 08:23:06 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 1/2] poky.conf: add ubuntu-22.04 to tested distros
Date: Tue, 13 Sep 2022 05:22:49 -1000
Message-Id: <26683a6843204e2863ec5b8939188459121d6a0e.1663082471.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663082471.git.steve@sakoman.com>
References: <cover.1663082471.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Anuj Mittal <anuj.mittal@intel.com>

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit b058ef713f9d2e4bf8822c391a72ee64bdf5e43b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 50ce6ec..ff47fdd 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,6 +38,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-21.10 \n \
+            ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
             centos-7 \n \
-- 
2.25.1

