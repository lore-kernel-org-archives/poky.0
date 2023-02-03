Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web11.22120.1675456179973527219
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 12:29:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QZqT+jQX;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: george.kelly1097@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id u7so2558775ilg.4
        for <poky@lists.yoctoproject.org>; Fri, 03 Feb 2023 12:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vz19rTnST6fKJbb2IyWpXuFMnwb0EgWoKBFrABPFu1s=;
        b=QZqT+jQX2FJgY0iCzDbUlFQJsQ7C3RDegGpcHg2kZixwfq1Kp6n8jdRFPskL8OHoxU
         e2X42qX3R2IaCgsP0FlDUpFlmgozHCyEv0EC4MN9xQlVBxVxRZVAUsxt+x29PQJAGqCR
         lu54l/NvXFFDrMWQ4nLdn7lgEGf7SJqUvEKb2xB7E9zbNHEyKLHPqEVBIbSFGc1ahCkz
         DNSKIheT9ZOZNLWaEQiKOVEC0ZZZcE3kydsFoaBcFdYS86mY2BZ/SFYnXihzc6D2jCJq
         qmd7ysOfQLzjEN2tK0rvTc0FjGYg6fdeyKlS3eu4M6Y2f+G6TUlgdyh07aPdE3/j2qUm
         IEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vz19rTnST6fKJbb2IyWpXuFMnwb0EgWoKBFrABPFu1s=;
        b=KjCk17uMn9nF00Gr6eJLOGBlFCHVCBjokxqb/d9b9+MyR+Nn6lZfMG9C72CFFh2sBh
         tHExfWEdr/9ncFRDtK/A2cwsscRr2TrQVou8Ov1YytqUTli8/nNCKm5gwBIcIrd/O4pW
         F+Mop2fL0SSTLWp1hFpDEm05xF1UPN+GqoqOTbiXEkZpmFMaJjYnrgBAdoxjBB7z0nn+
         4uacWh1GUnC7vPELNK/q7YLoXnkV0GSn0aGew2PiLlD1gMtxpZBXIX3TgRgSZxGV+w9J
         fOKr36eW7beaB9ozkP6VZhYLKyWLKFaSzQp0HXNYKNFxmkYBUntJToM5wRCpZyV9Q5By
         UNMw==
X-Gm-Message-State: AO0yUKUhimS5wP9PnJunJE8ZK76V37tXnMmzTReR8Dz6rTFpiGV1M+cf
	2Syqz2YO24f+YYDibz5Dt6MjAAyC1Wyx8Q==
X-Google-Smtp-Source: AK7set/FVLZQdcKQQf5He6xHO125+Ck7CoTowfkcUsYDjvbApedTJFcL2I3gAq1JGmEsiHFkNckVSQ==
X-Received: by 2002:a92:7d01:0:b0:312:7ca2:fee6 with SMTP id y1-20020a927d01000000b003127ca2fee6mr4707781ilc.30.1675456196973;
        Fri, 03 Feb 2023 12:29:56 -0800 (PST)
Return-Path: <george.kelly1097@gmail.com>
Received: from gk-ubuntu.. ([50.201.15.182])
        by smtp.gmail.com with ESMTPSA id a12-20020a056638164c00b003a58ae912aasm1172364jat.28.2023.02.03.12.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 12:29:56 -0800 (PST)
From: "George Kelly" <george.kelly1097@gmail.com>
To: poky@lists.yoctoproject.org
Cc: George Kelly <gkelly@phoenixcontact.com>,
	George Kelly <george.kelly1097@gmail.com>
Subject: [PULL] [PATCH 1/1] bitbake: fetch2: Add NODE_EXTRA_CA_CERTS to the list of exports
Date: Fri,  3 Feb 2023 15:29:43 -0500
Message-Id: <c486378d098e4a5cb89b712dbd6b66e9b67f7dde.1675447409.git.gkelly@phoenixcontact.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <cover.1675447409.git.gkelly@phoenixcontact.com>
References: <cover.1675447409.git.gkelly@phoenixcontact.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: George Kelly <gkelly@phoenixcontact.com>

if you are behind a corporate proxy, the npm fetcher uses the proxy IP address already passed in the list of exports. However, it will error if the proxy injects its own root CA certificate. Thus, the NODE_EXTRA_CA_CERTS environment variable must be passed so the user can include their company's root CA as a trusted CA inside node's certificate store.

Signed-off-by: George Kelly <george.kelly1097@gmail.com>
---
 bitbake/lib/bb/fetch2/__init__.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 5a7a6024d1..747356dfa1 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -851,6 +851,7 @@ FETCH_EXPORT_VARS = ['HOME', 'PATH',
                      'DBUS_SESSION_BUS_ADDRESS',
                      'P4CONFIG',
                      'SSL_CERT_FILE',
+                     'NODE_EXTRA_CA_CERTS',
                      'AWS_PROFILE',
                      'AWS_ACCESS_KEY_ID',
                      'AWS_SECRET_ACCESS_KEY',
-- 
2.37.2

