Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
 by mx.groups.io with SMTP id smtpd.web11.11176.1600521660171346964
 for <poky@lists.yoctoproject.org>;
 Sat, 19 Sep 2020 06:21:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A4IU7NLc;
 spf=pass (domain: gmail.com, ip: 209.85.218.66, mailfrom: toertel@gmail.com)
Received: by mail-ej1-f66.google.com with SMTP id lo4so11696197ejb.8
        for <poky@lists.yoctoproject.org>; Sat, 19 Sep 2020 06:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jkKLhH/BuvgLRlpk28ZT85m6ajqe4UMd2B5p4049d20=;
        b=A4IU7NLcL5JoiziZbdLIAdKKTNREBCu7Z/Uw+UuviY/UARusbnF6vv8XMXyifpbcUF
         buPHd4Tzzm9aiUlBj8HoTMlveRFVkxZITbGUTUJdky/CWWrag8rQ6Rg+87SamoxFbMlZ
         8ARyuVsY6HuRqC8W73lkzipJ44Pez732Le1eX/JyOifnvgc2ixXRUq9ZBDwFwr+0CXoa
         BH+iljr0SKPhaH+IPeZpNr8iEyD1SxpTfQbtXLechzqYxsHTr46Hdqrc4F0sZrK90Clw
         bQYsEle0uvTODenEgL9PHq9hqq9Sf/rs/f9hIY1XGLPBh4xslIARv4f4Zby7IAn0YuNt
         hA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jkKLhH/BuvgLRlpk28ZT85m6ajqe4UMd2B5p4049d20=;
        b=PPDipjGo5SkhOZFpgNuWDdPHjquKfO2pBK8mHeJAUtJ4dIbp+8R4KSvCmVbICJan88
         I+ce4xCaQ5XGjsiE1IXEOOKjdxxw/m1B+xLOSpeUvb2QUZ0x/FaRNUdzGdA5majVp7iT
         q54tIRNjKgJHbdi1Lcxs90se7dsugjFXiCPPg1zDz+Mq/asQDQtfR9XoOxH0VOWqL44Y
         fRZlnKmdbsJ/Xxzxn/Aj/bEa3hk4vFQOGQ2X2Sx8W2GDhs4nMrbCIDLb1gncl5goGhTG
         swTL+qDfFZiZ88HhwS5OX5kNI2CisHGXhdmzXiR7wp2TT8KQ+lhq8v8oaTZ6LO/vRUwU
         tYIA==
X-Gm-Message-State: AOAM531qtA8JromJ4IUFvJ5I4mDezoggeCHh2tQ9WM8Z8Ch5tcZVHqrK
	0yUxqxoEPYVXeY+WvzTrMtrX5zhd6QM=
X-Google-Smtp-Source: ABdhPJwMvUFxujsl3TJwmEov0nELm2wJlqD8GjKdbnKlmZ1C2ujkmrQ7J93Qo62vEjng3Ns28GkPjQ==
X-Received: by 2002:a17:906:ca8f:: with SMTP id js15mr42856180ejb.175.1600521658369;
        Sat, 19 Sep 2020 06:20:58 -0700 (PDT)
Return-Path: <toertel@gmail.com>
Received: from gigabyte.fritz.box (p200300cfaf38d80028ca4d2d40a8faef.dip0.t-ipconnect.de. [2003:cf:af38:d800:28ca:4d2d:40a8:faef])
        by smtp.gmail.com with ESMTPSA id lr14sm4495522ejb.0.2020.09.19.06.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2020 06:20:57 -0700 (PDT)
From: "Mark Jonas" <toertel@gmail.com>
To: poky@lists.yoctoproject.org
Cc: elizabeth.flanagan@intel.com,
	pidge@toganlabs.com,
	Mark Jonas <toertel@gmail.com>
Subject: [PATCH 2/2] Map license names PSF and PSFv2 to PSF-2.0
Date: Sat, 19 Sep 2020 15:19:51 +0200
Message-Id: <20200919131951.11129-3-toertel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200919131951.11129-1-toertel@gmail.com>
References: <20200919131951.11129-1-toertel@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to SDPX.org "Python License 2.0" is the overall Python
license, which is comprised of several licenses. "Python Software
Foundation License 2.0" is part of the complete Python license, but is
also used independently by some projects.

So far the license names PSF and PSFv2 found in LICENSE are mapped to
to Python-2.0. This patch maps PSF and PSFv2 to PSF-2.0 und thus
corrects the impression that Python-2.0 and PSF-2.0 are synonymous.

Signed-off-by: Mark Jonas <toertel@gmail.com>
---
 meta/conf/licenses.conf | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
index 751424d1b6..5b309eb385 100644
--- a/meta/conf/licenses.conf
+++ b/meta/conf/licenses.conf
@@ -45,9 +45,11 @@ SPDXLICENSEMAP[MIT-style] = "MIT"
 #Openssl variations
 SPDXLICENSEMAP[openssl] = "OpenSSL"
 
+#PSF variations
+SPDXLICENSEMAP[PSF] = "PSF-2.0"
+SPDXLICENSEMAP[PSFv2] = "PSF-2.0"
+
 #Python variations
-SPDXLICENSEMAP[PSF] = "Python-2.0"
-SPDXLICENSEMAP[PSFv2] = "Python-2.0"
 SPDXLICENSEMAP[Python-2] = "Python-2.0"
 
 #Apache variations
-- 
2.25.1

