Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web09.1357.1664810855975033579
 for <poky@lists.yoctoproject.org>;
 Mon, 03 Oct 2022 08:27:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=tOogSCKJ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.176, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f176.google.com with SMTP id 78so9932129pgb.13
        for <poky@lists.yoctoproject.org>; Mon, 03 Oct 2022 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=SNaBYYAHwntpfvo5t6KanRB4KPRjJVvFVVKvEETn83g=;
        b=tOogSCKJrlBZJ7JlVAvEGsxN6lj9DfkZHM/AEF5jgPZnQQQX/NVrsDdPPeHfZNjhdI
         r1B0xRVWc1b12vcy43NKEUXjkIBV91ZfaUD7xv5Oum6GT4UxRmG3i9bXM84SvNUjZv9V
         lo2FMV/YtFLBnQiCqqDx3VxBHKXupJ0292aUwcFiHKjw2SiY/lhMpdKkjqI8phL0t9jx
         0Vw1T5E6drlb93RjXYNCSPT/RcJ1f3taZtXnmMyjU45W8Dy/Bvy7/CkR8WphazDcsjum
         UDkscc1qyyZMCVZ4iTAfpA33YQrA6HxdpYouNVGKLpfwpUpLpHQGSPR6Hg4qmcHqpH7h
         XTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=SNaBYYAHwntpfvo5t6KanRB4KPRjJVvFVVKvEETn83g=;
        b=6LC6KJm+gLShQexsHCdojYGtxE9gD1gXxLt1rdSm2LVvkOZFfDWe5kdvCtC47mGUdw
         Buj3j8SvAkmA3SBGfYmcLGcSz/Dr49ywn2QWbXzsUaulIhwijiAkIz80+nNVikhoclj9
         NiUBeVuTQKQPM/R2psz9wS8XNk7mKmMieHnYTEB9Ot38Ao92+bF9ydyW0vz4ZMAWoGF5
         nof0wxHoCfKx06D3KkED1e6o80YfhsqggvyaAmRSlON1Fu/U1bBnzxZ+gBVizFmi5smQ
         c2F48qz+afqVh5C2IIcghGEsG59EB1OmT5ZJYW8ZVV6Ti7nmFymj9/V2LO7aMFfbRq7b
         kSeg==
X-Gm-Message-State: ACrzQf06gNNod8rJsy7Q7MR3VcIYWVUibJGR06gwC6U+tCFJK7E4bgVI
	i+9RaEbMPw0uH8r0kja4q/ntFWASgD7qG5Lh
X-Google-Smtp-Source: AMsMyM4rmGid8m6yXdjO+iGmpIsl/JbG/SnJX1l4OI/UuUdSVzhYIxKDU8g0EGzvhRYUzfRJ5VxFlw==
X-Received: by 2002:a65:5688:0:b0:3c2:1015:988e with SMTP id v8-20020a655688000000b003c21015988emr19281950pgs.280.1664810854743;
        Mon, 03 Oct 2022 08:27:34 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id e9-20020aa79809000000b00561ab290f45sm658061pfl.215.2022.10.03.08.27.33
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 08:27:34 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: bump version for 3.1.20 release
Date: Mon,  3 Oct 2022 05:27:24 -1000
Message-Id: <d7f53461428ba22de7e92f47f9380cf8e3c2f775.1664810751.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1664810751.git.steve@sakoman.com>
References: <cover.1664810751.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index eefd37f..ffea526 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.19"
+DISTRO_VERSION = "3.1.20"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

