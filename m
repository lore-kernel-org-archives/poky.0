Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.4673.1670539627416286273
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 14:47:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=uUGxJrN0;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.44, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f44.google.com with SMTP id o12so2946476pjo.4
        for <poky@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jAJ8IwFcRUikxjgoUNzIeVtffWlAcinrMUkT37fG1nA=;
        b=uUGxJrN06LvEzEoeHwACRQ45Dckor1RP5k8GhFX93u4d66q9wG5HmfR7qxx7dpfd4M
         xpWYa4Ss4SnHlujQpqG5vx+kpI39WmNrLEPYvJFFm6GI+Qt+nEDxRf7Ltejk1xpAZugY
         Kq+NV0/yz3uQ2PiOwIxzQAr3J3T5lHQyf3wOwqGIEVtNrK6ygIStuGA/rz2OSRHQ1xDD
         sgBvRpFEDmWJrnQvcggEX/Jx2GNLlO2XQiHJ0/3bmYk99gIRcW0hdfxOVOd9UHp6XbVZ
         l7y3c9iHFmmC/EBNwsEtON/Ur150mjlnSTNujO2gdGA2SYF+8xLFgyb7q/Voev9EKf6B
         Ximw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAJ8IwFcRUikxjgoUNzIeVtffWlAcinrMUkT37fG1nA=;
        b=bBXqsV8r6iKh+F6ARYvu70RTr9kEO6/IL4tYvVVSvtr5H6G2uVGT8Bj6J0PoLVPvEm
         C78p+al9w+h63zxd8yNyWREDRoL5At807uP6EdEooQAY6IHOUj3e2ASsn2KC8xHUjY6h
         AYfslPpEeWMZyo43dHTqzCvreelLEz8J1Gmk7meaLxD3S04u8WgRTHWvO+qRoZUel8Du
         wZimkJ7qIBQgJnmtcVw0i8TwcEubSrIEAW2H2izl1qGsJAk9E2zQcaKL1rbAM4QSYo8v
         nW953QKDHSVBujs3gj/3IRpQcdEKmEOgGJgbr5l0ju9rZJhi+VYntoHafroovTmCkxPn
         ddIg==
X-Gm-Message-State: ANoB5pnObhIjL4Z9PDatAu5GVDUZ0vOT5FpOyln0VBX+QyNNZBt7kidn
	4c8PqQANCsSZUBxjHQ/LbCkGHcswgaqGv7/g16ve5Q==
X-Google-Smtp-Source: AA0mqf5AGrUMRAOmuwmsHAHh3cT8GGhUgnSVulZ1sVt4iDq2z+XAuCw9K3/NIJk8Q18AFfxkeqy79w==
X-Received: by 2002:a17:90a:dd88:b0:212:daa7:590 with SMTP id l8-20020a17090add8800b00212daa70590mr3563440pjv.7.1670539626237;
        Thu, 08 Dec 2022 14:47:06 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id d24-20020a631d18000000b00478dad38eacsm5067304pgd.38.2022.12.08.14.47.05
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 14:47:05 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 3/3] poky.conf: bump version for 4.0.6
Date: Thu,  8 Dec 2022 12:46:53 -1000
Message-Id: <ff1102a164e83bfa4e9529f573e2f198c3cda3b5.1670539434.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1670539434.git.steve@sakoman.com>
References: <cover.1670539434.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 98c243d..79c9aba 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.5"
+DISTRO_VERSION = "4.0.6"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

