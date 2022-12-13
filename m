Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.63832.1670898977605084844
 for <poky@lists.yoctoproject.org>;
 Mon, 12 Dec 2022 18:36:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=c2vHn5Km;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.46, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f46.google.com with SMTP id b13-20020a17090a5a0d00b0021906102d05so2032486pjd.5
        for <poky@lists.yoctoproject.org>; Mon, 12 Dec 2022 18:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DqnWDtab4d6y+3XO3MAGvLLdrLAxfIEskjWg2seX/n8=;
        b=c2vHn5KmPf+ZOrSSqekej656SveGBJVZuuKVcT1r49pOiXjqaw9ssmeLurgbwXZzVy
         dMGpC4kcetuf+HKB9++BtqeQbNZiaknBtM1Et9NnxR9p39J+jYCBlfr8CgThYiAYkKxT
         iS+dinLKRyT5kUsB1dxH9zsEb3h2D461f8GJmNxNkBWdZhsD7sA4dgiHPmsTEw/1sCsY
         F8zaWz5Y5MDsxm6ITvHozFGwnOWhLezQ3zg8wDtuRBteYT3P06rc+5EmgxAdCH3oJ9NR
         W6A2WsO329KutXuDOFVwwuGfTdrbRc2WbbsWFQ5Nn6dwOohoFPTtKxPsbCHwZQE3AAr9
         q5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DqnWDtab4d6y+3XO3MAGvLLdrLAxfIEskjWg2seX/n8=;
        b=4obqrDApUUgKfcttPLfav/xyeuf+JNhJxVrZFRp/U8Kiry8/+zILxxCR3yrUwOXtFO
         G3bn5nvedtz7PEP2BZnOEfvp66mVJvIpxRt62pnaSv7gZ7LPUOqcuUgTT8OLsbXU+10A
         ity2nQIfnZeJKoyz8+8obuN841YXVkAqNhOY8PadN16zBRX7COe6TycZEs2tYHf9qpS5
         7E9Ou7BxG+JD8wwH/D+/qcGgV5JyFw0xPYDlg3MoInosSndbF4pMCsZ12i5cdMBQ8vS6
         QjINNaCmRpTNERRSVUG8IfGYczmQbAxOo0CU8p2AhSoXacRzKX//2sQ5CQ4Mog+B09fJ
         asMQ==
X-Gm-Message-State: ANoB5pmVXUhEPPPk3tdJXAxIVXnuEKDfNzjWIsqZEinSCd7XxvIeUahf
	zE3ROggIjEWWmh4PfC9t0D9jcXQFiO6+I2b6K4iQOQ==
X-Google-Smtp-Source: AA0mqf59aOFLOltdiULFmLXJOtPE5RiAlVyqUqgUfYQSUgeLYbZjafDxGjzZURYhhvbz0NiURfiDNA==
X-Received: by 2002:a17:90b:4a8c:b0:219:e763:1d21 with SMTP id lp12-20020a17090b4a8c00b00219e7631d21mr19517038pjb.5.1670898976280;
        Mon, 12 Dec 2022 18:36:16 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id o8-20020a17090a678800b0020087d7e778sm6102580pjj.37.2022.12.12.18.36.15
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 18:36:15 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/3] Pull request (cover letter only)
Date: Mon, 12 Dec 2022 16:36:10 -1000
Message-Id: <cover.1670898874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is the final pull request for the 4.0.6 build.

The following changes since commit 8f216dca2fda2c8862f81dacdcf11df3118b31b7:

  poky.conf: bump version for 4.0.5 (2022-10-24 04:32:55 -1000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Ravula Adhitya Siddartha (2):
  linux-yocto/5.10: update genericx86* machines to v5.10.149
  linux-yocto/5.15: update genericx86* machines to v5.15.72

Steve Sakoman (1):
  poky.conf: bump version for 4.0.6

 meta-poky/conf/distro/poky.conf                           | 2 +-
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.25.1

