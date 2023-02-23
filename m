Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.8899.1677154336900271160
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 04:12:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inovex.de header.s=google header.b=Y4YTv9v0;
 spf=pass (domain: inovex.de, ip: 209.85.128.47, mailfrom: anna-lena.marx@inovex.de)
Received: by mail-wm1-f47.google.com with SMTP id k37so5691053wms.0
        for <poky@lists.yoctoproject.org>; Thu, 23 Feb 2023 04:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inovex.de; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jhttwUq7RKKADOxsAD+erwum/oTjFX8gaIC8afVqA8Y=;
        b=Y4YTv9v0wvtLZZetzfL2s0FdQnPwFW8wmEwDmRkdezpoam23pDYHuYw3A7auuETJmG
         1ial7Ud5vkDl7YCtochGEU+AcVd8Q8OE1SYHtNdFq8Pqrm4UKfZeXn4Lr5sGtQ9YSUOb
         9XDZdrlslbJ/mGTjj/BMh6GhnyaD5o0bbInj0SRKsSkaV/lwwhAfAkBcdUOL6WS/6v8L
         Lr9b9PBYorJS6ssypAiMeYJK/FdZZSYjzPdfEV8rSLo1sd+fcTkwfCsjdSFLXyA1JOOT
         0adgPpq/8z6JA0oYWF3YbFsRjd7qjoQV7QVdffECYodTKUPY3XKrVYPtc0uZOcga8JBs
         oMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jhttwUq7RKKADOxsAD+erwum/oTjFX8gaIC8afVqA8Y=;
        b=Tj2aXmDmgCObsujRIKDi+BlhgCaFYy0qwO3pXyUNr5OhQZeGfixoSyG8sAZ1/Oox6e
         30wC/AdEGMuDd4rMHRrN3VTSDRhJVBige/7heCx2mfzeu1T3J1Q1lLoVR6UTWGb4merh
         PQmA0UWTcfe1znQjkwNNlHnt6vd/5rgRqVhpxjaQX6p2me1e3xk7ugafdBO+gUSd2yGc
         CN1clcYAyyk3lRjUKxW4GLFmP5iEZUTPv52HeAXe1v/StcTREKs0Sm007wQeYlasDCY7
         1Pr+Q/U6B9ju/oMe2HfH6ZpDDNTiOIyVCwUCtqvgxDB0/19Ut3yCqr/MZoSZa/AV0TBt
         4DrA==
X-Gm-Message-State: AO0yUKVDwZcIo9V4zHMW53lAjBjTxStneaOW0KlEAUr7mTl4N5uyOz78
	C0Dn2Je53Rl+IuyGlaeVOFrwFT7N55hJURnbUVbxX2UGbFIFGA/sArN6RYaD7+H4hSsKjsnEb7w
	l1chtThGLEivQ1ONZ2aspxvjSPfRfOq6iQii/x+bRNF+Gqyer1+qyvNGG4fFkvpysRdrZGEddqt
	BSD5GxCgmZyQ==
X-Google-Smtp-Source: AK7set8un5lRmtZ13D7YFWA/8bMCx19jCEtCz0jO+RtF8PxsKdKgPApLOyqjVaJXZsZq2g3o6G7NmA==
X-Received: by 2002:a05:600c:2b0f:b0:3da:22a6:7b6b with SMTP id y15-20020a05600c2b0f00b003da22a67b6bmr9044071wme.13.1677154334960;
        Thu, 23 Feb 2023 04:12:14 -0800 (PST)
Return-Path: <anna-lena.marx@inovex.de>
Received: from Dell.fritz.box ([2001:9e8:386f:d600:e361:487c:564b:e3a3])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c210500b003e00c453447sm11027177wml.48.2023.02.23.04.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 04:12:14 -0800 (PST)
From: "Anna-Lena Marx" <anna-lena.marx@inovex.de>
To: poky@lists.yoctoproject.org
Cc: Anna-Lena Marx <anna-lena.marx@inovex.de>
Subject: [PULL][PATCH 0/1] wic: Add support for F2FS in WIC rootfs plugin
Date: Thu, 23 Feb 2023 13:11:53 +0100
Message-Id: <cover.1677071966.git.anna-lena.marx@inovex.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi there,

Yocto supports generating F2FS rootfs in general for years but
WIC does not, yet.
The patch adds support to do so in the "rootfs" WIC plugin.

Generating the F2FS rootfs follows mostly the way it is implemented
in meta/classes-recipe/image_types.bbclass.
Thereby, F2FS needs a minimum size in order to work correctly as it
uses an overprovision functionality.

Pull from https://git.yoctoproject.org/poky-contrib/log/?h=amarx/wic-f2fs

-- Anna

Anna-Lena Marx (1):
  wic: Add support for F2FS in WIC rootfs plugin

 meta/classes-recipe/image_types_wic.bbclass |  2 +-
 meta/recipes-core/meta/wic-tools.bb         |  2 +-
 scripts/lib/wic/help.py                     |  1 +
 scripts/lib/wic/ksparser.py                 |  2 +-
 scripts/lib/wic/misc.py                     |  1 +
 scripts/lib/wic/partition.py                | 32 ++++++++++++++++++++-
 6 files changed, 36 insertions(+), 4 deletions(-)

-- 
2.39.2

