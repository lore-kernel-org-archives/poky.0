Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web08.6087.1660139777161537320
 for <poky@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 06:56:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=q+yduwmo;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.175, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f175.google.com with SMTP id x23so14303830pll.7
        for <poky@lists.yoctoproject.org>; Wed, 10 Aug 2022 06:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=dv3WdxfhENAYwOz+h12nNxFXfaryJlPDtVaDVGNYQ/s=;
        b=q+yduwmoMHLx/Z7QJdZhps5scMUy3X64LDbZuWG/cFYuxa3EvH30wOidH0iTeWHF7W
         Zr9vHADpDkRPwgwiiG1rFV0plIeM2AkKzadr/Ko/OBHHZK0wB62Pu5Ho+zOLV38ziP1y
         fAo87LoetW5awpcULMtKfgdeEt2/+FiOISfJGSeQb3tmggrV1Soj62Ag2utpk8vnpP1J
         rndWdne+KffraxcP9pqb4TSlqM0LrqsFOipPtqFx53bo0JYVI5hjH9UrfopgqjAM6euf
         g0fgMf40c4StWE3lv+ZzoKe5fSdBg8U5NK4owfmbPJh+pXpc5jL8NAmiXd61Beziibfp
         cNgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=dv3WdxfhENAYwOz+h12nNxFXfaryJlPDtVaDVGNYQ/s=;
        b=US21D8Xj4ytBz7FEOmkx3cTVWs9Z5+w6d9rh45mIFpkLeVFnFKo9qNOpPO0AqzX/7X
         XOddJDVhRPtNCyaYeUJAiZHo7pZAjoR74CG3dEMDuiGWoymJVHXoiCjPX9MNgeU4rjCZ
         G7jOWWVYEoI1YNLIQdtnpI1mQ9v3t5HFeF5wgS3hGBJOVIDY7Q/Gj4EwbK6d43zqkg6Y
         kPzXy+6qP4meV/m4sDsJ7Xw6YuYeOESR6OaCwgjq8k6j/cmWz+Fb0t7DmM3ZCBb9DlVK
         HTRYFKE5lxkVuvWn4nY/XebDdwSId9NqbDdM+NvUjrMSGzzzNvlhHfU6BRWvO/t4Lfyg
         g+yg==
X-Gm-Message-State: ACgBeo3ZANDResLc45DTYA2dFbgxnQCWVjUsKyhgzcJ+vHwPmYpvkkaH
	GXs7xQAdnVIRwkpXxV0wF6YZdmQP05noRRhN
X-Google-Smtp-Source: AA6agR5gK0yGMi/wEXFX4VZcqHRofRT7no4wPHQLfjkmUS/l8hQ/45eG67ga14GEhNMBmqomCVnHMg==
X-Received: by 2002:a17:902:e394:b0:171:3f46:1f13 with SMTP id g20-20020a170902e39400b001713f461f13mr742168ple.174.1660139775958;
        Wed, 10 Aug 2022 06:56:15 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id n5-20020a17090a73c500b001f2ef3c7956sm1616880pjk.25.2022.08.10.06.56.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 06:56:15 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 00/10] Pull request (cover letter only)
Date: Wed, 10 Aug 2022 03:55:59 -1000
Message-Id: <cover.1660139684.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Final pull request for 4.0.3 release.

The following changes since commit 7e21de293e2a36d7f931201fe5fa54954a09e6ee:

  poky.conf: bump version for 4.0.2 (2022-06-29 07:47:57 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Bruce Ashfield (9):
  yocto-bsps: update to v5.10.113
  yocto-bsps: update to v5.10.128 and buildpaths fixes
  yocto-bsps: update to v5.15.52 and buildpaths fixes
  yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
  yocto-bsps/5.10: fix buildpaths issue with pnmtologo
  yocto-bsps/5.15: fix buildpaths issue with pnmtologo
  yocto-bsps: update to v5.15.54
  yocto-bsps: update to v5.10.130

Steve Sakoman (1):
  poky.conf: bump version for 4.0.3

 meta-poky/conf/distro/poky.conf                  |  2 +-
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 3 files changed, 17 insertions(+), 17 deletions(-)

-- 
2.25.1

